#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM message_delivery */
	case 3: // STATE 1 - _spin_nvr.tmp:21 - [(!((((((((((rrepSent[0]||rrepSent[1])||rrepSent[2])||rrepSent[3])||rrepSent[4])||rrepSent[5])||rrepSent[6])||rrepSent[7])||rrepSent[8])||rrepSent[9])))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!( !((((((((((((int)now.rrepSent[0])||((int)now.rrepSent[1]))||((int)now.rrepSent[2]))||((int)now.rrepSent[3]))||((int)now.rrepSent[4]))||((int)now.rrepSent[5]))||((int)now.rrepSent[6]))||((int)now.rrepSent[7]))||((int)now.rrepSent[8]))||((int)now.rrepSent[9])))))
			continue;
		/* merge: assert(!(!((((((((((rrepSent[0]||rrepSent[1])||rrepSent[2])||rrepSent[3])||rrepSent[4])||rrepSent[5])||rrepSent[6])||rrepSent[7])||rrepSent[8])||rrepSent[9]))))(0, 2, 6) */
		reached[4][2] = 1;
		spin_assert( !( !((((((((((((int)now.rrepSent[0])||((int)now.rrepSent[1]))||((int)now.rrepSent[2]))||((int)now.rrepSent[3]))||((int)now.rrepSent[4]))||((int)now.rrepSent[5]))||((int)now.rrepSent[6]))||((int)now.rrepSent[7]))||((int)now.rrepSent[8]))||((int)now.rrepSent[9])))), " !( !((((((((((rrepSent[0]||rrepSent[1])||rrepSent[2])||rrepSent[3])||rrepSent[4])||rrepSent[5])||rrepSent[6])||rrepSent[7])||rrepSent[8])||rrepSent[9])))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[4][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 4: // STATE 10 - _spin_nvr.tmp:26 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM deadlock_free */
	case 5: // STATE 1 - _spin_nvr.tmp:12 - [(!(1))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!( !(1)))
			continue;
		/* merge: assert(!(!(1)))(0, 2, 6) */
		reached[3][2] = 1;
		spin_assert( !( !(1)), " !( !(1))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[3][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 6: // STATE 10 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM message_delivery */
	case 7: // STATE 1 - _spin_nvr.tmp:3 - [(!(channels[0]?[RREP]))] (6:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!( !((q_len(now.channels[0]) > 0 \
		&& qrecv(now.channels[0], 0, 0, 0) == 1))))
			continue;
		/* merge: assert(!(!(channels[0]?[RREP])))(0, 2, 6) */
		reached[2][2] = 1;
		spin_assert( !( !((q_len(now.channels[0]) > 0 \
		&& qrecv(now.channels[0], 0, 0, 0) == 1))), " !( !((q_len(channels[0]) > 0 \
		&& qrecv(channels[0], 0, 0, 0) == 1)))", II, tt, t);
		/* merge: .(goto)(0, 7, 6) */
		reached[2][7] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 8: // STATE 10 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported10 = 0;
			if (verbose && !reported10)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported10 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][10] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 9: // STATE 1 - dsr_protocol.pml:196 - [i = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_5_4_i;
		((P1 *)_this)->_5_4_i = 0;
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)_this)->_5_4_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 2 - dsr_protocol.pml:197 - [((i<(3*3)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((P1 *)_this)->_5_4_i<(3*3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 3 - dsr_protocol.pml:198 - [(run Node(i))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!(addproc(II, 1, 0, ((P1 *)_this)->_5_4_i)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 4 - dsr_protocol.pml:199 - [i = (i+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((P1 *)_this)->_5_4_i;
		((P1 *)_this)->_5_4_i = (((P1 *)_this)->_5_4_i+1);
#ifdef VAR_RANGES
		logval(":init::i", ((P1 *)_this)->_5_4_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: // STATE 11 - dsr_protocol.pml:203 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Node */
	case 14: // STATE 1 - dsr_protocol.pml:170 - [((i<10))] (6:0:2 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((((P0 *)_this)->i<10)))
			continue;
		/* merge: receivedRREQs[i] = 0(6, 2, 6) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->i, 10) ]);
		((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->i, 10) ] = 0;
#ifdef VAR_RANGES
		logval("Node:receivedRREQs[Node:i]", ((int)((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->i, 10) ]));
#endif
		;
		/* merge: i = (i+1)(6, 3, 6) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Node:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 7, 6) */
		reached[0][7] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 15: // STATE 9 - dsr_protocol.pml:177 - [((isSource&&(messageCounter<10)))] (62:0:2 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)_this)->isSource)&&(((P0 *)_this)->messageCounter<10))))
			continue;
		/* merge: (62, 10, 62) */
		reached[0][10] = 1;
		;
		/* merge: newRoute.length = 1(62, 11, 62) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->newRoute.length;
		((P0 *)_this)->newRoute.length = 1;
#ifdef VAR_RANGES
		logval("Node:newRoute.length", ((P0 *)_this)->newRoute.length);
#endif
		;
		/* merge: newRoute.path[0] = id(62, 12, 62) */
		reached[0][12] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->newRoute.path[0];
		((P0 *)_this)->newRoute.path[0] = ((P0 *)_this)->id;
#ifdef VAR_RANGES
		logval("Node:newRoute.path[0]", ((P0 *)_this)->newRoute.path[0]);
#endif
		;
		_m = 3; goto P999; /* 3 */
	case 16: // STATE 13 - dsr_protocol.pml:32 - [neighbors[0] = 0] (0:24:6 - 1)
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_1_neighbors[0];
		((P0 *)_this)->_4_1_neighbors[0] = 0;
#ifdef VAR_RANGES
		logval("Node:neighbors[0]", ((P0 *)_this)->_4_1_neighbors[0]);
#endif
		;
		/* merge: neighbors[0] = -(1)(24, 14, 24) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_1_neighbors[0];
		((P0 *)_this)->_4_1_neighbors[0] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[0]", ((P0 *)_this)->_4_1_neighbors[0]);
#endif
		;
		/* merge: neighbors[1] = -(1)(24, 15, 24) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_4_1_neighbors[1];
		((P0 *)_this)->_4_1_neighbors[1] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[1]", ((P0 *)_this)->_4_1_neighbors[1]);
#endif
		;
		/* merge: neighbors[2] = -(1)(24, 16, 24) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_4_1_neighbors[2];
		((P0 *)_this)->_4_1_neighbors[2] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[2]", ((P0 *)_this)->_4_1_neighbors[2]);
#endif
		;
		/* merge: neighbors[3] = -(1)(24, 17, 24) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->_4_1_neighbors[3];
		((P0 *)_this)->_4_1_neighbors[3] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[3]", ((P0 *)_this)->_4_1_neighbors[3]);
#endif
		;
		/* merge: count = 0(24, 18, 24) */
		reached[0][18] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->_4_1_count;
		((P0 *)_this)->_4_1_count = 0;
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_1_count);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 17: // STATE 19 - dsr_protocol.pml:41 - [(((id%3)!=0))] (31:0:2 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		if (!(((((P0 *)_this)->id%3)!=0)))
			continue;
		/* merge: neighbors[count] = (id-1)(31, 20, 31) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = (((P0 *)_this)->id-1);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(31, 21, 31) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_1_count;
		((P0 *)_this)->_4_1_count = (((P0 *)_this)->_4_1_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_1_count);
#endif
		;
		/* merge: .(goto)(0, 25, 31) */
		reached[0][25] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 18: // STATE 26 - dsr_protocol.pml:49 - [((((id+1)%3)!=0))] (38:0:2 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((((P0 *)_this)->id+1)%3)!=0)))
			continue;
		/* merge: neighbors[count] = (id+1)(38, 27, 38) */
		reached[0][27] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = (((P0 *)_this)->id+1);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(38, 28, 38) */
		reached[0][28] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_1_count;
		((P0 *)_this)->_4_1_count = (((P0 *)_this)->_4_1_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_1_count);
#endif
		;
		/* merge: .(goto)(0, 32, 38) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: // STATE 33 - dsr_protocol.pml:57 - [((id>=3))] (45:0:2 - 1)
		IfNotBlocked
		reached[0][33] = 1;
		if (!((((P0 *)_this)->id>=3)))
			continue;
		/* merge: neighbors[count] = (id-3)(45, 34, 45) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = (((P0 *)_this)->id-3);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(45, 35, 45) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_1_count;
		((P0 *)_this)->_4_1_count = (((P0 *)_this)->_4_1_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_1_count);
#endif
		;
		/* merge: .(goto)(0, 39, 45) */
		reached[0][39] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 20: // STATE 40 - dsr_protocol.pml:65 - [((id<(3*(3-1))))] (59:0:4 - 1)
		IfNotBlocked
		reached[0][40] = 1;
		if (!((((P0 *)_this)->id<(3*(3-1)))))
			continue;
		/* merge: neighbors[count] = (id+3)(59, 41, 59) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ];
		((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ] = (((P0 *)_this)->id+3);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(59, 42, 59) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_1_count;
		((P0 *)_this)->_4_1_count = (((P0 *)_this)->_4_1_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_1_count);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _4_1_count */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_1_count = 0;
		/* merge: .(goto)(59, 46, 59) */
		reached[0][46] = 1;
		;
		/* merge: neighborIndex = 0(59, 47, 59) */
		reached[0][47] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_4_1_neighborIndex;
		((P0 *)_this)->_4_1_neighborIndex = 0;
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_1_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 21: // STATE 44 - dsr_protocol.pml:68 - [(1)] (59:0:1 - 1)
		IfNotBlocked
		reached[0][44] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(59, 46, 59) */
		reached[0][46] = 1;
		;
		/* merge: neighborIndex = 0(59, 47, 59) */
		reached[0][47] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_1_neighborIndex;
		((P0 *)_this)->_4_1_neighborIndex = 0;
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_1_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: // STATE 47 - dsr_protocol.pml:73 - [neighborIndex = 0] (0:59:1 - 3)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_1_neighborIndex;
		((P0 *)_this)->_4_1_neighborIndex = 0;
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_1_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 23: // STATE 48 - dsr_protocol.pml:74 - [((neighborIndex<4))] (54:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		if (!((((P0 *)_this)->_4_1_neighborIndex<4)))
			continue;
		/* merge: neighbor = neighbors[neighborIndex](0, 49, 54) */
		reached[0][49] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_1_neighbor;
		((P0 *)_this)->_4_1_neighbor = ((P0 *)_this)->_4_1_neighbors[ Index(((P0 *)_this)->_4_1_neighborIndex, 4) ];
#ifdef VAR_RANGES
		logval("Node:neighbor", ((P0 *)_this)->_4_1_neighbor);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 24: // STATE 50 - dsr_protocol.pml:77 - [((neighbor!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((P0 *)_this)->_4_1_neighbor!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 51 - dsr_protocol.pml:78 - [channels[neighbor]!RREQ,id,messageCounter,newRoute.path[0],newRoute.path[1],newRoute.path[2],newRoute.path[3],newRoute.path[4],newRoute.path[5],newRoute.path[6],newRoute.path[7],newRoute.path[8],newRoute.path[9],newRoute.length] (0:0:0 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (q_full(now.channels[ Index(((P0 *)_this)->_4_1_neighbor, 9) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.channels[ Index(((P0 *)_this)->_4_1_neighbor, 9) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->messageCounter); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[0]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[1]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[2]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[3]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[4]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[5]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[6]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[7]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[8]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.path[9]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->newRoute.length); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.channels[ Index(((P0 *)_this)->_4_1_neighbor, 9) ], 0, 2, ((P0 *)_this)->id, ((P0 *)_this)->messageCounter, ((P0 *)_this)->newRoute.path[0], ((P0 *)_this)->newRoute.path[1], ((P0 *)_this)->newRoute.path[2], ((P0 *)_this)->newRoute.path[3], ((P0 *)_this)->newRoute.path[4], ((P0 *)_this)->newRoute.path[5], ((P0 *)_this)->newRoute.path[6], ((P0 *)_this)->newRoute.path[7], ((P0 *)_this)->newRoute.path[8], ((P0 *)_this)->newRoute.path[9], ((P0 *)_this)->newRoute.length, 14);
		_m = 2; goto P999; /* 0 */
	case 26: // STATE 53 - dsr_protocol.pml:79 - [(1)] (59:0:1 - 1)
		IfNotBlocked
		reached[0][53] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(59, 55, 59) */
		reached[0][55] = 1;
		;
		/* merge: neighborIndex = (neighborIndex+1)(59, 56, 59) */
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_1_neighborIndex;
		((P0 *)_this)->_4_1_neighborIndex = (((P0 *)_this)->_4_1_neighborIndex+1);
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_1_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 27: // STATE 56 - dsr_protocol.pml:81 - [neighborIndex = (neighborIndex+1)] (0:59:1 - 3)
		IfNotBlocked
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_1_neighborIndex;
		((P0 *)_this)->_4_1_neighborIndex = (((P0 *)_this)->_4_1_neighborIndex+1);
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_1_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 60, 59) */
		reached[0][60] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 28: // STATE 63 - dsr_protocol.pml:184 - [messageCounter = (messageCounter+1)] (0:170:1 - 3)
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->messageCounter;
		((P0 *)_this)->messageCounter = (((P0 *)_this)->messageCounter+1);
#ifdef VAR_RANGES
		logval("Node:messageCounter", ((P0 *)_this)->messageCounter);
#endif
		;
		/* merge: .(goto)(0, 171, 170) */
		reached[0][171] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 29: // STATE 64 - dsr_protocol.pml:185 - [channels[id]?RREQ,sender,msgID,route.path[0],route.path[1],route.path[2],route.path[3],route.path[4],route.path[5],route.path[6],route.path[7],route.path[8],route.path[9],route.length] (0:0:14 - 1)
		reached[0][64] = 1;
		if (q_len(now.channels[ Index(((P0 *)_this)->id, 9) ]) == 0) continue;

		XX=1;
		if (2 != qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(14);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->sender;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->msgID;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->route.path[0];
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->route.path[1];
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->route.path[2];
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->route.path[3];
		(trpt+1)->bup.ovals[6] = ((P0 *)_this)->route.path[4];
		(trpt+1)->bup.ovals[7] = ((P0 *)_this)->route.path[5];
		(trpt+1)->bup.ovals[8] = ((P0 *)_this)->route.path[6];
		(trpt+1)->bup.ovals[9] = ((P0 *)_this)->route.path[7];
		(trpt+1)->bup.ovals[10] = ((P0 *)_this)->route.path[8];
		(trpt+1)->bup.ovals[11] = ((P0 *)_this)->route.path[9];
		(trpt+1)->bup.ovals[12] = ((P0 *)_this)->route.length;
		;
		((P0 *)_this)->sender = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Node:sender", ((P0 *)_this)->sender);
#endif
		;
		((P0 *)_this)->msgID = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Node:msgID", ((P0 *)_this)->msgID);
#endif
		;
		((P0 *)_this)->route.path[0] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[0]", ((P0 *)_this)->route.path[0]);
#endif
		;
		((P0 *)_this)->route.path[1] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[1]", ((P0 *)_this)->route.path[1]);
#endif
		;
		((P0 *)_this)->route.path[2] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[2]", ((P0 *)_this)->route.path[2]);
#endif
		;
		((P0 *)_this)->route.path[3] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[3]", ((P0 *)_this)->route.path[3]);
#endif
		;
		((P0 *)_this)->route.path[4] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 7, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[4]", ((P0 *)_this)->route.path[4]);
#endif
		;
		((P0 *)_this)->route.path[5] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 8, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[5]", ((P0 *)_this)->route.path[5]);
#endif
		;
		((P0 *)_this)->route.path[6] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 9, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[6]", ((P0 *)_this)->route.path[6]);
#endif
		;
		((P0 *)_this)->route.path[7] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 10, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[7]", ((P0 *)_this)->route.path[7]);
#endif
		;
		((P0 *)_this)->route.path[8] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 11, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[8]", ((P0 *)_this)->route.path[8]);
#endif
		;
		((P0 *)_this)->route.path[9] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 12, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[9]", ((P0 *)_this)->route.path[9]);
#endif
		;
		((P0 *)_this)->route.length = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 13, 1);
#ifdef VAR_RANGES
		logval("Node:route.length", ((P0 *)_this)->route.length);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.channels[ Index(((P0 *)_this)->id, 9) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msgID); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[0]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[1]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[2]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[3]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[4]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[5]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[6]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[7]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[8]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[9]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.length); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: sender */  (trpt+1)->bup.ovals[13] = ((P0 *)_this)->sender;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->sender = 0;
		_m = 4; goto P999; /* 0 */
	case 30: // STATE 65 - dsr_protocol.pml:89 - [((((msgID>=0)&&(msgID<10))&&receivedRREQs[msgID]))] (0:0:1 - 1)
		IfNotBlocked
		reached[0][65] = 1;
		if (!((((((P0 *)_this)->msgID>=0)&&(((P0 *)_this)->msgID<10))&&((int)((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->msgID, 10) ]))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: msgID */  (trpt+1)->bup.oval = ((P0 *)_this)->msgID;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->msgID = 0;
		_m = 3; goto P999; /* 0 */
	case 31: // STATE 68 - dsr_protocol.pml:93 - [receivedRREQs[msgID] = 1] (0:76:2 - 1)
		IfNotBlocked
		reached[0][68] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->msgID, 10) ]);
		((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->msgID, 10) ] = 1;
#ifdef VAR_RANGES
		logval("Node:receivedRREQs[Node:msgID]", ((int)((P0 *)_this)->receivedRREQs[ Index(((P0 *)_this)->msgID, 10) ]));
#endif
		;
		/* merge: (76, 69, 76) */
		reached[0][69] = 1;
		;
		/* merge: i = 0(76, 70, 76) */
		reached[0][70] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->i;
		((P0 *)_this)->i = 0;
#ifdef VAR_RANGES
		logval("Node:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 32: // STATE 71 - dsr_protocol.pml:101 - [((i<route.length))] (76:0:2 - 1)
		IfNotBlocked
		reached[0][71] = 1;
		if (!((((P0 *)_this)->i<((P0 *)_this)->route.length)))
			continue;
		/* merge: routeCopy.path[i] = route.path[i](76, 72, 76) */
		reached[0][72] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->i, 10) ];
		((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->i, 10) ] = ((P0 *)_this)->route.path[ Index(((P0 *)_this)->i, 10) ];
#ifdef VAR_RANGES
		logval("Node:routeCopy.path[Node:i]", ((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->i, 10) ]);
#endif
		;
		/* merge: i = (i+1)(76, 73, 76) */
		reached[0][73] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->i;
		((P0 *)_this)->i = (((P0 *)_this)->i+1);
#ifdef VAR_RANGES
		logval("Node:i", ((P0 *)_this)->i);
#endif
		;
		/* merge: .(goto)(0, 77, 76) */
		reached[0][77] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 33: // STATE 79 - dsr_protocol.pml:108 - [routeCopy.length = route.length] (0:144:3 - 3)
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_routeCopy.length;
		((P0 *)_this)->_4_2_routeCopy.length = ((P0 *)_this)->route.length;
#ifdef VAR_RANGES
		logval("Node:routeCopy.length", ((P0 *)_this)->_4_2_routeCopy.length);
#endif
		;
		/* merge: routeCopy.path[routeCopy.length] = id(144, 80, 144) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->_4_2_routeCopy.length, 10) ];
		((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->_4_2_routeCopy.length, 10) ] = ((P0 *)_this)->id;
#ifdef VAR_RANGES
		logval("Node:routeCopy.path[Node:routeCopy.length]", ((P0 *)_this)->_4_2_routeCopy.path[ Index(((P0 *)_this)->_4_2_routeCopy.length, 10) ]);
#endif
		;
		/* merge: routeCopy.length = (routeCopy.length+1)(144, 81, 144) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_4_2_routeCopy.length;
		((P0 *)_this)->_4_2_routeCopy.length = (((P0 *)_this)->_4_2_routeCopy.length+1);
#ifdef VAR_RANGES
		logval("Node:routeCopy.length", ((P0 *)_this)->_4_2_routeCopy.length);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 34: // STATE 82 - dsr_protocol.pml:113 - [((id==((3*3)-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][82] = 1;
		if (!((((P0 *)_this)->id==((3*3)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 83 - dsr_protocol.pml:114 - [rrepSent[msgID] = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.oval = ((int)now.rrepSent[ Index(((P0 *)_this)->msgID, 10) ]);
		now.rrepSent[ Index(((P0 *)_this)->msgID, 10) ] = 1;
#ifdef VAR_RANGES
		logval("rrepSent[Node:msgID]", ((int)now.rrepSent[ Index(((P0 *)_this)->msgID, 10) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 84 - dsr_protocol.pml:124 - [((routeCopy.length>2))] (87:0:2 - 1)
		IfNotBlocked
		reached[0][84] = 1;
		if (!((((P0 *)_this)->_4_2_routeCopy.length>2)))
			continue;
		/* merge: nextNode = routeCopy.path[(routeCopy.length-2)](87, 85, 87) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_1_nextNode;
		((P0 *)_this)->_4_2_1_nextNode = ((P0 *)_this)->_4_2_routeCopy.path[ Index((((P0 *)_this)->_4_2_routeCopy.length-2), 10) ];
#ifdef VAR_RANGES
		logval("Node:nextNode", ((P0 *)_this)->_4_2_1_nextNode);
#endif
		;
		/* merge: routeCopy.length = (routeCopy.length-1)(87, 86, 87) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_routeCopy.length;
		((P0 *)_this)->_4_2_routeCopy.length = (((P0 *)_this)->_4_2_routeCopy.length-1);
#ifdef VAR_RANGES
		logval("Node:routeCopy.length", ((P0 *)_this)->_4_2_routeCopy.length);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 37: // STATE 87 - dsr_protocol.pml:132 - [channels[nextNode]!RREP,id,msgID,routeCopy.path[0],routeCopy.path[1],routeCopy.path[2],routeCopy.path[3],routeCopy.path[4],routeCopy.path[5],routeCopy.path[6],routeCopy.path[7],routeCopy.path[8],routeCopy.path[9],routeCopy.length] (0:0:0 - 1)
		IfNotBlocked
		reached[0][87] = 1;
		if (q_full(now.channels[ Index(((P0 *)_this)->_4_2_1_nextNode, 9) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.channels[ Index(((P0 *)_this)->_4_2_1_nextNode, 9) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msgID); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[0]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[1]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[2]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[3]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[4]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[5]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[6]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[7]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[8]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[9]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.length); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.channels[ Index(((P0 *)_this)->_4_2_1_nextNode, 9) ], 0, 1, ((P0 *)_this)->id, ((P0 *)_this)->msgID, ((P0 *)_this)->_4_2_routeCopy.path[0], ((P0 *)_this)->_4_2_routeCopy.path[1], ((P0 *)_this)->_4_2_routeCopy.path[2], ((P0 *)_this)->_4_2_routeCopy.path[3], ((P0 *)_this)->_4_2_routeCopy.path[4], ((P0 *)_this)->_4_2_routeCopy.path[5], ((P0 *)_this)->_4_2_routeCopy.path[6], ((P0 *)_this)->_4_2_routeCopy.path[7], ((P0 *)_this)->_4_2_routeCopy.path[8], ((P0 *)_this)->_4_2_routeCopy.path[9], ((P0 *)_this)->_4_2_routeCopy.length, 14);
		_m = 2; goto P999; /* 0 */
	case 38: // STATE 89 - dsr_protocol.pml:134 - [printf('RREP for msgID %d has returned to the source.\\n',msgID)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][89] = 1;
		Printf("RREP for msgID %d has returned to the source.\n", ((P0 *)_this)->msgID);
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 94 - dsr_protocol.pml:32 - [neighbors[0] = 0] (0:105:6 - 1)
		IfNotBlocked
		reached[0][94] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_2_neighbors[0];
		((P0 *)_this)->_4_2_2_neighbors[0] = 0;
#ifdef VAR_RANGES
		logval("Node:neighbors[0]", ((P0 *)_this)->_4_2_2_neighbors[0]);
#endif
		;
		/* merge: neighbors[0] = -(1)(105, 95, 105) */
		reached[0][95] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_2_neighbors[0];
		((P0 *)_this)->_4_2_2_neighbors[0] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[0]", ((P0 *)_this)->_4_2_2_neighbors[0]);
#endif
		;
		/* merge: neighbors[1] = -(1)(105, 96, 105) */
		reached[0][96] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_4_2_2_neighbors[1];
		((P0 *)_this)->_4_2_2_neighbors[1] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[1]", ((P0 *)_this)->_4_2_2_neighbors[1]);
#endif
		;
		/* merge: neighbors[2] = -(1)(105, 97, 105) */
		reached[0][97] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->_4_2_2_neighbors[2];
		((P0 *)_this)->_4_2_2_neighbors[2] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[2]", ((P0 *)_this)->_4_2_2_neighbors[2]);
#endif
		;
		/* merge: neighbors[3] = -(1)(105, 98, 105) */
		reached[0][98] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->_4_2_2_neighbors[3];
		((P0 *)_this)->_4_2_2_neighbors[3] =  -(1);
#ifdef VAR_RANGES
		logval("Node:neighbors[3]", ((P0 *)_this)->_4_2_2_neighbors[3]);
#endif
		;
		/* merge: count = 0(105, 99, 105) */
		reached[0][99] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->_4_2_2_count;
		((P0 *)_this)->_4_2_2_count = 0;
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_2_2_count);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 40: // STATE 100 - dsr_protocol.pml:41 - [(((id%3)!=0))] (112:0:2 - 1)
		IfNotBlocked
		reached[0][100] = 1;
		if (!(((((P0 *)_this)->id%3)!=0)))
			continue;
		/* merge: neighbors[count] = (id-1)(112, 101, 112) */
		reached[0][101] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = (((P0 *)_this)->id-1);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(112, 102, 112) */
		reached[0][102] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_2_count;
		((P0 *)_this)->_4_2_2_count = (((P0 *)_this)->_4_2_2_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_2_2_count);
#endif
		;
		/* merge: .(goto)(0, 106, 112) */
		reached[0][106] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 41: // STATE 107 - dsr_protocol.pml:49 - [((((id+1)%3)!=0))] (119:0:2 - 1)
		IfNotBlocked
		reached[0][107] = 1;
		if (!((((((P0 *)_this)->id+1)%3)!=0)))
			continue;
		/* merge: neighbors[count] = (id+1)(119, 108, 119) */
		reached[0][108] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = (((P0 *)_this)->id+1);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(119, 109, 119) */
		reached[0][109] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_2_count;
		((P0 *)_this)->_4_2_2_count = (((P0 *)_this)->_4_2_2_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_2_2_count);
#endif
		;
		/* merge: .(goto)(0, 113, 119) */
		reached[0][113] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 42: // STATE 114 - dsr_protocol.pml:57 - [((id>=3))] (126:0:2 - 1)
		IfNotBlocked
		reached[0][114] = 1;
		if (!((((P0 *)_this)->id>=3)))
			continue;
		/* merge: neighbors[count] = (id-3)(126, 115, 126) */
		reached[0][115] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = (((P0 *)_this)->id-3);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(126, 116, 126) */
		reached[0][116] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_2_count;
		((P0 *)_this)->_4_2_2_count = (((P0 *)_this)->_4_2_2_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_2_2_count);
#endif
		;
		/* merge: .(goto)(0, 120, 126) */
		reached[0][120] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 43: // STATE 121 - dsr_protocol.pml:65 - [((id<(3*(3-1))))] (140:0:4 - 1)
		IfNotBlocked
		reached[0][121] = 1;
		if (!((((P0 *)_this)->id<(3*(3-1)))))
			continue;
		/* merge: neighbors[count] = (id+3)(140, 122, 140) */
		reached[0][122] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ];
		((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ] = (((P0 *)_this)->id+3);
#ifdef VAR_RANGES
		logval("Node:neighbors[Node:count]", ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_count, 4) ]);
#endif
		;
		/* merge: count = (count+1)(140, 123, 140) */
		reached[0][123] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->_4_2_2_count;
		((P0 *)_this)->_4_2_2_count = (((P0 *)_this)->_4_2_2_count+1);
#ifdef VAR_RANGES
		logval("Node:count", ((P0 *)_this)->_4_2_2_count);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: _4_2_2_count */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->_4_2_2_count = 0;
		/* merge: .(goto)(140, 127, 140) */
		reached[0][127] = 1;
		;
		/* merge: neighborIndex = 0(140, 128, 140) */
		reached[0][128] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->_4_2_2_neighborIndex;
		((P0 *)_this)->_4_2_2_neighborIndex = 0;
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_2_2_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[0][141] = 1;
		;
		_m = 3; goto P999; /* 5 */
	case 44: // STATE 125 - dsr_protocol.pml:68 - [(1)] (140:0:1 - 1)
		IfNotBlocked
		reached[0][125] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(140, 127, 140) */
		reached[0][127] = 1;
		;
		/* merge: neighborIndex = 0(140, 128, 140) */
		reached[0][128] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_2_2_neighborIndex;
		((P0 *)_this)->_4_2_2_neighborIndex = 0;
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_2_2_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[0][141] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 45: // STATE 128 - dsr_protocol.pml:73 - [neighborIndex = 0] (0:140:1 - 3)
		IfNotBlocked
		reached[0][128] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_2_2_neighborIndex;
		((P0 *)_this)->_4_2_2_neighborIndex = 0;
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_2_2_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[0][141] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 46: // STATE 129 - dsr_protocol.pml:74 - [((neighborIndex<4))] (135:0:1 - 1)
		IfNotBlocked
		reached[0][129] = 1;
		if (!((((P0 *)_this)->_4_2_2_neighborIndex<4)))
			continue;
		/* merge: neighbor = neighbors[neighborIndex](0, 130, 135) */
		reached[0][130] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_2_2_neighbor;
		((P0 *)_this)->_4_2_2_neighbor = ((P0 *)_this)->_4_2_2_neighbors[ Index(((P0 *)_this)->_4_2_2_neighborIndex, 4) ];
#ifdef VAR_RANGES
		logval("Node:neighbor", ((P0 *)_this)->_4_2_2_neighbor);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 47: // STATE 131 - dsr_protocol.pml:77 - [((neighbor!=-(1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][131] = 1;
		if (!((((P0 *)_this)->_4_2_2_neighbor!= -(1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 48: // STATE 132 - dsr_protocol.pml:78 - [channels[neighbor]!RREQ,id,msgID,routeCopy.path[0],routeCopy.path[1],routeCopy.path[2],routeCopy.path[3],routeCopy.path[4],routeCopy.path[5],routeCopy.path[6],routeCopy.path[7],routeCopy.path[8],routeCopy.path[9],routeCopy.length] (0:0:0 - 1)
		IfNotBlocked
		reached[0][132] = 1;
		if (q_full(now.channels[ Index(((P0 *)_this)->_4_2_2_neighbor, 9) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.channels[ Index(((P0 *)_this)->_4_2_2_neighbor, 9) ]);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msgID); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[0]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[1]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[2]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[3]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[4]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[5]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[6]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[7]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[8]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.path[9]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->_4_2_routeCopy.length); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.channels[ Index(((P0 *)_this)->_4_2_2_neighbor, 9) ], 0, 2, ((P0 *)_this)->id, ((P0 *)_this)->msgID, ((P0 *)_this)->_4_2_routeCopy.path[0], ((P0 *)_this)->_4_2_routeCopy.path[1], ((P0 *)_this)->_4_2_routeCopy.path[2], ((P0 *)_this)->_4_2_routeCopy.path[3], ((P0 *)_this)->_4_2_routeCopy.path[4], ((P0 *)_this)->_4_2_routeCopy.path[5], ((P0 *)_this)->_4_2_routeCopy.path[6], ((P0 *)_this)->_4_2_routeCopy.path[7], ((P0 *)_this)->_4_2_routeCopy.path[8], ((P0 *)_this)->_4_2_routeCopy.path[9], ((P0 *)_this)->_4_2_routeCopy.length, 14);
		_m = 2; goto P999; /* 0 */
	case 49: // STATE 134 - dsr_protocol.pml:79 - [(1)] (140:0:1 - 1)
		IfNotBlocked
		reached[0][134] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(140, 136, 140) */
		reached[0][136] = 1;
		;
		/* merge: neighborIndex = (neighborIndex+1)(140, 137, 140) */
		reached[0][137] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_2_2_neighborIndex;
		((P0 *)_this)->_4_2_2_neighborIndex = (((P0 *)_this)->_4_2_2_neighborIndex+1);
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_2_2_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[0][141] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 50: // STATE 137 - dsr_protocol.pml:81 - [neighborIndex = (neighborIndex+1)] (0:140:1 - 3)
		IfNotBlocked
		reached[0][137] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_2_2_neighborIndex;
		((P0 *)_this)->_4_2_2_neighborIndex = (((P0 *)_this)->_4_2_2_neighborIndex+1);
#ifdef VAR_RANGES
		logval("Node:neighborIndex", ((P0 *)_this)->_4_2_2_neighborIndex);
#endif
		;
		/* merge: .(goto)(0, 141, 140) */
		reached[0][141] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 51: // STATE 149 - dsr_protocol.pml:187 - [channels[id]?RREP,sender,msgID,route.path[0],route.path[1],route.path[2],route.path[3],route.path[4],route.path[5],route.path[6],route.path[7],route.path[8],route.path[9],route.length] (0:0:14 - 1)
		reached[0][149] = 1;
		if (q_len(now.channels[ Index(((P0 *)_this)->id, 9) ]) == 0) continue;

		XX=1;
		if (1 != qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(14);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->sender;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->msgID;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->route.path[0];
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->route.path[1];
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->route.path[2];
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->route.path[3];
		(trpt+1)->bup.ovals[6] = ((P0 *)_this)->route.path[4];
		(trpt+1)->bup.ovals[7] = ((P0 *)_this)->route.path[5];
		(trpt+1)->bup.ovals[8] = ((P0 *)_this)->route.path[6];
		(trpt+1)->bup.ovals[9] = ((P0 *)_this)->route.path[7];
		(trpt+1)->bup.ovals[10] = ((P0 *)_this)->route.path[8];
		(trpt+1)->bup.ovals[11] = ((P0 *)_this)->route.path[9];
		(trpt+1)->bup.ovals[12] = ((P0 *)_this)->route.length;
		;
		((P0 *)_this)->sender = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Node:sender", ((P0 *)_this)->sender);
#endif
		;
		((P0 *)_this)->msgID = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Node:msgID", ((P0 *)_this)->msgID);
#endif
		;
		((P0 *)_this)->route.path[0] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[0]", ((P0 *)_this)->route.path[0]);
#endif
		;
		((P0 *)_this)->route.path[1] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[1]", ((P0 *)_this)->route.path[1]);
#endif
		;
		((P0 *)_this)->route.path[2] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[2]", ((P0 *)_this)->route.path[2]);
#endif
		;
		((P0 *)_this)->route.path[3] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[3]", ((P0 *)_this)->route.path[3]);
#endif
		;
		((P0 *)_this)->route.path[4] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 7, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[4]", ((P0 *)_this)->route.path[4]);
#endif
		;
		((P0 *)_this)->route.path[5] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 8, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[5]", ((P0 *)_this)->route.path[5]);
#endif
		;
		((P0 *)_this)->route.path[6] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 9, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[6]", ((P0 *)_this)->route.path[6]);
#endif
		;
		((P0 *)_this)->route.path[7] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 10, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[7]", ((P0 *)_this)->route.path[7]);
#endif
		;
		((P0 *)_this)->route.path[8] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 11, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[8]", ((P0 *)_this)->route.path[8]);
#endif
		;
		((P0 *)_this)->route.path[9] = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 12, 0);
#ifdef VAR_RANGES
		logval("Node:route.path[9]", ((P0 *)_this)->route.path[9]);
#endif
		;
		((P0 *)_this)->route.length = qrecv(now.channels[ Index(((P0 *)_this)->id, 9) ], XX-1, 13, 1);
#ifdef VAR_RANGES
		logval("Node:route.length", ((P0 *)_this)->route.length);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.channels[ Index(((P0 *)_this)->id, 9) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msgID); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[0]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[1]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[2]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[3]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[4]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[5]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[6]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[7]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[8]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[9]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.length); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: sender */  (trpt+1)->bup.ovals[13] = ((P0 *)_this)->sender;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->sender = 0;
		_m = 4; goto P999; /* 0 */
	case 52: // STATE 150 - dsr_protocol.pml:143 - [routeIndex = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][150] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_3_routeIndex;
		((P0 *)_this)->_4_3_routeIndex = 0;
#ifdef VAR_RANGES
		logval("Node:routeIndex", ((P0 *)_this)->_4_3_routeIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 53: // STATE 151 - dsr_protocol.pml:144 - [((routeIndex<route.length))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][151] = 1;
		if (!((((P0 *)_this)->_4_3_routeIndex<((P0 *)_this)->route.length)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: // STATE 152 - dsr_protocol.pml:145 - [routeCache[id].path[routeIndex] = route.path[routeIndex]] (0:0:1 - 1)
		IfNotBlocked
		reached[0][152] = 1;
		(trpt+1)->bup.oval = now.routeCache[ Index(((P0 *)_this)->id, 9) ].path[ Index(((P0 *)_this)->_4_3_routeIndex, 10) ];
		now.routeCache[ Index(((P0 *)_this)->id, 9) ].path[ Index(((P0 *)_this)->_4_3_routeIndex, 10) ] = ((P0 *)_this)->route.path[ Index(((P0 *)_this)->_4_3_routeIndex, 10) ];
#ifdef VAR_RANGES
		logval("routeCache[Node:id].path[Node:routeIndex]", now.routeCache[ Index(((P0 *)_this)->id, 9) ].path[ Index(((P0 *)_this)->_4_3_routeIndex, 10) ]);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 55: // STATE 153 - dsr_protocol.pml:146 - [routeIndex = (routeIndex+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][153] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->_4_3_routeIndex;
		((P0 *)_this)->_4_3_routeIndex = (((P0 *)_this)->_4_3_routeIndex+1);
#ifdef VAR_RANGES
		logval("Node:routeIndex", ((P0 *)_this)->_4_3_routeIndex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 159 - dsr_protocol.pml:150 - [routeCache[id].length = route.length] (0:0:1 - 3)
		IfNotBlocked
		reached[0][159] = 1;
		(trpt+1)->bup.oval = now.routeCache[ Index(((P0 *)_this)->id, 9) ].length;
		now.routeCache[ Index(((P0 *)_this)->id, 9) ].length = ((P0 *)_this)->route.length;
#ifdef VAR_RANGES
		logval("routeCache[Node:id].length", now.routeCache[ Index(((P0 *)_this)->id, 9) ].length);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: // STATE 160 - dsr_protocol.pml:124 - [((route.length>2))] (163:0:2 - 1)
		IfNotBlocked
		reached[0][160] = 1;
		if (!((((P0 *)_this)->route.length>2)))
			continue;
		/* merge: nextNode = route.path[(route.length-2)](163, 161, 163) */
		reached[0][161] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->_4_3_3_nextNode;
		((P0 *)_this)->_4_3_3_nextNode = ((P0 *)_this)->route.path[ Index((((P0 *)_this)->route.length-2), 10) ];
#ifdef VAR_RANGES
		logval("Node:nextNode", ((P0 *)_this)->_4_3_3_nextNode);
#endif
		;
		/* merge: route.length = (route.length-1)(163, 162, 163) */
		reached[0][162] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->route.length;
		((P0 *)_this)->route.length = (((P0 *)_this)->route.length-1);
#ifdef VAR_RANGES
		logval("Node:route.length", ((P0 *)_this)->route.length);
#endif
		;
		_m = 3; goto P999; /* 2 */
	case 58: // STATE 163 - dsr_protocol.pml:132 - [channels[nextNode]!RREP,id,msgID,route.path[0],route.path[1],route.path[2],route.path[3],route.path[4],route.path[5],route.path[6],route.path[7],route.path[8],route.path[9],route.length] (0:0:0 - 1)
		IfNotBlocked
		reached[0][163] = 1;
		if (q_full(now.channels[ Index(((P0 *)_this)->_4_3_3_nextNode, 9) ]))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.channels[ Index(((P0 *)_this)->_4_3_3_nextNode, 9) ]);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->id); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->msgID); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[0]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[1]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[2]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[3]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[4]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[5]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[6]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[7]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[8]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.path[9]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->route.length); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.channels[ Index(((P0 *)_this)->_4_3_3_nextNode, 9) ], 0, 1, ((P0 *)_this)->id, ((P0 *)_this)->msgID, ((P0 *)_this)->route.path[0], ((P0 *)_this)->route.path[1], ((P0 *)_this)->route.path[2], ((P0 *)_this)->route.path[3], ((P0 *)_this)->route.path[4], ((P0 *)_this)->route.path[5], ((P0 *)_this)->route.path[6], ((P0 *)_this)->route.path[7], ((P0 *)_this)->route.path[8], ((P0 *)_this)->route.path[9], ((P0 *)_this)->route.length, 14);
		_m = 2; goto P999; /* 0 */
	case 59: // STATE 165 - dsr_protocol.pml:134 - [printf('RREP for msgID %d has returned to the source.\\n',msgID)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][165] = 1;
		Printf("RREP for msgID %d has returned to the source.\n", ((P0 *)_this)->msgID);
		_m = 3; goto P999; /* 0 */
	case 60: // STATE 173 - dsr_protocol.pml:190 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][173] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

