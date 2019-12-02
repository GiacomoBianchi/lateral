// Giacomo Bianchi 31/10/2018
//
// this class changes artwork color according to game Info.Category
//
// example of usage:
// color_by_category( artwork_name, -1, 0, 800, 700 );
//
// -1 is prev art index ( for current game use 0, for next game 1 )
// 4 is coloration mode
// 800 is animation time in milliseconds (if you choose 4 or 5)
// 700 is animation delay in milliseconds (if you choose 4 or 5)
//
// coloration modes
// 0 = set_rgb
// 1 = set_sel_rgb
// 2 = set_bg_rgb
// 3 = set_selbg_rgb
// 4 = animation.add	require fe.load_module("animate");
//
// this class has fe.add_transition_callback( this, "color" );


class color_by_category {

	act = [ "action" ];
	crd = [ "playing cards", "cards", "card game" ];
	fgh = [ "fighting", "fighter", "fight", "beat'em up" ];
	flt = [ "flight simulator", "flight" ];
	ptf = [ "adventure" "platformer", "platform" ];
	pzl = [ "puzzle", "puzzle-game" ];
	rac = [ "racing", "race", "racer", "drive", "driving", "race, driving" ];
	rpg = [ "rpg", "role playing", "role-playing", "role playing game" ];
	sht = [ "shooter", "shooter 3d", "shoot'em up", "shmup" ];
	sim = [ "simulation", "simulator" ];
	spt = [ "sports", "sport", "boxing", "golf", "baseball", "football", "soccer" ];
	stg = [ "strategy" ];
	stl = [ "stealth" ];

	
	name = null;
	index = 0;
	mod = null;
	tm = null;
	dl = null;

	
	constructor( artName, artindex, mode, animation_time, animation_delay  )
	{
		name = artName;
		index = artindex;
		mod = mode;
		tm = animation_time;
		dl = animation_delay;
		fe.add_transition_callback( this, "color" );
	}

	function color( ttype, var, ttime ) {
			
		
		if ( ttype == Transition.ToNewList || ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection ) {
			local text = fe.game_info( Info.Category, index ).tolower();
		
			local R=0; local G=0; local B=0;	//NO MATCHING COLOR COMBO	// black
			
			if		( act.find(text) > -1 ) { R=255;	G=175;	B=0; }		// dark yellow
			else if ( crd.find(text) > -1 ) { R=114;	G=20;	B=69; }		// red blue
			else if ( fgh.find(text) > -1 ) { R=172;	G=16;	B=19; }		// dark red
			else if ( flt.find(text) > -1 ) { R=0;		G=130;	B=255; }	// azure
			else if ( ptf.find(text) > -1 ) { R=0;		G=148;	B=80; }		// green
			else if ( pzl.find(text) > -1 ) { R=239;	G=119;	B=111; }	// pink
			else if ( rac.find(text) > -1 ) { R=255;	G=102;	B=0; }		// orange
			else if ( rpg.find(text) > -1 ) { R=221;	G=0;	B=131; }	// fuxia
			else if ( sht.find(text) > -1 ) { R=255;	G=0;	B=0; }		// red
			else if ( sim.find(text) > -1 ) { R=20;		G=67;	B=114; }	// blue grey
			else if ( spt.find(text) > -1 ) { R=0;		G=88;	B=209; }	// blue
			else if ( stg.find(text) > -1 ) { R=11;		G=0;	B=140; }	// dark blue
			else if ( stl.find(text) > -1 ) { R=0;		G=7;	B=107; }	// dark blue
			
			// if all condition are false, RGB values are the first I've declared  ( R=0  G=0  B=0 )
				
				
			// nel case 4 e nel case 5 ho rimosso when transition perchè è gia dentro una transizione
			
			switch ( mod ) {
				case 0:	name.set_rgb( R, G, B ); break;
				case 1:	name.set_sel_rgb( R, G, B ); break;
				case 2:	name.set_bg_rgb( R, G, B ); break;
				case 3:	name.set_selbg_rgb( R, G, B ); break;
				case 4: animation.add( PropertyAnimation( name, { property="color", end={red=R,green=G,blue=B}, time=tm, delay=dl })); break;
			}
		}
	}	
}