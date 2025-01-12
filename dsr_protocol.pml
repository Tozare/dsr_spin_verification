#define GRID_SIDE 3
#define NODES (GRID_SIDE * GRID_SIDE)
#define MAX_ROUTE_LENGTH 10
#define MESSAGE_COUNT 10

mtype = { RREQ, RREP };

typedef route_t {
    int path[MAX_ROUTE_LENGTH];
    int length;
}

chan channels[NODES] = [10] of { mtype, int, int, route_t };

bool rrepSent[MESSAGE_COUNT];
// Message Delivery: "Eventually, all RREP messages will reach the source."
ltl message_delivery { [](channels[0]?[RREP]) }

// Deadlock Freedom: "The system never reaches a state where no progress is possible."
ltl deadlock_free { [](true) }

//Eventually, every RREQ message reaches the destination node.
// Upon reaching the destination, an RREP is generated and sent back.
ltl message_reached_destination_ { [] (rrepSent[0] || rrepSent[1] || rrepSent[2] || rrepSent[3] || rrepSent[4] || rrepSent[5] || rrepSent[6] || rrepSent[7] || rrepSent[8] || rrepSent[9]) }


inline sendRREQ(sender, msgID, route) {
    int neighbors[4];
    neighbors[0] = -1;
    neighbors[1] = -1;
    neighbors[2] = -1;
    neighbors[3] = -1;

    int count = 0;

    // Left neighbor
    if
    :: (sender % GRID_SIDE != 0) ->
        neighbors[count] = sender - 1;
        count++
    :: else -> skip
    fi;

    // Right neighbor
    if
    :: ((sender + 1) % GRID_SIDE != 0) ->
        neighbors[count] = sender + 1;
        count++
    :: else -> skip
    fi;

    // Top neighbor
    if
    :: (sender >= GRID_SIDE) ->
        neighbors[count] = sender - GRID_SIDE;
        count++
    :: else -> skip
    fi;

    // Bottom neighbor
    if
    :: (sender < (GRID_SIDE * (GRID_SIDE - 1))) ->
        neighbors[count] = sender + GRID_SIDE;
        count++
    :: else -> skip
    fi;

    int neighborIndex = 0;
    do
    :: neighborIndex < 4 ->
        int neighbor = neighbors[neighborIndex];
        if
        :: neighbor != -1 ->
            channels[neighbor]!RREQ(sender, msgID, route);
        :: else -> skip
        fi;
        neighborIndex++
    :: else -> break
    od;
}

inline handleRREQ(sender, receiver, msgID, route, receivedRREQs) {
    if
    :: msgID >= 0 && msgID < MESSAGE_COUNT && receivedRREQs[msgID] -> 
        skip;
    :: else -> 
        receivedRREQs[msgID] = true;

        route_t routeCopy;
        i = 0;

        do
        :: i < route.length ->
            routeCopy.path[i] = route.path[i];
            i++
        :: else -> break
        od;

        routeCopy.length = route.length;
        routeCopy.path[routeCopy.length] = receiver;
        routeCopy.length++;

        if
        :: receiver == NODES - 1 -> 
            rrepSent[msgID] = true;
            sendRREP(receiver, msgID, routeCopy);
        :: else -> sendRREQ(receiver, msgID, routeCopy);
        fi;
    fi;
}

inline sendRREP(currentNode, msgID, route) {
    if
    :: route.length > 2 -> 
        int nextNode = route.path[route.length - 2];
        route.length--;
        channels[nextNode]!RREP(currentNode, msgID, route);
    :: else ->
        printf("RREP for message id %d has returned to the source.\n", msgID);
    fi;
}

inline handleRREP(sender, receiver, msgID, route) {
    // Cache the full route
    int routeIndex = 0;
    do
    :: routeIndex < route.length -> 
        routeCache[receiver].path[routeIndex] = route.path[routeIndex];
        routeIndex++
    :: else -> break
    od;

    routeCache[receiver].length = route.length;
    sendRREP(receiver, msgID, route);
}

proctype Node(int id) {
    bool isSource = (id == 0);
    bool isReceiver = (id == NODES - 1);
    int messageCounter = 0;
    bool receivedRREQs[MESSAGE_COUNT];


    int sender;
    int receiver;
    int msgID;
    route_t route;

    // Initialize the receivedRREQs array
    int i = 0;
    do
    :: i < MESSAGE_COUNT ->
        receivedRREQs[i] = false;
        i++
    :: else -> break
    od;

    do
    :: isSource && messageCounter < MESSAGE_COUNT ->
        route_t newRoute;
        newRoute.length = 1;
        newRoute.path[0] = id;
        sendRREQ(id, messageCounter, newRoute);
        messageCounter++;
    :: channels[id] ? RREQ(sender, msgID, route) ->
        handleRREQ(sender, id, msgID, route, receivedRREQs);
    :: channels[id] ? RREP(sender, msgID, route) ->
        handleRREP(sender, id, msgID, route);
    od;
}

init {
    atomic {
        int i = 0;
        do
        :: i < NODES ->
            run Node(i);
            i++
        :: else -> break
        od;
    }
}
