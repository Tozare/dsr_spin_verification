#ifdef PEG
struct T_SRC {
	char *fl; int ln;
} T_SRC[NTRANS];

void
tr_2_src(int m, char *file, int ln)
{	T_SRC[m].fl = file;
	T_SRC[m].ln = ln;
}

void
putpeg(int n, int m)
{	printf("%5d	trans %4d ", m, n);
	printf("%s:%d\n",
		T_SRC[n].fl, T_SRC[n].ln);
}
#endif

void
settable(void)
{	Trans *T;
	Trans *settr(int, int, int, int, int, char *, int, int, int);

	trans = (Trans ***) emalloc(6*sizeof(Trans **));

	/* proctype 4: message_delivery */

	trans[4] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[4][7]	= settr(210,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[4][6] = settr(209,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(209,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(209,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 4][3] = settr(206,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(206,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[4][1]	= settr(204,0,6,3,3,"(!((((((((((rrepSent[0]||rrepSent[1])||rrepSent[2])||rrepSent[3])||rrepSent[4])||rrepSent[5])||rrepSent[6])||rrepSent[7])||rrepSent[8])||rrepSent[9])))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached4[2] = 1;
	trans[4][2]	= settr(0,0,0,0,0,"assert(!(!((((((((((rrepSent[0]||rrepSent[1])||rrepSent[2])||rrepSent[3])||rrepSent[4])||rrepSent[5])||rrepSent[6])||rrepSent[7])||rrepSent[8])||rrepSent[9]))))",0,0,0);
	trans[4][4]	= settr(207,0,6,1,0,"(1)", 0, 2, 0);
	trans[4][5]	= settr(208,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[4][8]	= settr(211,0,9,1,0,"break", 0, 2, 0);
	trans[4][9]	= settr(212,0,10,1,0,"(1)", 0, 2, 0);
	trans[4][10]	= settr(213,0,0,4,4,"-end-", 0, 3500, 0);

	/* proctype 3: deadlock_free */

	trans[3] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[3][7]	= settr(200,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[3][6] = settr(199,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(199,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(199,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 3][3] = settr(196,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(196,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[3][1]	= settr(194,0,6,5,5,"(!(1))", 0, 2, 0); /* m: 2 -> 6,0 */
	reached3[2] = 1;
	trans[3][2]	= settr(0,0,0,0,0,"assert(!(!(1)))",0,0,0);
	trans[3][4]	= settr(197,0,6,1,0,"(1)", 0, 2, 0);
	trans[3][5]	= settr(198,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[3][8]	= settr(201,0,9,1,0,"break", 0, 2, 0);
	trans[3][9]	= settr(202,0,10,1,0,"(1)", 0, 2, 0);
	trans[3][10]	= settr(203,0,0,6,6,"-end-", 0, 3500, 0);

	/* proctype 2: message_delivery */

	trans[2] = (Trans **) emalloc(11*sizeof(Trans *));

	trans[2][7]	= settr(190,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[2][6] = settr(189,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(189,0,3,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(189,0,4,0,0,"DO", 0, 2, 0);
	T = trans[ 2][3] = settr(186,2,0,0,0,"ATOMIC", 1, 2, 0);
	T->nxt	= settr(186,2,1,0,0,"ATOMIC", 1, 2, 0);
	trans[2][1]	= settr(184,0,6,7,7,"(!(channels[0]?[RREP]))", 1, 2, 0); /* m: 2 -> 6,0 */
	reached2[2] = 1;
	trans[2][2]	= settr(0,0,0,0,0,"assert(!(!(channels[0]?[RREP])))",0,0,0);
	trans[2][4]	= settr(187,0,6,1,0,"(1)", 0, 2, 0);
	trans[2][5]	= settr(188,0,6,1,0,"goto T0_init", 0, 2, 0);
	trans[2][8]	= settr(191,0,9,1,0,"break", 0, 2, 0);
	trans[2][9]	= settr(192,0,10,1,0,"(1)", 0, 2, 0);
	trans[2][10]	= settr(193,0,0,8,8,"-end-", 0, 3500, 0);

	/* proctype 1: :init: */

	trans[1] = (Trans **) emalloc(12*sizeof(Trans *));

	T = trans[ 1][10] = settr(182,2,0,0,0,"ATOMIC", 0, 2, 0);
	T->nxt	= settr(182,2,1,0,0,"ATOMIC", 0, 2, 0);
	trans[1][1]	= settr(173,2,7,9,9,"i = 0", 0, 2, 0);
	trans[1][8]	= settr(180,2,7,1,0,".(goto)", 0, 2, 0);
	T = trans[1][7] = settr(179,2,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(179,2,2,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(179,2,5,0,0,"DO", 0, 2, 0);
	trans[1][2]	= settr(174,2,3,10,0,"((i<(3*3)))", 0, 2, 0);
	trans[1][3]	= settr(175,2,4,11,11,"(run Node(i))", 0, 2, 0);
	trans[1][4]	= settr(176,2,7,12,12,"i = (i+1)", 0, 2, 0);
	trans[1][5]	= settr(177,2,6,2,0,"else", 0, 2, 0);
	trans[1][6]	= settr(178,2,9,1,0,"goto :b6", 0, 2, 0);
	trans[1][9]	= settr(181,0,11,1,0,"break", 0, 2, 0);
	trans[1][11]	= settr(183,0,0,13,13,"-end-", 0, 3500, 0);

	/* proctype 0: Node */

	trans[0] = (Trans **) emalloc(174*sizeof(Trans *));

	trans[0][7]	= settr(6,0,6,1,0,".(goto)", 0, 2, 0);
	T = trans[0][6] = settr(5,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(5,0,1,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(5,0,4,0,0,"DO", 0, 2, 0);
	trans[0][1]	= settr(0,0,6,14,14,"((i<10))", 0, 2, 0); /* m: 2 -> 6,0 */
	reached0[2] = 1;
	trans[0][2]	= settr(0,0,0,0,0,"receivedRREQs[i] = 0",0,0,0);
	trans[0][3]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[0][4]	= settr(3,0,170,2,0,"else", 0, 2, 0);
	trans[0][5]	= settr(4,0,170,1,0,"goto :b0", 0, 2, 0);
	trans[0][8]	= settr(7,0,170,1,0,"break", 0, 2, 0);
	trans[0][171]	= settr(170,0,170,1,0,".(goto)", 0, 2, 0);
	T = trans[0][170] = settr(169,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(169,0,9,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(169,0,64,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(169,0,149,0,0,"DO", 0, 2, 0);
	trans[0][9]	= settr(8,0,62,15,15,"((isSource&&(messageCounter<10)))", 0, 2, 0); /* m: 10 -> 62,0 */
	reached0[10] = 1;
	trans[0][10]	= settr(0,0,0,0,0,"",0,0,0);
	trans[0][11]	= settr(0,0,0,0,0,"newRoute.length = 1",0,0,0);
	trans[0][12]	= settr(0,0,0,0,0,"newRoute.path[0] = id",0,0,0);
	T = trans[ 0][62] = settr(61,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(61,0,13,0,0,"sub-sequence", 0, 2, 0);
	trans[0][13]	= settr(12,0,24,16,16,"neighbors[0] = 0", 0, 2, 0); /* m: 14 -> 0,24 */
	reached0[14] = 1;
	trans[0][14]	= settr(0,0,0,0,0,"neighbors[0] = -(1)",0,0,0);
	trans[0][15]	= settr(0,0,0,0,0,"neighbors[1] = -(1)",0,0,0);
	trans[0][16]	= settr(0,0,0,0,0,"neighbors[2] = -(1)",0,0,0);
	trans[0][17]	= settr(0,0,0,0,0,"neighbors[3] = -(1)",0,0,0);
	trans[0][18]	= settr(0,0,0,0,0,"count = 0",0,0,0);
	T = trans[0][24] = settr(23,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(23,0,19,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(23,0,22,0,0,"IF", 0, 2, 0);
	trans[0][19]	= settr(18,0,31,17,17,"(((id%3)!=0))", 0, 2, 0); /* m: 20 -> 31,0 */
	reached0[20] = 1;
	trans[0][20]	= settr(0,0,0,0,0,"neighbors[count] = (id-1)",0,0,0);
	trans[0][21]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][25]	= settr(24,0,31,1,0,".(goto)", 0, 2, 0);
	trans[0][22]	= settr(21,0,23,2,0,"else", 0, 2, 0);
	trans[0][23]	= settr(22,0,31,1,0,"(1)", 0, 2, 0);
	T = trans[0][31] = settr(30,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(30,0,26,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(30,0,29,0,0,"IF", 0, 2, 0);
	trans[0][26]	= settr(25,0,38,18,18,"((((id+1)%3)!=0))", 0, 2, 0); /* m: 27 -> 38,0 */
	reached0[27] = 1;
	trans[0][27]	= settr(0,0,0,0,0,"neighbors[count] = (id+1)",0,0,0);
	trans[0][28]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][32]	= settr(31,0,38,1,0,".(goto)", 0, 2, 0);
	trans[0][29]	= settr(28,0,30,2,0,"else", 0, 2, 0);
	trans[0][30]	= settr(29,0,38,1,0,"(1)", 0, 2, 0);
	T = trans[0][38] = settr(37,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(37,0,33,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(37,0,36,0,0,"IF", 0, 2, 0);
	trans[0][33]	= settr(32,0,45,19,19,"((id>=3))", 0, 2, 0); /* m: 34 -> 45,0 */
	reached0[34] = 1;
	trans[0][34]	= settr(0,0,0,0,0,"neighbors[count] = (id-3)",0,0,0);
	trans[0][35]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][39]	= settr(38,0,45,1,0,".(goto)", 0, 2, 0);
	trans[0][36]	= settr(35,0,37,2,0,"else", 0, 2, 0);
	trans[0][37]	= settr(36,0,45,1,0,"(1)", 0, 2, 0);
	T = trans[0][45] = settr(44,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(44,0,40,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(44,0,43,0,0,"IF", 0, 2, 0);
	trans[0][40]	= settr(39,0,59,20,20,"((id<(3*(3-1))))", 0, 2, 0); /* m: 41 -> 59,0 */
	reached0[41] = 1;
	trans[0][41]	= settr(0,0,0,0,0,"neighbors[count] = (id+3)",0,0,0);
	trans[0][42]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][46]	= settr(45,0,47,1,0,".(goto)", 0, 2, 0); /* m: 47 -> 0,59 */
	reached0[47] = 1;
	trans[0][43]	= settr(42,0,44,2,0,"else", 0, 2, 0);
	trans[0][44]	= settr(43,0,59,21,21,"(1)", 0, 2, 0); /* m: 47 -> 59,0 */
	reached0[47] = 1;
	trans[0][47]	= settr(46,0,59,22,22,"neighborIndex = 0", 0, 2, 0);
	trans[0][60]	= settr(59,0,59,1,0,".(goto)", 0, 2, 0);
	T = trans[0][59] = settr(58,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(58,0,48,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(58,0,57,0,0,"DO", 0, 2, 0);
	trans[0][48]	= settr(47,0,54,23,23,"((neighborIndex<4))", 0, 2, 0); /* m: 49 -> 54,0 */
	reached0[49] = 1;
	trans[0][49]	= settr(0,0,0,0,0,"neighbor = neighbors[neighborIndex]",0,0,0);
	T = trans[0][54] = settr(53,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(53,0,50,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(53,0,52,0,0,"IF", 0, 2, 0);
	trans[0][50]	= settr(49,0,51,24,0,"((neighbor!=-(1)))", 0, 2, 0);
	trans[0][51]	= settr(50,0,56,25,25,"channels[neighbor]!RREQ,id,messageCounter,newRoute.path[0],newRoute.path[1],newRoute.path[2],newRoute.path[3],newRoute.path[4],newRoute.path[5],newRoute.path[6],newRoute.path[7],newRoute.path[8],newRoute.path[9],newRoute.length", 1, 3, 0);
	trans[0][55]	= settr(54,0,56,1,0,".(goto)", 0, 2, 0); /* m: 56 -> 0,59 */
	reached0[56] = 1;
	trans[0][52]	= settr(51,0,53,2,0,"else", 0, 2, 0);
	trans[0][53]	= settr(52,0,59,26,26,"(1)", 0, 2, 0); /* m: 56 -> 59,0 */
	reached0[56] = 1;
	trans[0][56]	= settr(55,0,59,27,27,"neighborIndex = (neighborIndex+1)", 0, 2, 0);
	trans[0][57]	= settr(56,0,63,2,0,"else", 0, 2, 0);
	trans[0][58]	= settr(57,0,63,1,0,"goto :b2", 0, 2, 0); /* m: 63 -> 0,170 */
	reached0[63] = 1;
	trans[0][61]	= settr(60,0,63,1,0,"break", 0, 2, 0);
	trans[0][63]	= settr(62,0,170,28,28,"messageCounter = (messageCounter+1)", 0, 2, 0);
	trans[0][64]	= settr(63,0,148,29,29,"channels[id]?RREQ,sender,msgID,route.path[0],route.path[1],route.path[2],route.path[3],route.path[4],route.path[5],route.path[6],route.path[7],route.path[8],route.path[9],route.length", 1, 503, 0);
	T = trans[ 0][148] = settr(147,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(147,0,146,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][146] = settr(145,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(145,0,65,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(145,0,67,0,0,"IF", 0, 2, 0);
	trans[0][65]	= settr(64,0,66,30,30,"((((msgID>=0)&&(msgID<10))&&receivedRREQs[msgID]))", 0, 2, 0);
	trans[0][66]	= settr(65,0,170,1,0,"(1)", 0, 2, 0);
	trans[0][147]	= settr(146,0,170,1,0,".(goto)", 0, 2, 0);
	trans[0][67]	= settr(66,0,68,2,0,"else", 0, 2, 0);
	trans[0][68]	= settr(67,0,76,31,31,"receivedRREQs[msgID] = 1", 0, 2, 0); /* m: 69 -> 0,76 */
	reached0[69] = 1;
	trans[0][69]	= settr(0,0,0,0,0,"",0,0,0);
	trans[0][70]	= settr(0,0,0,0,0,"i = 0",0,0,0);
	trans[0][77]	= settr(76,0,76,1,0,".(goto)", 0, 2, 0);
	T = trans[0][76] = settr(75,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(75,0,71,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(75,0,74,0,0,"DO", 0, 2, 0);
	trans[0][71]	= settr(70,0,76,32,32,"((i<route.length))", 0, 2, 0); /* m: 72 -> 76,0 */
	reached0[72] = 1;
	trans[0][72]	= settr(0,0,0,0,0,"routeCopy.path[i] = route.path[i]",0,0,0);
	trans[0][73]	= settr(0,0,0,0,0,"i = (i+1)",0,0,0);
	trans[0][74]	= settr(73,0,79,2,0,"else", 0, 2, 0);
	trans[0][75]	= settr(74,0,79,1,0,"goto :b3", 0, 2, 0); /* m: 79 -> 0,144 */
	reached0[79] = 1;
	trans[0][78]	= settr(77,0,79,1,0,"break", 0, 2, 0);
	trans[0][79]	= settr(78,0,144,33,33,"routeCopy.length = route.length", 0, 2, 0); /* m: 80 -> 0,144 */
	reached0[80] = 1;
	trans[0][80]	= settr(0,0,0,0,0,"routeCopy.path[routeCopy.length] = id",0,0,0);
	trans[0][81]	= settr(0,0,0,0,0,"routeCopy.length = (routeCopy.length+1)",0,0,0);
	T = trans[0][144] = settr(143,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(143,0,82,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(143,0,93,0,0,"IF", 0, 2, 0);
	trans[0][82]	= settr(81,0,83,34,0,"((id==((3*3)-1)))", 0, 2, 0);
	trans[0][83]	= settr(82,0,92,35,35,"rrepSent[msgID] = 1", 1, 2, 0);
	T = trans[ 0][92] = settr(91,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(91,0,90,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][90] = settr(89,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(89,0,84,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(89,0,88,0,0,"IF", 0, 2, 0);
	trans[0][84]	= settr(83,0,87,36,36,"((routeCopy.length>2))", 0, 2, 0); /* m: 85 -> 87,0 */
	reached0[85] = 1;
	trans[0][85]	= settr(0,0,0,0,0,"nextNode = routeCopy.path[(routeCopy.length-2)]",0,0,0);
	trans[0][86]	= settr(0,0,0,0,0,"routeCopy.length = (routeCopy.length-1)",0,0,0);
	trans[0][87]	= settr(86,0,170,37,37,"channels[nextNode]!RREP,id,msgID,routeCopy.path[0],routeCopy.path[1],routeCopy.path[2],routeCopy.path[3],routeCopy.path[4],routeCopy.path[5],routeCopy.path[6],routeCopy.path[7],routeCopy.path[8],routeCopy.path[9],routeCopy.length", 1, 3, 0);
	trans[0][91]	= settr(90,0,170,1,0,".(goto)", 0, 2, 0);
	trans[0][88]	= settr(87,0,89,2,0,"else", 0, 2, 0);
	trans[0][89]	= settr(88,0,170,38,0,"printf('RREP for msgID %d has returned to the source.\\n',msgID)", 0, 2, 0);
	trans[0][145]	= settr(144,0,170,1,0,".(goto)", 0, 2, 0);
	trans[0][93]	= settr(92,0,143,2,0,"else", 0, 2, 0);
	T = trans[ 0][143] = settr(142,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(142,0,94,0,0,"sub-sequence", 0, 2, 0);
	trans[0][94]	= settr(93,0,105,39,39,"neighbors[0] = 0", 0, 2, 0); /* m: 95 -> 0,105 */
	reached0[95] = 1;
	trans[0][95]	= settr(0,0,0,0,0,"neighbors[0] = -(1)",0,0,0);
	trans[0][96]	= settr(0,0,0,0,0,"neighbors[1] = -(1)",0,0,0);
	trans[0][97]	= settr(0,0,0,0,0,"neighbors[2] = -(1)",0,0,0);
	trans[0][98]	= settr(0,0,0,0,0,"neighbors[3] = -(1)",0,0,0);
	trans[0][99]	= settr(0,0,0,0,0,"count = 0",0,0,0);
	T = trans[0][105] = settr(104,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(104,0,100,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(104,0,103,0,0,"IF", 0, 2, 0);
	trans[0][100]	= settr(99,0,112,40,40,"(((id%3)!=0))", 0, 2, 0); /* m: 101 -> 112,0 */
	reached0[101] = 1;
	trans[0][101]	= settr(0,0,0,0,0,"neighbors[count] = (id-1)",0,0,0);
	trans[0][102]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][106]	= settr(105,0,112,1,0,".(goto)", 0, 2, 0);
	trans[0][103]	= settr(102,0,104,2,0,"else", 0, 2, 0);
	trans[0][104]	= settr(103,0,112,1,0,"(1)", 0, 2, 0);
	T = trans[0][112] = settr(111,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(111,0,107,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(111,0,110,0,0,"IF", 0, 2, 0);
	trans[0][107]	= settr(106,0,119,41,41,"((((id+1)%3)!=0))", 0, 2, 0); /* m: 108 -> 119,0 */
	reached0[108] = 1;
	trans[0][108]	= settr(0,0,0,0,0,"neighbors[count] = (id+1)",0,0,0);
	trans[0][109]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][113]	= settr(112,0,119,1,0,".(goto)", 0, 2, 0);
	trans[0][110]	= settr(109,0,111,2,0,"else", 0, 2, 0);
	trans[0][111]	= settr(110,0,119,1,0,"(1)", 0, 2, 0);
	T = trans[0][119] = settr(118,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(118,0,114,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(118,0,117,0,0,"IF", 0, 2, 0);
	trans[0][114]	= settr(113,0,126,42,42,"((id>=3))", 0, 2, 0); /* m: 115 -> 126,0 */
	reached0[115] = 1;
	trans[0][115]	= settr(0,0,0,0,0,"neighbors[count] = (id-3)",0,0,0);
	trans[0][116]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][120]	= settr(119,0,126,1,0,".(goto)", 0, 2, 0);
	trans[0][117]	= settr(116,0,118,2,0,"else", 0, 2, 0);
	trans[0][118]	= settr(117,0,126,1,0,"(1)", 0, 2, 0);
	T = trans[0][126] = settr(125,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(125,0,121,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(125,0,124,0,0,"IF", 0, 2, 0);
	trans[0][121]	= settr(120,0,140,43,43,"((id<(3*(3-1))))", 0, 2, 0); /* m: 122 -> 140,0 */
	reached0[122] = 1;
	trans[0][122]	= settr(0,0,0,0,0,"neighbors[count] = (id+3)",0,0,0);
	trans[0][123]	= settr(0,0,0,0,0,"count = (count+1)",0,0,0);
	trans[0][127]	= settr(126,0,128,1,0,".(goto)", 0, 2, 0); /* m: 128 -> 0,140 */
	reached0[128] = 1;
	trans[0][124]	= settr(123,0,125,2,0,"else", 0, 2, 0);
	trans[0][125]	= settr(124,0,140,44,44,"(1)", 0, 2, 0); /* m: 128 -> 140,0 */
	reached0[128] = 1;
	trans[0][128]	= settr(127,0,140,45,45,"neighborIndex = 0", 0, 2, 0);
	trans[0][141]	= settr(140,0,140,1,0,".(goto)", 0, 2, 0);
	T = trans[0][140] = settr(139,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(139,0,129,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(139,0,138,0,0,"DO", 0, 2, 0);
	trans[0][129]	= settr(128,0,135,46,46,"((neighborIndex<4))", 0, 2, 0); /* m: 130 -> 135,0 */
	reached0[130] = 1;
	trans[0][130]	= settr(0,0,0,0,0,"neighbor = neighbors[neighborIndex]",0,0,0);
	T = trans[0][135] = settr(134,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(134,0,131,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(134,0,133,0,0,"IF", 0, 2, 0);
	trans[0][131]	= settr(130,0,132,47,0,"((neighbor!=-(1)))", 0, 2, 0);
	trans[0][132]	= settr(131,0,137,48,48,"channels[neighbor]!RREQ,id,msgID,routeCopy.path[0],routeCopy.path[1],routeCopy.path[2],routeCopy.path[3],routeCopy.path[4],routeCopy.path[5],routeCopy.path[6],routeCopy.path[7],routeCopy.path[8],routeCopy.path[9],routeCopy.length", 1, 3, 0);
	trans[0][136]	= settr(135,0,137,1,0,".(goto)", 0, 2, 0); /* m: 137 -> 0,140 */
	reached0[137] = 1;
	trans[0][133]	= settr(132,0,134,2,0,"else", 0, 2, 0);
	trans[0][134]	= settr(133,0,140,49,49,"(1)", 0, 2, 0); /* m: 137 -> 140,0 */
	reached0[137] = 1;
	trans[0][137]	= settr(136,0,140,50,50,"neighborIndex = (neighborIndex+1)", 0, 2, 0);
	trans[0][138]	= settr(137,0,170,2,0,"else", 0, 2, 0);
	trans[0][139]	= settr(138,0,170,1,0,"goto :b4", 0, 2, 0);
	trans[0][142]	= settr(141,0,170,1,0,"break", 0, 2, 0);
	trans[0][149]	= settr(148,0,169,51,51,"channels[id]?RREP,sender,msgID,route.path[0],route.path[1],route.path[2],route.path[3],route.path[4],route.path[5],route.path[6],route.path[7],route.path[8],route.path[9],route.length", 1, 503, 0);
	T = trans[ 0][169] = settr(168,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(168,0,150,0,0,"sub-sequence", 0, 2, 0);
	trans[0][150]	= settr(149,0,156,52,52,"routeIndex = 0", 0, 2, 0);
	trans[0][157]	= settr(156,0,156,1,0,".(goto)", 0, 2, 0);
	T = trans[0][156] = settr(155,0,0,0,0,"DO", 0, 2, 0);
	T = T->nxt	= settr(155,0,151,0,0,"DO", 0, 2, 0);
	    T->nxt	= settr(155,0,154,0,0,"DO", 0, 2, 0);
	trans[0][151]	= settr(150,0,152,53,0,"((routeIndex<route.length))", 0, 2, 0);
	trans[0][152]	= settr(151,0,153,54,54,"routeCache[id].path[routeIndex] = route.path[routeIndex]", 1, 2, 0);
	trans[0][153]	= settr(152,0,156,55,55,"routeIndex = (routeIndex+1)", 0, 2, 0);
	trans[0][154]	= settr(153,0,159,2,0,"else", 0, 2, 0);
	trans[0][155]	= settr(154,0,159,1,0,"goto :b5", 0, 2, 0);
	trans[0][158]	= settr(157,0,159,1,0,"break", 0, 2, 0);
	trans[0][159]	= settr(158,0,168,56,56,"routeCache[id].length = route.length", 1, 2, 0);
	T = trans[ 0][168] = settr(167,0,0,0,0,"sub-sequence", 0, 2, 0);
	T->nxt	= settr(167,0,166,0,0,"sub-sequence", 0, 2, 0);
	T = trans[0][166] = settr(165,0,0,0,0,"IF", 0, 2, 0);
	T = T->nxt	= settr(165,0,160,0,0,"IF", 0, 2, 0);
	    T->nxt	= settr(165,0,164,0,0,"IF", 0, 2, 0);
	trans[0][160]	= settr(159,0,163,57,57,"((route.length>2))", 0, 2, 0); /* m: 161 -> 163,0 */
	reached0[161] = 1;
	trans[0][161]	= settr(0,0,0,0,0,"nextNode = route.path[(route.length-2)]",0,0,0);
	trans[0][162]	= settr(0,0,0,0,0,"route.length = (route.length-1)",0,0,0);
	trans[0][163]	= settr(162,0,170,58,58,"channels[nextNode]!RREP,id,msgID,route.path[0],route.path[1],route.path[2],route.path[3],route.path[4],route.path[5],route.path[6],route.path[7],route.path[8],route.path[9],route.length", 1, 3, 0);
	trans[0][167]	= settr(166,0,170,1,0,".(goto)", 0, 2, 0);
	trans[0][164]	= settr(163,0,165,2,0,"else", 0, 2, 0);
	trans[0][165]	= settr(164,0,170,59,0,"printf('RREP for msgID %d has returned to the source.\\n',msgID)", 0, 2, 0);
	trans[0][172]	= settr(171,0,173,1,0,"break", 0, 2, 0);
	trans[0][173]	= settr(172,0,0,60,60,"-end-", 0, 3500, 0);
	/* np_ demon: */
	trans[_NP_] = (Trans **) emalloc(3*sizeof(Trans *));
	T = trans[_NP_][0] = settr(9997,0,1,_T5,0,"(np_)", 1,2,0);
	    T->nxt	  = settr(9998,0,0,_T2,0,"(1)",   0,2,0);
	T = trans[_NP_][1] = settr(9999,0,1,_T5,0,"(np_)", 1,2,0);
}

Trans *
settr(	int t_id, int a, int b, int c, int d,
	char *t, int g, int tpe0, int tpe1)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	tmp->atom  = a&(6|32);	/* only (2|8|32) have meaning */
	if (!g) tmp->atom |= 8;	/* no global references */
	tmp->st    = b;
	tmp->tpe[0] = tpe0;
	tmp->tpe[1] = tpe1;
	tmp->tp    = t;
	tmp->t_id  = t_id;
	tmp->forw  = c;
	tmp->back  = d;
	return tmp;
}

Trans *
cpytr(Trans *a)
{	Trans *tmp = (Trans *) emalloc(sizeof(Trans));

	int i;
	tmp->atom  = a->atom;
	tmp->st    = a->st;
#ifdef HAS_UNLESS
	tmp->e_trans = a->e_trans;
	for (i = 0; i < HAS_UNLESS; i++)
		tmp->escp[i] = a->escp[i];
#endif
	tmp->tpe[0] = a->tpe[0];
	tmp->tpe[1] = a->tpe[1];
	for (i = 0; i < 6; i++)
	{	tmp->qu[i] = a->qu[i];
		tmp->ty[i] = a->ty[i];
	}
	tmp->tp    = (char *) emalloc(strlen(a->tp)+1);
	strcpy(tmp->tp, a->tp);
	tmp->t_id  = a->t_id;
	tmp->forw  = a->forw;
	tmp->back  = a->back;
	return tmp;
}

#ifndef NOREDUCE
int
srinc_set(int n)
{	if (n <= 2) return LOCAL;
	if (n <= 2+  DELTA) return Q_FULL_F; /* 's' or nfull  */
	if (n <= 2+2*DELTA) return Q_EMPT_F; /* 'r' or nempty */
	if (n <= 2+3*DELTA) return Q_EMPT_T; /* empty */
	if (n <= 2+4*DELTA) return Q_FULL_T; /* full  */
	if (n ==   5*DELTA) return GLOBAL;
	if (n ==   6*DELTA) return TIMEOUT_F;
	if (n ==   7*DELTA) return ALPHA_F;
	Uerror("cannot happen srinc_class");
	return BAD;
}
int
srunc(int n, int m)
{	switch(m) {
	case Q_FULL_F: return n-2;
	case Q_EMPT_F: return n-2-DELTA;
	case Q_EMPT_T: return n-2-2*DELTA;
	case Q_FULL_T: return n-2-3*DELTA;
	case ALPHA_F:
	case TIMEOUT_F: return 257; /* non-zero, and > MAXQ */
	}
	Uerror("cannot happen srunc");
	return 0;
}
#endif
int cnt;
#ifdef HAS_UNLESS
int
isthere(Trans *a, int b)
{	Trans *t;
	for (t = a; t; t = t->nxt)
		if (t->t_id == b)
			return 1;
	return 0;
}
#endif
#ifndef NOREDUCE
int
mark_safety(Trans *t) /* for conditional safety */
{	int g = 0, i, j, k;

	if (!t) return 0;
	if (t->qu[0])
		return (t->qu[1])?2:1;	/* marked */

	for (i = 0; i < 2; i++)
	{	j = srinc_set(t->tpe[i]);
		if (j >= GLOBAL && j != ALPHA_F)
			return -1;
		if (j != LOCAL)
		{	k = srunc(t->tpe[i], j);
			if (g == 0
			||  t->qu[0] != k
			||  t->ty[0] != j)
			{	t->qu[g] = k;
				t->ty[g] = j;
				g++;
	}	}	}
	return g;
}
#endif
void
retrans(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
	/* process n, with m states, is=initial state */
{	Trans *T0, *T1, *T2, *T3;
	Trans *T4, *T5; /* t_reverse or has_unless */
	int i;
#if defined(HAS_UNLESS) || !defined(NOREDUCE)
	int k;
#endif
#ifndef NOREDUCE
	int g, h, j, aa;
#endif
#ifdef HAS_UNLESS
	int p;
#endif
	if (state_tables >= 4)
	{	printf("STEP 1 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	do {
		for (i = 1, cnt = 0; i < m; i++)
		{	T2 = trans[n][i];
			T1 = T2?T2->nxt:(Trans *)0;
/* prescan: */		for (T0 = T1; T0; T0 = T0->nxt)
/* choice in choice */	{	if (T0->st && trans[n][T0->st]
				&&  trans[n][T0->st]->nxt)
					break;
			}
#if 0
		if (T0)
		printf("\tstate %d / %d: choice in choice\n",
		i, T0->st);
#endif
			if (T0)
			for (T0 = T1; T0; T0 = T0->nxt)
			{	T3 = trans[n][T0->st];
				if (!T3->nxt)
				{	T2->nxt = cpytr(T0);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
					continue;
				}
				do {	T3 = T3->nxt;
					T2->nxt = cpytr(T3);
					T2 = T2->nxt;
					imed(T2, T0->st, n, i);
				} while (T3->nxt);
				cnt++;
			}
		}
	} while (cnt);
	if (state_tables >= 3)
	{	printf("STEP 2 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
	for (i = 1; i < m; i++)
	{	if (trans[n][i] && trans[n][i]->nxt) /* optimize */
		{	T1 = trans[n][i]->nxt;
#if 0
			printf("\t\tpull %d (%d) to %d\n",
			T1->st, T1->forw, i);
#endif
			srcln[i] = srcln[T1->st];	/* Oyvind Teig, 5.2.0 */

			if (!trans[n][T1->st]) continue;
			T0 = cpytr(trans[n][T1->st]);
			trans[n][i] = T0;
			reach[T1->st] = 1;
			imed(T0, T1->st, n, i);
			for (T1 = T1->nxt; T1; T1 = T1->nxt)
			{
#if 0
			printf("\t\tpull %d (%d) to %d\n",
				T1->st, T1->forw, i);
#endif
		/*		srcln[i] = srcln[T1->st];  gh: not useful */
				if (!trans[n][T1->st]) continue;
				T0->nxt = cpytr(trans[n][T1->st]);
				T0 = T0->nxt;
				reach[T1->st] = 1;
				imed(T0, T1->st, n, i);
	}	}	}
	if (state_tables >= 2)
	{	printf("STEP 3 %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
		return;
	}
#ifdef HAS_UNLESS
	for (i = 1; i < m; i++)
	{	if (!trans[n][i]) continue;
		/* check for each state i if an
		 * escape to some state p is defined
		 * if so, copy and mark p's transitions
		 * and prepend them to the transition-
		 * list of state i
		 */
	 if (!like_java) /* the default */
	 {	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->e_trans = p;
				T2->nxt = trans[n][i];
				trans[n][i] = T2;
		}	}
	 } else /* outermost unless checked first */
	 {	T4 = T3 = (Trans *) 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		for (k = HAS_UNLESS-1; k >= 0; k--)
		{	if (p = T0->escp[k])
			for (T1 = trans[n][p]; T1; T1 = T1->nxt)
			{	if (isthere(trans[n][i], T1->t_id))
					continue;
				T2 = cpytr(T1);
				T2->nxt = (Trans *) 0;
				T2->e_trans = p;
				if (T3)	T3->nxt = T2;
				else	T4 = T2;
				T3 = T2;
		}	}
		if (T4)
		{	T3->nxt = trans[n][i];
			trans[n][i] = T4;
		}
	 }
	}
#endif
#ifndef NOREDUCE
	for (i = 1; i < m; i++)
	{	if (a_cycles)
		{ /* moves through these states are visible */
	#if PROG_LAB>0 && defined(HAS_NP)
			if (progstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (progstate[n][T1->st])
					goto degrade;
	#endif
			if (accpstate[n][i] || visstate[n][i])
				goto degrade;
			for (T1 = trans[n][i]; T1; T1 = T1->nxt)
				if (accpstate[n][T1->st])
					goto degrade;
		}
		T1 = trans[n][i];
		if (!T1) continue;
		g = mark_safety(T1);	/* V3.3.1 */
		if (g < 0) goto degrade; /* global */
		/* check if mixing of guards preserves reduction */
		if (T1->nxt)
		{	k = 0;
			for (T0 = T1; T0; T0 = T0->nxt)
			{	if (!(T0->atom&8))
					goto degrade;
				for (aa = 0; aa < 2; aa++)
				{	j = srinc_set(T0->tpe[aa]);
					if (j >= GLOBAL && j != ALPHA_F)
						goto degrade;
					if (T0->tpe[aa]
					&&  T0->tpe[aa]
					!=  T1->tpe[0])
						k = 1;
			}	}
			/* g = 0;	V3.3.1 */
			if (k)	/* non-uniform selection */
			for (T0 = T1; T0; T0 = T0->nxt)
			for (aa = 0; aa < 2; aa++)
			{	j = srinc_set(T0->tpe[aa]);
				if (j != LOCAL)
				{	k = srunc(T0->tpe[aa], j);
					for (h = 0; h < 6; h++)
						if (T1->qu[h] == k
						&&  T1->ty[h] == j)
							break;
					if (h >= 6)
					{	T1->qu[g%6] = k;
						T1->ty[g%6] = j;
						g++;
			}	}	}
			if (g > 6)
			{	T1->qu[0] = 0;	/* turn it off */
				printf("pan: warning, line %d, ",
					srcln[i]);
			 	printf("too many stmnt types (%d)",
					g);
			  	printf(" in selection\n");
			  goto degrade;
			}
		}
		/* mark all options global if >=1 is global */
		for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			if (!(T1->atom&8)) break;
		if (T1)
degrade:	for (T1 = trans[n][i]; T1; T1 = T1->nxt)
			T1->atom &= ~8;	/* mark as unsafe */
		/* can only mix 'r's or 's's if on same chan */
		/* and not mixed with other local operations */
		T1 = trans[n][i];
		if (!T1 || T1->qu[0]) continue;
		j = T1->tpe[0];
		if (T1->nxt && T1->atom&8)
		{ if (j == 5*DELTA)
		  {	printf("warning: line %d ", srcln[i]);
			printf("mixed condition ");
			printf("(defeats reduction)\n");
			goto degrade;
		  }
		  for (T0 = T1; T0; T0 = T0->nxt)
		  for (aa = 0; aa < 2; aa++)
		  if  (T0->tpe[aa] && T0->tpe[aa] != j)
		  {	printf("warning: line %d ", srcln[i]);
			printf("[%d-%d] mixed %stion ",
				T0->tpe[aa], j, 
				(j==5*DELTA)?"condi":"selec");
			printf("(defeats reduction)\n");
			printf("	'%s' <-> '%s'\n",
				T1->tp, T0->tp);
			goto degrade;
		} }
	}
#endif
	for (i = 1; i < m; i++)
	{	T2 = trans[n][i];
		if (!T2
		||  T2->nxt
		||  strncmp(T2->tp, ".(goto)", 7)
		||  !stopstate[n][i])
			continue;
		stopstate[n][T2->st] = 1;
	}
	if (state_tables && !verbose)
	{	if (dodot)
		{	char buf[256], *q = buf, *p = procname[n];
			while (*p != '\0')
			{	if (*p != ':')
				{	*q++ = *p;
				}
				p++;
			}
			*q = '\0';
			printf("digraph ");
			switch (Btypes[n]) {
			case I_PROC:  printf("init {\n"); break;
			case N_CLAIM: printf("claim_%s {\n", buf); break;
			case E_TRACE: printf("notrace {\n"); break;
			case N_TRACE: printf("trace {\n"); break;
			default:      printf("p_%s {\n", buf); break;
			}
			printf("size=\"8,10\";\n");
			printf("  GT [shape=box,style=dotted,label=\"%s\"];\n", buf);
			printf("  GT -> S%d;\n", is);
		} else
		{	switch (Btypes[n]) {
			case I_PROC:  printf("init\n"); break;
			case N_CLAIM: printf("claim %s\n", procname[n]); break;
			case E_TRACE: printf("notrace assertion\n"); break;
			case N_TRACE: printf("trace assertion\n"); break;
			default:      printf("proctype %s\n", procname[n]); break;
		}	}
		for (i = 1; i < m; i++)
		{	reach[i] = 1;
		}
		tagtable(n, m, is, srcln, reach);
		if (dodot) printf("}\n");
	} else
	for (i = 1; i < m; i++)
	{	int nrelse;
		if (Btypes[n] != N_CLAIM)
		{	for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			{	if (T0->st == i
				&& strcmp(T0->tp, "(1)") == 0)
				{	printf("error: proctype '%s' ",
						procname[n]);
		  			printf("line %d, state %d: has un",
						srcln[i], i);
					printf("conditional self-loop\n");
					pan_exit(1);
		}	}	}
		nrelse = 0;
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
		{	if (strcmp(T0->tp, "else") == 0)
				nrelse++;
		}
		if (nrelse > 1)
		{	printf("error: proctype '%s' state",
				procname[n]);
		  	printf(" %d, inherits %d", i, nrelse);
		  	printf(" 'else' stmnts\n");
			pan_exit(1);
	}	}
#if !defined(LOOPSTATE) && !defined(BFS_PAR)
	if (state_tables)
#endif
	do_dfs(n, m, is, srcln, reach, lpstate);

	if (!t_reverse)
	{	return;
	}
	/* process n, with m states, is=initial state -- reverse list */
	if (!state_tables && Btypes[n] != N_CLAIM)
	{	for (i = 1; i < m; i++)
		{	Trans *Tx = (Trans *) 0; /* list of escapes */
			Trans *Ty = (Trans *) 0; /* its tail element */
			T1 = (Trans *) 0; /* reversed list */
			T2 = (Trans *) 0; /* its tail */
			T3 = (Trans *) 0; /* remembers possible 'else' */

			/* find unless-escapes, they should go first */
			T4 = T5 = T0 = trans[n][i];
	#ifdef HAS_UNLESS
			while (T4 && T4->e_trans) /* escapes are first in orig list */
			{	T5 = T4;	  /* remember predecessor */
				T4 = T4->nxt;
			}
	#endif
			/* T4 points to first non-escape, T5 to its parent, T0 to original list */
			if (T4 != T0)		 /* there was at least one escape */
			{	T3 = T5->nxt;		 /* start of non-escapes */
				T5->nxt = (Trans *) 0;	 /* separate */
				Tx = T0;		 /* start of the escapes */
				Ty = T5;		 /* its tail */
				T0 = T3;		 /* the rest, to be reversed */
			}
			/* T0 points to first non-escape, Tx to the list of escapes, Ty to its tail */

			/* first tail-add non-escape transitions, reversed */
			T3 = (Trans *) 0;
			for (T5 = T0; T5; T5 = T4)
			{	T4 = T5->nxt;
	#ifdef HAS_UNLESS
				if (T5->e_trans)
				{	printf("error: cannot happen!\n");
					continue;
				}
	#endif
				if (strcmp(T5->tp, "else") == 0)
				{	T3 = T5;
					T5->nxt = (Trans *) 0;
				} else
				{	T5->nxt = T1;
					if (!T1) { T2 = T5; }
					T1 = T5;
			}	}
			/* T3 points to a possible else, which is removed from the list */
			/* T1 points to the reversed list so far (without escapes) */
			/* T2 points to the tail element -- where the else should go */
			if (T2 && T3)
			{	T2->nxt = T3;	/* add else */
			} else
			{	if (T3) /* there was an else, but there's no tail */
				{	if (!T1)	/* and no reversed list */
					{	T1 = T3; /* odd, but possible */
					} else		/* even stranger */
					{	T1->nxt = T3;
			}	}	}

			/* add in the escapes, to that they appear at the front */
			if (Tx && Ty) { Ty->nxt = T1; T1 = Tx; }

			trans[n][i] = T1;
			/* reversed, with escapes first and else last */
	}	}
	if (state_tables && verbose)
	{	printf("FINAL proctype %s\n", 
			procname[n]);
		for (i = 1; i < m; i++)
		for (T0 = trans[n][i]; T0; T0 = T0->nxt)
			crack(n, i, T0, srcln);
	}
}
void
imed(Trans *T, int v, int n, int j)	/* set intermediate state */
{	progstate[n][T->st] |= progstate[n][v];
	accpstate[n][T->st] |= accpstate[n][v];
	stopstate[n][T->st] |= stopstate[n][v];
	mapstate[n][j] = T->st;
}
void
tagtable(int n, int m, int is, short srcln[], uchar reach[])
{	Trans *z;

	if (is >= m || !trans[n][is]
	||  is <= 0 || reach[is] == 0)
		return;
	reach[is] = 0;
	if (state_tables)
	for (z = trans[n][is]; z; z = z->nxt)
	{	if (dodot)
			dot_crack(n, is, z);
		else
			crack(n, is, z, srcln);
	}

	for (z = trans[n][is]; z; z = z->nxt)
	{
#ifdef HAS_UNLESS
		int i, j;
#endif
		tagtable(n, m, z->st, srcln, reach);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			tagtable(n, m, j, srcln, reach);
		}
#endif
	}
}

extern Trans *t_id_lkup[];

void
dfs_table(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	Trans *z;

	if (is >= m || is <= 0 || !trans[n][is])
		return;
	if ((reach[is] & (4|8|16)) != 0)
	{	if ((reach[is] & (8|16)) == 16)	/* on stack, not yet recorded */
		{	lpstate[is] = 1;
			reach[is] |= 8; /* recorded */
			if (state_tables && verbose)
			{	printf("state %d line %d is a loopstate\n", is, srcln[is]);
		}	}
		return;
	}
	reach[is] |= (4|16);	/* visited | onstack */
	for (z = trans[n][is]; z; z = z->nxt)
	{	t_id_lkup[z->t_id] = z;
#ifdef HAS_UNLESS
		int i, j;
#endif
		dfs_table(n, m, z->st, srcln, reach, lpstate);
#ifdef HAS_UNLESS
		for (i = 0; i < HAS_UNLESS; i++)
		{	j = trans[n][is]->escp[i];
			if (!j) break;
			dfs_table(n, m, j, srcln, reach, lpstate);
		}
#endif
	}
	reach[is] &= ~16; /* no longer on stack */
}
void
do_dfs(int n, int m, int is, short srcln[], uchar reach[], uchar lpstate[])
{	int i;
	dfs_table(n, m, is, srcln, reach, lpstate);
	for (i = 0; i < m; i++)
		reach[i] &= ~(4|8|16);
}
void
crack(int n, int j, Trans *z, short srcln[])
{	int i;

	if (!z) return;
	printf("	state %3d -(tr %3d)-> state %3d  ",
		j, z->forw, z->st);
	printf("[id %3d tp %3d", z->t_id, z->tpe[0]);
	if (z->tpe[1]) printf(",%d", z->tpe[1]);
#ifdef HAS_UNLESS
	if (z->e_trans)
		printf(" org %3d", z->e_trans);
	else if (state_tables >= 2)
	for (i = 0; i < HAS_UNLESS; i++)
	{	if (!z->escp[i]) break;
		printf(" esc %d", z->escp[i]);
	}
#endif
	printf("]");
	printf(" [%s%s%s%s%s] %s:%d => ",
		z->atom&6?"A":z->atom&32?"D":"-",
		accpstate[n][j]?"a" :"-",
		stopstate[n][j]?"e" : "-",
		progstate[n][j]?"p" : "-",
		z->atom & 8 ?"L":"G",
		PanSource, srcln[j]);
	for (i = 0; z->tp[i]; i++)
		if (z->tp[i] == '\n')
			printf("\\n");
		else
			putchar(z->tp[i]);
	if (verbose && z->qu[0])
	{	printf("\t[");
		for (i = 0; i < 6; i++)
			if (z->qu[i])
				printf("(%d,%d)",
				z->qu[i], z->ty[i]);
		printf("]");
	}
	printf("\n");
	fflush(stdout);
}
/* spin -a m.pml; cc -o pan pan.c; ./pan -D | dot -Tps > foo.ps; ps2pdf foo.ps */
void
dot_crack(int n, int j, Trans *z)
{	int i;

	if (!z) return;
	printf("	S%d -> S%d  [color=black", j, z->st);

	if (z->atom&6) printf(",style=dashed");
	else if (z->atom&32) printf(",style=dotted");
	else if (z->atom&8) printf(",style=solid");
	else printf(",style=bold");

	printf(",label=\"");
	for (i = 0; z->tp[i]; i++)
	{	if (z->tp[i] == '\\'
		&&  z->tp[i+1] == 'n')
		{	i++; printf(" ");
		} else
		{	putchar(z->tp[i]);
	}	}
	printf("\"];\n");
	if (accpstate[n][j]) printf("  S%d [color=red,style=bold];\n", j);
	else if (progstate[n][j]) printf("  S%d [color=green,style=bold];\n", j);
	if (stopstate[n][j]) printf("  S%d [color=blue,style=bold,shape=box];\n", j);
}

#ifdef VAR_RANGES
#define BYTESIZE	32	/* 2^8 : 2^3 = 256:8 = 32 */

typedef struct Vr_Ptr {
	char	*nm;
	uchar	vals[BYTESIZE];
	struct Vr_Ptr *nxt;
} Vr_Ptr;
Vr_Ptr *ranges = (Vr_Ptr *) 0;

void
logval(char *s, int v)
{	Vr_Ptr *tmp;

	if (v<0 || v > 255) return;
	for (tmp = ranges; tmp; tmp = tmp->nxt)
		if (!strcmp(tmp->nm, s))
			goto found;
	tmp = (Vr_Ptr *) emalloc(sizeof(Vr_Ptr));
	tmp->nxt = ranges;
	ranges = tmp;
	tmp->nm = s;
found:
	tmp->vals[(v)/8] |= 1<<((v)%8);
}

void
dumpval(uchar X[], int range)
{	int w, x, i, j = -1;

	for (w = i = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
from:		if ((X[w] & (1<<x)))
		{	printf("%d", i);
			j = i;
			goto upto;
	}	}
	return;
	for (w = 0; w < range; w++)
	for (x = 0; x < 8; x++, i++)
	{
upto:		if (!(X[w] & (1<<x)))
		{	if (i-1 == j)
				printf(", ");
			else
				printf("-%d, ", i-1);
			goto from;
	}	}
	if (j >= 0 && j != 255)
		printf("-255");
}

void
dumpranges(void)
{	Vr_Ptr *tmp;
	printf("\nValues assigned within ");
	printf("interval [0..255]:\n");
	for (tmp = ranges; tmp; tmp = tmp->nxt)
	{	printf("\t%s\t: ", tmp->nm);
		dumpval(tmp->vals, BYTESIZE);
		printf("\n");
	}
}
#endif
