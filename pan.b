	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM message_delivery */
;
		
	case 3: // STATE 1
		goto R999;

	case 4: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM deadlock_free */
;
		
	case 5: // STATE 1
		goto R999;

	case 6: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* CLAIM message_delivery */
;
		
	case 7: // STATE 1
		goto R999;

	case 8: // STATE 10
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 9: // STATE 1
		;
		((P1 *)_this)->_5_4_i = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 12: // STATE 4
		;
		((P1 *)_this)->_5_4_i = trpt->bup.oval;
		;
		goto R999;

	case 13: // STATE 11
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Node */

	case 14: // STATE 3
		;
		((P0 *)_this)->i = trpt->bup.ovals[1];
		((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->i, 10) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 15: // STATE 12
		;
		((P0 *)_this)->newRoute.path[0] = trpt->bup.ovals[1];
		((P0 *)_this)->newRoute.length = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 16: // STATE 18
		;
		((P0 *)_this)->_4_1_count = trpt->bup.ovals[5];
		((P0 *)_this)->_4_1_neighbors[3] = trpt->bup.ovals[4];
		((P0 *)_this)->_4_1_neighbors[2] = trpt->bup.ovals[3];
		((P0 *)_this)->_4_1_neighbors[1] = trpt->bup.ovals[2];
		((P0 *)_this)->_4_1_neighbors[0] = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_neighbors[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 17: // STATE 21
		;
		((P0 *)_this)->_4_1_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 18: // STATE 28
		;
		((P0 *)_this)->_4_1_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: // STATE 35
		;
		((P0 *)_this)->_4_1_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 20: // STATE 47
		;
		((P0 *)_this)->_4_1_neighborIndex = trpt->bup.ovals[2];
		((P0 *)_this)->_4_1_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 21: // STATE 47
		;
		((P0 *)_this)->_4_1_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 22: // STATE 47
		;
		((P0 *)_this)->_4_1_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 23: // STATE 49
		;
		((P0 *)_this)->_4_1_neighbor = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 25: // STATE 51
		;
		_m = unsend(now.channels[ Index(((P0 *)_this)->_4_1_neighbor, 9) ]);
		;
		goto R999;

	case 26: // STATE 56
		;
		((P0 *)_this)->_4_1_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 27: // STATE 56
		;
		((P0 *)_this)->_4_1_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 28: // STATE 63
		;
		((P0 *)_this)->messageCounter = trpt->bup.oval;
		;
		goto R999;

	case 29: // STATE 64
		;
	/* 0 */	((P0 *)_this)->sender = trpt->bup.ovals[13];
		XX = 1;
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 0, 2, 1);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 1, ((P0 *)_this)->sender, 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 2, ((P0 *)_this)->msgID, 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 3, ((P0 *)_this)->route.path[0], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 4, ((P0 *)_this)->route.path[1], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 5, ((P0 *)_this)->route.path[2], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 6, ((P0 *)_this)->route.path[3], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 7, ((P0 *)_this)->route.path[4], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 8, ((P0 *)_this)->route.path[5], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 9, ((P0 *)_this)->route.path[6], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 10, ((P0 *)_this)->route.path[7], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 11, ((P0 *)_this)->route.path[8], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 12, ((P0 *)_this)->route.path[9], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 13, ((P0 *)_this)->route.length, 0);
		((P0 *)_this)->sender = trpt->bup.ovals[0];
		((P0 *)_this)->msgID = trpt->bup.ovals[1];
		((P0 *)_this)->route.path[0] = trpt->bup.ovals[2];
		((P0 *)_this)->route.path[1] = trpt->bup.ovals[3];
		((P0 *)_this)->route.path[2] = trpt->bup.ovals[4];
		((P0 *)_this)->route.path[3] = trpt->bup.ovals[5];
		((P0 *)_this)->route.path[4] = trpt->bup.ovals[6];
		((P0 *)_this)->route.path[5] = trpt->bup.ovals[7];
		((P0 *)_this)->route.path[6] = trpt->bup.ovals[8];
		((P0 *)_this)->route.path[7] = trpt->bup.ovals[9];
		((P0 *)_this)->route.path[8] = trpt->bup.ovals[10];
		((P0 *)_this)->route.path[9] = trpt->bup.ovals[11];
		((P0 *)_this)->route.length = trpt->bup.ovals[12];
		;
		;
		ungrab_ints(trpt->bup.ovals, 14);
		goto R999;

	case 30: // STATE 65
		;
	/* 0 */	((P0 *)_this)->msgID = trpt->bup.oval;
		;
		;
		goto R999;

	case 31: // STATE 70
		;
		((P0 *)_this)->i = trpt->bup.ovals[1];
		;
		((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->msgID, 10) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 32: // STATE 73
		;
		((P0 *)_this)->i = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->i, 10) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 33: // STATE 81
		;
		((P0 *)_this)->_4_2_routeCopy.length = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->_4_2_routeCopy.length, 10) ] = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_routeCopy.length = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 35: // STATE 83
		;
		now.rrepSent[ Index(((P0 *)_this)->msgID, 10) ] = trpt->bup.oval;
		;
		goto R999;

	case 36: // STATE 86
		;
		((P0 *)_this)->_4_2_routeCopy.length = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_1_nextNode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 37: // STATE 87
		;
		_m = unsend(now.channels[ Index(((P0 *)_this)->_4_2_1_nextNode, 9) ]);
		;
		goto R999;
;
		;
		
	case 39: // STATE 99
		;
		((P0 *)_this)->_4_2_2_count = trpt->bup.ovals[5];
		((P0 *)_this)->_4_2_2_neighbors[3] = trpt->bup.ovals[4];
		((P0 *)_this)->_4_2_2_neighbors[2] = trpt->bup.ovals[3];
		((P0 *)_this)->_4_2_2_neighbors[1] = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_2_neighbors[0] = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_neighbors[0] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 40: // STATE 102
		;
		((P0 *)_this)->_4_2_2_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 41: // STATE 109
		;
		((P0 *)_this)->_4_2_2_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 42: // STATE 116
		;
		((P0 *)_this)->_4_2_2_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 43: // STATE 128
		;
		((P0 *)_this)->_4_2_2_neighborIndex = trpt->bup.ovals[2];
		((P0 *)_this)->_4_2_2_count = trpt->bup.ovals[1];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 44: // STATE 128
		;
		((P0 *)_this)->_4_2_2_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 128
		;
		((P0 *)_this)->_4_2_2_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 46: // STATE 130
		;
		((P0 *)_this)->_4_2_2_neighbor = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: // STATE 132
		;
		_m = unsend(now.channels[ Index(((P0 *)_this)->_4_2_2_neighbor, 9) ]);
		;
		goto R999;

	case 49: // STATE 137
		;
		((P0 *)_this)->_4_2_2_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 137
		;
		((P0 *)_this)->_4_2_2_neighborIndex = trpt->bup.oval;
		;
		goto R999;

	case 51: // STATE 149
		;
	/* 0 */	((P0 *)_this)->sender = trpt->bup.ovals[13];
		XX = 1;
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 0, 1, 1);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 1, ((P0 *)_this)->sender, 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 2, ((P0 *)_this)->msgID, 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 3, ((P0 *)_this)->route.path[0], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 4, ((P0 *)_this)->route.path[1], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 5, ((P0 *)_this)->route.path[2], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 6, ((P0 *)_this)->route.path[3], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 7, ((P0 *)_this)->route.path[4], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 8, ((P0 *)_this)->route.path[5], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 9, ((P0 *)_this)->route.path[6], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 10, ((P0 *)_this)->route.path[7], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 11, ((P0 *)_this)->route.path[8], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 12, ((P0 *)_this)->route.path[9], 0);
		unrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 13, ((P0 *)_this)->route.length, 0);
		((P0 *)_this)->sender = trpt->bup.ovals[0];
		((P0 *)_this)->msgID = trpt->bup.ovals[1];
		((P0 *)_this)->route.path[0] = trpt->bup.ovals[2];
		((P0 *)_this)->route.path[1] = trpt->bup.ovals[3];
		((P0 *)_this)->route.path[2] = trpt->bup.ovals[4];
		((P0 *)_this)->route.path[3] = trpt->bup.ovals[5];
		((P0 *)_this)->route.path[4] = trpt->bup.ovals[6];
		((P0 *)_this)->route.path[5] = trpt->bup.ovals[7];
		((P0 *)_this)->route.path[6] = trpt->bup.ovals[8];
		((P0 *)_this)->route.path[7] = trpt->bup.ovals[9];
		((P0 *)_this)->route.path[8] = trpt->bup.ovals[10];
		((P0 *)_this)->route.path[9] = trpt->bup.ovals[11];
		((P0 *)_this)->route.length = trpt->bup.ovals[12];
		;
		;
		ungrab_ints(trpt->bup.ovals, 14);
		goto R999;

	case 52: // STATE 150
		;
		((P0 *)_this)->_4_3_routeIndex = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 54: // STATE 152
		;
		now.routeCache[ Index(((P0 *)_this)->id, 9) ].path[ Index(((P0 *)_this)->_4_3_routeIndex, 10) ] = trpt->bup.oval;
		;
		goto R999;

	case 55: // STATE 153
		;
		((P0 *)_this)->_4_3_routeIndex = trpt->bup.oval;
		;
		goto R999;

	case 56: // STATE 159
		;
		now.routeCache[ Index(((P0 *)_this)->id, 9) ].length = trpt->bup.oval;
		;
		goto R999;

	case 57: // STATE 162
		;
		((P0 *)_this)->route.length = trpt->bup.ovals[1];
		((P0 *)_this)->_4_3_3_nextNode = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 58: // STATE 163
		;
		_m = unsend(now.channels[ Index(((P0 *)_this)->_4_3_3_nextNode, 9) ]);
		;
		goto R999;
;
		;
		
	case 60: // STATE 173
		;
		p_restor(II);
		;
		;
		goto R999;
	}

