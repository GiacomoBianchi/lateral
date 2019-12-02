// Giacomo Bianchi 08/12/2018
//
// this class changes artwork color according to game system
//
// example of usage:
// colors_by_system( artwork_name, 0, 4, 800, 700 );
//
// 0 change color
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


class colors_by_system {
	
	// lista array aggiornata al 18/10/2018
	
	arc =  [ "arcade", "arcades", "coin-op" ];
	p3do = [ "3do", "panasonic 3do" ];
	n3ds = [ "3ds", "nintendo 3ds" ];
	at2 = [ "atari2600", "atari 2600", "2600" ];
	at7 = [ "atari7800", "atari 7800", "7800" ];
	atj = [ "atarijaguar", "atari jaguar", "jaguar" ];
	atl = [ "atarilynx", "atari lynx", "lynx" ];
	col = [ "colecovision", "coleco vision" ];
	drc = [ "dreamcast", "dreamcast_cdi","sega dreamcast" ];
	fds = [ "fds", "nintendo fds", "nintendo famicom disk system", "famicom disk system" ];
	gg = [ "gamegear", "gg", "game gear", "sega gamegear" ];
	gb = [ "gb", "gameboy", "game boy" ];
	gba = [ "gba", "gameboy advance" ];
	gbc = [ "gbc", "gameboy color" ];
	gc = [ "gc", "gamecube", "nintendo gamecube" ];
	gen = [ "genesis", "sega genesis", "megadrive", "sega megadrive" ];
	sms = [ "mastersystem", "sms", "sega mastersystem" ];
	n64 = [ "n64", "nintendo 64" ];
	nds = [ "nds", "nintendo ds" ];
	aes = [ "neogeoaes", "aes", "neogeo aes", "neo geo aes" ];
	ncd = [ "neogeocd", "ncd", "neogeo cd", "neo geo cd", "neogeo-cd", "neo geo cdz", "neogeocdz" ];
	nes = [ "nes", "nintendo entertainment system" ];
	ngp = [ "ngp", "neogeo pocket", "neo geo pocket" ];
	ngpc = [ "ngpc", "neogeo pocket color", "neo geo pocket color" ];
	od2 = [ "odyssey2", "odyssey 2" ];
	pce = [ "pcengine", "pc engine", "turbografx-16", "turbografx" ];
	ps2 = [ "ps2", "playstation2", "playstation 2" ];
	ps3 = [ "ps3", "playstation3", "playstation 3" ];
	psp = [ "psp", "playstation portable" ];
	psx = [ "psx", "playstation", "sony playstation" ];
	sat = [ "saturn", "sega saturn" ];
	s32x = [ "sega32x", "32x", "sega 32x", "mega drive 32x", "sega mega drive 32x", "sega super 32x", "genesis 32x", "sega genesis 32x" ];
	scd = [ "segacd", "sega cd", "sega-cd", "sega megacd", "sega mega cd", "megacd", "mega-cd", "cdx" ];
	cd32x = [ "segacd32x", "sega-cd 32x" ];
	sg1 = [ "sg1000", "sg-1000", "sega sg-1000" ];
	snes = [ "snes", "super nintendo" ];
	vec = [ "vectrex" ];
	vrb = [ "virtualboy", "virtual boy", "nintendo virtualboy" ];
	wii = [ "wii", "nintendo wii" ];
	wiiu = [ "wiiu", "nintendo wiiu" ];
	wsw = [ "wonderswan" ];
	wsc = [ "wonderswancolor", "wonderswan color" ];
	zxs = [ "zxspectrum" ];


	art = null;
	number = null;
	mod = null;
	tm = null;
	dl = null;


	constructor( artName, color_number, mode, animation_time, animation_delay )
	{
		art = artName;
		number = color_number;
		mod = mode;
		tm = animation_time;
		dl = animation_delay;
		fe.add_transition_callback( this, "color" );
	}

	function color( ttype, var, ttime ) 
	{
			local R = null;
			local G = null;
			local B = null;

		if ( ttype == Transition.ToNewList ) {
			local text = fe.list.name.tolower();

			switch ( number ) {					// SYSTEM NOT FOUND
				case 0:	R=0; 	G=0;	B=0;	break;		// background
				case 1:	R=255; 	G=0;	B=0;	break;		// stripe1
				case 2:	R=255; 	G=0;	B=0;	break;		// stripe2
				case 3:	R=255; 	G=0;	B=0;	break;		// stripe3
				case 4:	R=255; 	G=0;	B=0;	break;		// stripe4
				case 5:	R=255; 	G=0;	B=0;	break;		// stripe5
				case 6:	R=255; 	G=0;	B=0;	break;		// stripe6
				case 7:	R=255; 	G=0;	B=0;	break;		// stripe7
				case 8:	R=255; 	G=0;	B=0;	break;		// stripe8
				case 9:	R=255; 	G=0;	B=0;	break;		// text
			}
			if ( arc.find(text) > -1 ) {		// ARCADE
				switch ( number ) {
					case 0:	R=13; 	G=0;	B=53;	break;	// dark blue
					case 1:	R=0; 	G=153;	B=255;	break;	// azure
					case 2:	R=253; 	G=213;	B=28;	break;	// mango
					case 3: R=255; 	G=0;	B=0;	break;	// red
					case 4:	R=50; 	G=205;	B=50;	break;	// lime zest
					case 5:	R=255; 	G=0;	B=255;	break;	// magenta
					case 6:	R=209; 	G=226;	B=49;	break;	// pear
					case 7:	R=255; 	G=140;	B=105;	break;	// salmon
					case 8:	R=0; 	G=0;	B=255;	break;	// blue
					case 9:	R=255; 	G=255;	B=0;	break;	// yellow
				}
			}
			else if ( p3do.find(text) > -1 ) {		// 3DO
				switch ( number ) {
					case 0:	R=56; 	G=56;	B=56;	break;	// grey console
					case 1:	R=61; 	G=173;	B=125;	break;	// green console packaging
					case 2:	R=60; 	G=148;	B=220;	break;	// blue console packaging
					case 3:	R=255; 	G=73;	B=42;	break;	// red console packaging
					case 4:	R=61; 	G=173;	B=125;	break;	// green console packaging
					case 5:	R=60; 	G=148;	B=220;	break;	// blue console packaging
					case 6:	R=255; 	G=73;	B=42;	break;	// red console packaging
					case 7:	R=61; 	G=173;	B=125;	break;	// green console packaging
					case 8:	R=60; 	G=148;	B=220;	break;	// blue console packaging
					case 9:	R=186; 	G=184;	B=181;	break;	// light grey joypad buttons
					case 10:R=138; 	G=143;	B=147;	break;	// light grey logo joypad
					case 11:R=230; 	G=208;	B=144;	break;	// gold logo console panasonic
					case 12:R=201; 	G=156;	B=29;	break;	// yellow controller B
					case 13:R=0; 	G=148;	B=80;	break;	// green controller C
					case 14:R=0; 	G=96;	B=146;	break;	// blue controller D
					case 16:R=44; 	G=44;	B=44;	break;	// dark grey console
					case 16:R=0; 	G=0;	B=0;	break;	// black
				}
			}	
			else if ( n3ds.find(text) > -1 ) {		// 3DS
				switch ( number ) {
					case 0:	R=148; 	G=185;	B=213;	break;	// cyan console packaging
					case 1:	R=207; 	G=24;	B=31;	break;	// red 3ds logo
					case 2:	R=160; 	G=157;	B=158;	break;	// grey 3ds logo
					case 3: R=207; 	G=24;	B=31;	break;	// red 3ds logo
					case 4:	R=160; 	G=157;	B=158;	break;	// grey 3ds logo
					case 5:	R=207; 	G=24;	B=31;	break;	// red 3ds logo
					case 6:	R=160; 	G=157;	B=158;	break;	// grey 3ds logo
					case 7:	R=207; 	G=24;	B=31;	break;	// red 3ds logo
					case 8:	R=160; 	G=157;	B=158;	break;	// grey 3ds logo
					case 9:	R=255; 	G=255;	B=255;	break;	// white
					case 10:R=28; 	G=106;	B=168;	break;	// blue console packaging
					case 11:R=16; 	G=49;	B=120;	break;	// dark blue console packaging
				}
			}
			else if ( at2.find(text) > -1 ) {		// ATARI 2600
				switch ( number ) {
					case 0:	R=75; 	G=55;	B=23;	break;	// brown console wood detail
					case 1:	R=237; 	G=28;	B=36;	break;	// red atari2600 logo
					case 2:	R=0; 	G=0;	B=0;	break;	// black
					case 3: R=237; 	G=28;	B=36;	break;	// red atari2600 logo
					case 4:	R=0; 	G=0;	B=0;	break;	// black
					case 5:	R=237; 	G=28;	B=36;	break;	// red atari2600 logo
					case 6:	R=0; 	G=0;	B=0;	break;	// black
					case 7:	R=237; 	G=28;	B=36;	break;	// red atari2600 logo
					case 8:	R=0; 	G=0;	B=0;	break;	// black
					case 9:	R=202; 	G=201;	B=203;	break;	// light grey console lever
					case 10:R=43; 	G=43;	B=44;	break;	// dark grey console
					case 11:R=238; 	G=69;	B=30;	break;	// red joystick button
					case 12:R=124; 	G=89;	B=53;	break;	// brown console wood detail
					case 13:R=166; 	G=100;	B=61;	break;	// brown console line detail
				}
			}
			else if ( at7.find(text) > -1 ) {		// ATARI 7800
				switch ( number ) {
					case 0:	R=66; 	G=66;	B=66;	break;	// dark grey console
					case 1:	R=231; 	G=190;	B=46;	break;	// yellow console line
					case 2:	R=208; 	G=63;	B=7;	break;	// orange console line
					case 3: R=94; 	G=134;	B=154;	break;	// green console line
					case 4:	R=135; 	G=191;	B=143;	break;	// green console line
					case 5:	R=231; 	G=190;	B=46;	break;	// yellow console line
					case 6:	R=208; 	G=63;	B=7;	break;	// orange console line
					case 7:	R=94; 	G=134;	B=154;	break;	// green console line
					case 8:	R=135; 	G=191;	B=143;	break;	// green console line
					case 9:	R=202; 	G=201;	B=203;	break;	// light grey console lever
					case 10:R=157; 	G=7;	B=19;	break;	// brown atari 7800 logo
					case 11:R=246; 	G=234;	B=100;	break;	// yellow packaging logo
					case 12:R=38; 	G=30;	B=28;	break;	// dark grey packaging
					case 13:R=217; 	G=212;	B=200;	break;	// grey console
					case 14:R=221; 	G=74;	B=17;	break;	// orange joystick button
					case 15:R=89; 	G=77;	B=100;	break;	// green console line
				}
			}
			else if ( atj.find(text) > -1 ) {		// ATARI JAGUAR
				switch ( number ) {
					case 0:	R=60; 	G=61;	B=62;	break;	// grey
					case 1:	R=226; 	G=197;	B=39;	break;	// yellow packaging
					case 2:	R=137; 	G=109;	B=16;	break;	// brown packaging
					case 3: R=0; 	G=0;	B=0;	break;	// black
					case 4:	R=226; 	G=197;	B=39;	break;	// yellow packaging
					case 5:	R=137; 	G=109;	B=16;	break;	// brown packaging
					case 6:	R=0; 	G=0;	B=0;	break;	// black
					case 7:	R=226; 	G=197;	B=39;	break;	// yellow packaging
					case 8:	R=137; 	G=109;	B=16;	break;	// brown packaging
					case 9:	R=226; 	G=197;	B=39;	break;	// yellow packaging
					case 10:R=90; 	G=91;	B=92;	break;	// grey console
					case 11:R=245; 	G=0;	B=5;	break;	// red logo
				}
			}
			else if ( atl.find(text) > -1 ) {		// ATARI LYNX
				switch ( number ) {
					case 0:	R=127; 	G=132;	B=162;	break;	// grey packaging
					case 1:	R=255; 	G=0;	B=0;	break;	// red logo
					case 2:	R=255; 	G=204;	B=0;	break;	// yellow logo
					case 3: R=255; 	G=0;	B=0;	break;	// red logo
					case 4:	R=255; 	G=204;	B=0;	break;	// yellow logo
					case 5:	R=255; 	G=0;	B=0;	break;	// red logo
					case 6:	R=255; 	G=204;	B=0;	break;	// yellow logo
					case 7:	R=255; 	G=0;	B=0;	break;	// red logo
					case 8:	R=255; 	G=204;	B=0;	break;	// yellow logo
					case 9:	R=255; 	G=204;	B=0;	break;	// yellow logo
					case 10:R=94; 	G=94;	B=97;	break;	// grey console
					case 11:R=207; 	G=146;	B=21;	break;	// dark yellow console letters
					case 11:R=49; 	G=47;	B=48;	break;	// dark grey buttons
				}
			}		
			else if ( col.find(text) > -1 ) {		// COLECOVISION
				switch ( number ) {
					case 0:	R=119; 	G=121;	B=118;	break;	// grey packaging
					case 1:	R=222; 	G=131;	B=151;	break;	// pink logo
					case 2:	R=229; 	G=119;	B=111;	break;	// pink-orange logo
					case 3:	R=242; 	G=149;	B=78;	break;	// orange logo
					case 4:	R=248; 	G=196;	B=58;	break;	// orange-yellow logo
					case 5:	R=227; 	G=228;	B=102;	break;	// yellow logo
					case 6:	R=156; 	G=210;	B=228;	break;	// green logo
					case 7:	R=222; 	G=131;	B=151;	break;	// pink logo
					case 8:	R=229; 	G=119;	B=111;	break;	// pink-orange logo
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}		
			else if ( drc.find(text) > -1 ) {		// DREAMCAST
				switch ( number ) {
					case 0:	R=251; 	G=251;	B=249;	break;	// white packaging
					case 1:	R=254; 	G=221;	B=9;	break;	// yellow controller X
					case 2:	R=117; 	G=201;	B=144;	break;	// green controller Y
					case 3:	R=63; 	G=136;	B=224;	break;	// blue controller B
					case 4:	R=224; 	G=90;	B=81;	break;	// red controller A
					case 5:	R=254; 	G=221;	B=9;	break;	// yellow controller X
					case 6:	R=117; 	G=201;	B=144;	break;	// green controller Y
					case 7:	R=63; 	G=136;	B=224;	break;	// blue controller B
					case 8:	R=224; 	G=90;	B=81;	break;	// red controller A
					case 9:	R=0; 	G=0;	B=0;	break;	// black
					case 10:R=217; 	G=217;	B=214;	break;	// grey controller
					case 11:R=192; 	G=193;	B=188;	break;	// grey 2 controller
					case 12:R=225; 	G=226;	B=224;	break;	// grey controle
					case 13:R=207; 	G=51;	B=17;	break;	// red logo
					case 14:R=191; 	G=191;	B=189;	break;	// grey packaging
				}
			}
			else if ( fds.find(text) > -1 ) {		// FAMILY DISK SYSTEM
				switch ( number ) {
					case 0:	R=237; 	G=234;	B=227;	break;	// light2 sand console
					case 1:	R=142; 	G=10;	B=21;	break;	// red console
					case 2:	R=221; 	G=170;	B=3;	break;	// yellow console button
					case 3:	R=166; 	G=148;	B=104;	break;	// sand console logo
					case 4:	R=212; 	G=209;	B=199;	break;	// light sand console
					case 5:	R=142; 	G=10;	B=21;	break;	// red console
					case 6:	R=221; 	G=170;	B=3;	break;	// yellow console button
					case 7:	R=166; 	G=148;	B=104;	break;	// sand console logo
					case 8:	R=212; 	G=209;	B=199;	break;	// light sand console
					case 9:	R=142; 	G=10;	B=21;	break;	// red console
					case 10:R=249; 	G=171;	B=23;	break;	// yellow packaging
					case 11:R=135; 	G=135;	B=135;	break;	// grey packaging
				}
			}
			else if ( gg.find(text) > -1 ) {		// GAME GEAR
				switch ( number ) {
					case 0:	R=139; 	G=135;	B=135;	break;	// grey logo
					case 1:	R=0; 	G=0;	B=255;	break;	// blue logo
					case 2:	R=0; 	G=132;	B=0;	break;	// green logo
					case 3:	R=214; 	G=24;	B=8;	break;	// red logo
					case 4:	R=0; 	G=0;	B=255;	break;	// blue logo
					case 5:	R=0; 	G=132;	B=0;	break;	// green logo
					case 6:	R=214; 	G=24;	B=8;	break;	// red logo
					case 7:	R=0; 	G=0;	B=255;	break;	// blue logo
					case 8:	R=0; 	G=132;	B=0;	break;	// green logo
					case 9:	R=0; 	G=0;	B=0;	break;	// black
					case 10:R=205; 	G=20;	B=121;	break;	// fuxia packaging
					case 11:R=238; 	G=75;	B=156;	break;	// pink packaging
				}
			}
			else if ( gb.find(text) > -1 ) {		// GAME BOY
				switch ( number ) {
					case 0:	R=172; 	G=172;	B=172;	break;	// grey packaging
					case 1:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 2:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 3:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 4:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 5:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 6:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 7:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 8:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( gba.find(text) > -1 ) {		// GAME BOY ADVANCE
				switch ( number ) {
					case 0:	R=177; 	G=184;	B=189;	break;	// grey packaging
					case 1:	R=31; 	G=0;	B=204;	break;	// blue logo
					case 2:	R=255; 	G=255;	B=255;	break;	// white logo
					case 3:	R=31; 	G=0;	B=204;	break;	// blue logo
					case 4:	R=255; 	G=255;	B=255;	break;	// white logo
					case 5:	R=31; 	G=0;	B=204;	break;	// blue logo
					case 6:	R=255; 	G=255;	B=255;	break;	// white logo
					case 7:	R=31; 	G=0;	B=204;	break;	// blue logo
					case 8:	R=255; 	G=255;	B=255;	break;	// white logo
					case 9:	R=31; 	G=0;	B=204;	break;	// blue logo
				}
			}
			else if ( gbc.find(text) > -1 ) {		// GAME BOY COLOR
				switch ( number ) {
					case 0:	R=177; 	G=184;	B=189;	break;	// grey packaging
					case 1:	R=148; 	G=1;	B=44;	break;	// red logo
					case 2:	R=45; 	G=40;	B=139;	break;	// blue logo
					case 3:	R=99; 	G=157;	B=1;	break;	// green logo
					case 4:	R=200; 	G=166;	B=1;	break;	// yellow logo
					case 5:	R=0; 	G=118;	B=106;	break;	// green logo
					case 6:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 7:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 8:	R=46; 	G=49;	B=146;	break;	// blue logo
					case 9:	R=46; 	G=49;	B=146;	break;	// blue logo
				}
			}			
			else if ( gc.find(text) > -1 ) {		// GAMECUBE
				switch ( number ) {
					case 0:	R=167; 	G=179;	B=217;	break;	// light violet logo
					case 1:	R=76; 	G=82;	B=131;	break;	// violet1 logo
					case 2:	R=85; 	G=91;	B=141;	break;	// violet2 logo
					case 3:	R=103; 	G=107;	B=157;	break;	// violet3 logo
					case 4:	R=126; 	G=128;	B=176;	break;	// violet4 logo
					case 5:	R=103; 	G=107;	B=157;	break;	// violet3 logo
					case 6:	R=85; 	G=91;	B=141;	break;	// violet2 logo
					case 7:	R=76; 	G=82;	B=131;	break;	// violet1 logo
					case 8:	R=85; 	G=91;	B=141;	break;	// violet2 logo
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( gen.find(text) > -1 ) {		// GENESIS
				switch ( number ) {
					case 0:	R=127; 	G=26;	B=26;	break;	// very dark red
					case 1:	R=153; 	G=35;	B=35;	break;	// dark red
					case 2:	R=204; 	G=42;	B=40;	break;	// red
					case 3:	R=153; 	G=35;	B=35;	break;	// dark red
					case 4:	R=204; 	G=42;	B=40;	break;	// red
					case 5:	R=153; 	G=35;	B=35;	break;	// dark red
					case 6:	R=204; 	G=42;	B=40;	break;	// red
					case 7:	R=153; 	G=35;	B=35;	break;	// dark red
					case 8:	R=204; 	G=42;	B=40;	break;	// red
					case 9:	R=217; 	G=221;	B=233;	break;	// light grey logo
					case 10:R=9; 	G=15;	B=39;	break;	// dark blue console packaging
					case 11:R=120; 	G=117;	B=138;	break;	// grey4 logo
					case 12:R=142; 	G=140;	B=159;	break;	// grey3 logo
					case 13:R=158; 	G=158;	B=175;	break;	// grey2 logo
					case 14:R=197; 	G=200;	B=214;	break;	// grey1 logo
				}
			}			
			else if ( sms.find(text) > -1 ) {		// MASTERSYSTEM
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// white
					case 1:	R=8; 	G=56;	B=120;	break;	// blue logo sega
					case 2:	R=196; 	G=41;	B=40;	break;	// red console
					case 3:	R=8; 	G=56;	B=120;	break;	// blue logo sega
					case 4:	R=196; 	G=41;	B=40;	break;	// red console
					case 5:	R=8; 	G=56;	B=120;	break;	// blue logo sega
					case 6:	R=196; 	G=41;	B=40;	break;	// red console
					case 7:	R=8; 	G=56;	B=120;	break;	// blue logo sega
					case 8:	R=196; 	G=41;	B=40;	break;	// red console
					case 9:	R=28; 	G=29;	B=31;	break;	// dark grey console
					case 10:R=173; 	G=22;	B=22;	break;	// red 2 console
					case 11:R=202; 	G=203;	B=205;	break;	// light grey console
				}
			}
			else if ( n64.find(text) > -1 ) {		// NINTENDO 64
				switch ( number ) {
					case 0:	R=185; 	G=185;	B=185;	break;	// light grey console
					case 1:	R=1; 	G=36;	B=166;	break;	// blue logo
					case 2:	R=255; 	G=192;	B=1;	break;	// yellow logo
					case 3:	R=6; 	G=147;	B=48;	break;	// green logo
					case 4:	R=255; 	G=45;	B=30;	break;	// red logo
					case 5:	R=1; 	G=36;	B=166;	break;	// blue logo
					case 6:	R=255; 	G=192;	B=1;	break;	// yellow logo
					case 7:	R=6; 	G=147;	B=48;	break;	// green logo
					case 8:	R=255; 	G=45;	B=30;	break;	// red logo
					case 9:	R=66; 	G=66;	B=66;	break;	// dark grey console
				}
			}
			else if ( nds.find(text) > -1 ) {		// NINTENDO DS
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// white
					case 1:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 2:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 3:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 4:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 5:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 6:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 7:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 8:	R=153; 	G=153;	B=153;	break;	// light grey logo
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( aes.find(text) > -1 ) {		// NEO GEO AES
				switch ( number ) {
					case 0:	R=69; 	G=75;	B=87;	break;	// dark grey console buttons
					case 1:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 2:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 3:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 4:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 5:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 6:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 7:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 8:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 9:	R=198; 	G=169;	B=118;	break;	// gold console logo
					case 10:R=202; 	G=205;	B=202;	break;	// grey console logo
					case 11:R=198; 	G=40;	B=44;	break;	// red controller A
					case 12:R=201; 	G=156;	B=29;	break;	// yellow controller B
					case 13:R=0; 	G=148;	B=80;	break;	// green controller C
					case 14:R=0; 	G=96;	B=146;	break;	// blue controller D
					case 16:R=44; 	G=44;	B=44;	break;	// dark grey console
					case 16:R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( ncd.find(text) > -1 ) {		// NEO GEO CD
				switch ( number ) {
					case 0:	R=44; 	G=44;	B=44;	break;	// dark grey console
					case 1:	R=198; 	G=40;	B=44;	break;	// red controller A
					case 2:	R=201; 	G=156;	B=29;	break;	// yellow controller B
					case 3:	R=0; 	G=148;	B=80;	break;	// green controller C
					case 4:	R=0; 	G=96;	B=146;	break;	// blue controller D
					case 5:	R=198; 	G=40;	B=44;	break;	// red controller A
					case 6:	R=201; 	G=156;	B=29;	break;	// yellow controller B
					case 7:	R=0; 	G=148;	B=80;	break;	// green controller C
					case 8:	R=0; 	G=96;	B=146;	break;	// blue controller D
					case 9:	R=207; 	G=207;	B=205;	break;	// grey console logo
					case 10:R=230; 	G=133;	B=2;	break;	// orange console packaging
					case 11:R=154; 	G=128;	B=235;	break;	// lilla console packaging
					case 12:R=239; 	G=191;	B=5;	break;	// yellow console packaging
					case 13:R=172; 	G=16;	B=19;	break;	// dark red console packaging
					case 14:R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( nes.find(text) > -1 ) {		// NES
				switch ( number ) {
					case 0:	R=218; 	G=218;	B=218;	break;	// grey console
					case 1:	R=255; 	G=0;	B=0;	break;	// red logo
					case 2:	R=255; 	G=0;	B=0;	break;	// red logo
					case 3:	R=255; 	G=0;	B=0;	break;	// red logo
					case 4:	R=255; 	G=0;	B=0;	break;	// red logo
					case 5:	R=255; 	G=0;	B=0;	break;	// red logo
					case 6:	R=255; 	G=0;	B=0;	break;	// red logo
					case 7:	R=255; 	G=0;	B=0;	break;	// red logo
					case 8:	R=255; 	G=0;	B=0;	break;	// red logo
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( ngp.find(text) > -1 ) {		// NEO GEO POCKET
				switch ( number ) {
					case 0:	R=68; 	G=70;	B=72;	break;	// grey console
					case 1:	R=0; 	G=0;	B=0;	break;	// red logo
					case 2:	R=0; 	G=0;	B=0;	break;	// red logo
					case 3:	R=241; 	G=0;	B=0;	break;	// red logo
					case 4:	R=241; 	G=0;	B=0;	break;	// red logo
					case 5:	R=0; 	G=0;	B=0;	break;	// red logo
					case 6:	R=0; 	G=0;	B=0;	break;	// red logo
					case 7:	R=241; 	G=0;	B=0;	break;	// red logo
					case 8:	R=241; 	G=0;	B=0;	break;	// red logo
					case 9:	R=218; 	G=218;	B=218;	break;	// grey
				}
			}
			else if ( ngpc.find(text) > -1 ) {		// NEO GEO POCKET COLOR
				switch ( number ) {
					case 0:	R=244; 	G=235;	B=89;	break;	// yellow packaging
					case 1:	R=0; 	G=0;	B=0;	break;	// black
					case 2:	R=241; 	G=0;	B=0;	break;	// red logo
					case 3:	R=6; 	G=146;	B=17;	break;	// green logo
					case 4:	R=7; 	G=184;	B=249;	break;	// azure logo
					case 5:	R=0; 	G=0;	B=0;	break;	// black
					case 6:	R=241; 	G=0;	B=0;	break;	// red logo
					case 7:	R=6; 	G=146;	B=17;	break;	// green logo
					case 8:	R=7; 	G=184;	B=249;	break;	// azure logo
					case 9:	R=241; 	G=0;	B=0;	break;	// red logo
				}
			}
			else if ( od2.find(text) > -1 ) {		// ODYSSEY 2
				switch ( number ) {
					case 0:	R=0; 	G=0;	B=0;	break;	// black
					case 1:	R=252; 	G=210;	B=93;	break;	// yellow1 logo
					case 2:	R=250; 	G=189;	B=80;	break;	// yellow2 logo
					case 3:	R=247; 	G=149;	B=53;	break;	// yellow3 logo
					case 4:	R=245; 	G=126;	B=37;	break;	// yellow4 logo
					case 5:	R=252; 	G=210;	B=93;	break;	// yellow1 logo
					case 6:	R=250; 	G=189;	B=80;	break;	// yellow2 logo
					case 7:	R=247; 	G=149;	B=53;	break;	// yellow3 logo
					case 8:	R=245; 	G=126;	B=37;	break;	// yellow4 logo
					case 9:	R=252; 	G=210;	B=93;	break;	// yellow1 logo
				}
			}
			else if ( pce.find(text) > -1 ) {		// PC ENGINE
				switch ( number ) {
					case 0:	R=18; 	G=104;	B=92;	break;	// green console button
					case 1:	R=255; 	G=0;	B=0;	break;	// red logo
					case 2:	R=255; 	G=0;	B=0;	break;	// red logo
					case 3:	R=255; 	G=0;	B=0;	break;	// red logo
					case 4:	R=255; 	G=0;	B=0;	break;	// red logo
					case 5:	R=255; 	G=0;	B=0;	break;	// red logo
					case 6:	R=255; 	G=0;	B=0;	break;	// red logo
					case 7:	R=255; 	G=0;	B=0;	break;	// red logo
					case 8:	R=255; 	G=0;	B=0;	break;	// red logo
					case 9:	R=220; 	G=220;	B=220;	break;	// grey console
				}
			}
			else if ( ps2.find(text) > -1 ) {		// PLAYSTATION 2
				switch ( number ) {
					case 0:	R=1; 	G=33;	B=214;	break;	// blue ps2 packaging
					case 1:	R=49; 	G=70;	B=141;	break;	// blue1 logo
					case 2:	R=39; 	G=87;	B=158;	break;	// blue2 logo
					case 3:	R=21; 	G=117;	B=188;	break;	// blue3 logo
					case 4:	R=1; 	G=150;	B=221;	break;	// blue4 logo
					case 5:	R=49; 	G=70;	B=141;	break;	// blue1 logo
					case 6:	R=39; 	G=87;	B=158;	break;	// blue2 logo
					case 7:	R=21; 	G=117;	B=188;	break;	// blue3 logo
					case 8:	R=1; 	G=150;	B=221;	break;	// blue4 logo
					case 9:	R=1; 	G=150;	B=221;	break;	// blue4 logo
					case 10:R=243; 	G=225;	B=1;	break;	// yellow box
				}
			}
			else if ( ps3.find(text) > -1 ) {		// PLAYSTATION 3
				switch ( number ) {
					case 0:	R=0; 	G=76;	B=138;	break;	// blue packaging
					case 1:	R=255; 	G=255;	B=255;	break;	// white
					case 2:	R=255; 	G=255;	B=255;	break;	// white
					case 3:	R=255; 	G=255;	B=255;	break;	// white
					case 4:	R=255; 	G=255;	B=255;	break;	// white
					case 5:	R=255; 	G=255;	B=255;	break;	// white
					case 6:	R=255; 	G=255;	B=255;	break;	// white
					case 7:	R=255; 	G=255;	B=255;	break;	// white
					case 8:	R=255; 	G=255;	B=255;	break;	// white
					case 9:	R=255; 	G=255;	B=255;	break;	// white
				}
			}
			else if ( psp.find(text) > -1 ) {		// PLAYSTATION PORTABLE
				switch ( number ) {
					case 0:	R=190; 	G=192;	B=199;	break;	// light grey packaging
					case 1:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 2:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 3:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 4:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 5:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 6:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 7:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 8:	R=133; 	G=134;	B=139;	break;	// grey packaging
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( psx.find(text) > -1 ) {		// PLAYSTATION 1
				switch ( number ) {
					case 0:	R=188; 	G=188;	B=188;	break;	// grey controller
					case 1:	R=255; 	G=74;	B=157;	break;	// fuxia square button
					case 2:	R=67; 	G=108;	B=255;	break;	// blue X button
					case 3:	R=255; 	G=68;	B=68;	break;	// red cirlce button
					case 4:	R=23; 	G=227;	B=100;	break;	// green triangle button
					case 5:	R=255; 	G=74;	B=157;	break;	// fuxia square button
					case 6:	R=67; 	G=108;	B=255;	break;	// blue X button
					case 7:	R=255; 	G=68;	B=68;	break;	// red cirlce button
					case 8:	R=255; 	G=74;	B=157;	break;	// fuxia square button
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( sat.find(text) > -1 ) {		// SATURN
				switch ( number ) {
					case 0:	R=255; 	G=255;	B=255;	break;	// white
					case 1:	R=237; 	G=231;	B=217;	break;	// beige1 packaging
					case 2:	R=250; 	G=247;	B=242;	break;	// beige2 packaging
					case 3:	R=237; 	G=231;	B=217;	break;	// beige1 packaging
					case 4:	R=250; 	G=247;	B=242;	break;	// beige2 packaging
					case 5:	R=237; 	G=231;	B=217;	break;	// beige1 packaging
					case 6:	R=250; 	G=247;	B=242;	break;	// beige2 packaging
					case 7:	R=237; 	G=231;	B=217;	break;	// beige1 packaging
					case 8:	R=250; 	G=247;	B=242;	break;	// beige2 packaging
					case 9:	R=75; 	G=98;	B=150;	break;	// violet logo
				}
			}
			else if ( s32x.find(text) > -1 ) {		// SEGA 32X
				switch ( number ) {
					case 0:	R=229;	G=160;	B=0;	break;	// very dark yellow
					case 1:	R=251;	G=172;	B=1;	break;	// dark yellow
					case 2:	R=250;	G=197;	B=7;	break;	// yellow
					case 3:	R=251;	G=172;	B=1;	break;	// dark yellow
					case 4:	R=250;	G=197;	B=7;	break;	// yellow
					case 5:	R=251;	G=172;	B=1;	break;	// dark yellow
					case 6:	R=250;	G=197;	B=7;	break;	// yellow
					case 7:	R=251;	G=172;	B=1;	break;	// dark yellow
					case 8:	R=250;	G=197;	B=7;	break;	// yellow
					case 9:R=221;	G=4;	B=2;	break;	// red 32x logo
					case 10:R=41;	G=41;	B=43;	break;	// grey console
					case 11:R=8; 	G=56;	B=120;	break;	// blue logo sega
				}
			}
			else if ( scd.find(text) > -1 ) {		// SEGA-CD
				switch ( number ) {
					case 0:	R=23;	G=103;	B=183;	break;	// cyan
					case 1:	R=58; 	G=126;	B=199;	break;	// dark azure
					case 2:	R=72; 	G=151;	B=231;	break;	// azure
					case 3:	R=58; 	G=126;	B=199;	break;	// dark azure
					case 4:	R=72; 	G=151;	B=231;	break;	// azure
					case 5:	R=58; 	G=126;	B=199;	break;	// dark azure
					case 6:	R=72; 	G=151;	B=231;	break;	// azure
					case 7:	R=58; 	G=126;	B=199;	break;	// dark azure
					case 8:	R=72; 	G=151;	B=231;	break;	// azure
					case 9:	R=171;	G=181;	B=165;	break;	// grey
					case 10:R=54;	G=44;	B=48;	break;	// dark grey packaging
				}
			}
			else if ( cd32x.find(text) > -1 ) {		// SEGA-CD 32X
				switch ( number ) {
					case 0:	R=23;	G=103;	B=183;	break;	// cyan
					case 1:	R=251;	G=172;	B=1;	break;	// dark yellow
					case 2:	R=250;	G=197;	B=7;	break;	// yellow
					case 3:	R=251;	G=172;	B=1;	break;	// dark yellow
					case 4:	R=250;	G=197;	B=7;	break;	// yellow
					case 5:	R=58; 	G=126;	B=199;	break;	// dark azure
					case 6:	R=72; 	G=151;	B=231;	break;	// azure
					case 7:	R=58; 	G=126;	B=199;	break;	// dark azure
					case 8:	R=72; 	G=151;	B=231;	break;	// azure
					case 9:	R=171;	G=181;	B=165;	break;	// grey
				}
			}
			else if ( sg1.find(text) > -1 ) {		// SG-1000
				switch ( number ) {
					case 0:	R=232;	G=209;	B=54;	break;	// yellow packaging
					case 1:	R=205;	G=69;	B=91;	break;	// magenta packaging
					case 2:	R=227;	G=191;	B=71;	break;	// yellow2 packaging
					case 3:	R=71;	G=161;	B=195;	break;	// cyan packaging
					case 4:	R=100;	G=163;	B=84;	break;	// green packaging
					case 5:	R=205;	G=69;	B=91;	break;	// magenta packaging
					case 6:	R=227;	G=191;	B=71;	break;	// yellow2 packaging
					case 7:	R=71;	G=161;	B=195;	break;	// cyan packaging
					case 8:	R=100;	G=163;	B=84;	break;	// green packaging
					case 9:	R=0;	G=0;	B=0;	break;	// black
				}
			}
			else if ( snes.find(text) > -1 ) {		// SNES
				switch ( number ) {
					case 0:	R=129;	G=130;	B=132;	break;	// grey console
					case 1:	R=28; 	G=145;	B=54;	break;	// green joypad button
					case 2:	R=30; 	G=22;	B=195;	break;	// blue joypad button
					case 3:	R=252;	G=186;	B=29;	break;	// yellow joypad button
					case 4:	R=229;	G=23;	B=35;	break;	// red joypad button
					case 5:	R=28; 	G=145;	B=54;	break;	// green joypad button
					case 6:	R=30; 	G=22;	B=195;	break;	// blue joypad button
					case 7:	R=252;	G=186;	B=29;	break;	// yellow joypad button
					case 8:	R=229;	G=23;	B=35;	break;	// red joypad button
					case 9:	R=70;	G=70;	B=70;	break;	// dark grey console logo
					case 10:R=188;	G=183;	B=181;	break;	// light grey console
				}
			}
			else if ( vec.find(text) > -1 ) {		// VECTREX
				switch ( number ) {
					case 0:	R=188;	G=188;	B=188;	break;	// grey packaging
					case 1:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 2:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 3:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 4:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 5:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 6:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 7:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 8:	R=92; 	G=96;	B=157;	break;	// blue packaging
					case 9:	R=0;	G=0;	B=0;	break;	// black
				}
			}
			else if ( vrb.find(text) > -1 ) {		// VIRTUALBOY
				switch ( number ) {
					case 0:	R=32;	G=32;	B=32;	break;	// dark grey packaging
					case 1:	R=249; 	G=29;	B=17;	break;	// red logo
					case 2:	R=249; 	G=29;	B=17;	break;	// red logo
					case 3:	R=249; 	G=29;	B=17;	break;	// red logo
					case 4:	R=249; 	G=29;	B=17;	break;	// red logo
					case 5:	R=249; 	G=29;	B=17;	break;	// red logo
					case 6:	R=249; 	G=29;	B=17;	break;	// red logo
					case 7:	R=249; 	G=29;	B=17;	break;	// red logo
					case 8:	R=249; 	G=29;	B=17;	break;	// red logo
					case 9:	R=249; 	G=29;	B=17;	break;	// red logo
				}
			}
			else if ( wii.find(text) > -1 ) {		// WII
				switch ( number ) {
					case 0:	R=255;	G=255;	B=255;	break;	// white
					case 1:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 2:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 3:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 4:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 5:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 6:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 7:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 8:	R=62; 	G=182;	B=235;	break;	// azure packaging
					case 9:	R=150; 	G=150;	B=154;	break;	// grey logo
				}
			}
			else if ( wiiu.find(text) > -1 ) {		// WIIU
				switch ( number ) {
					case 0:	R=18;	G=188;	B=216;	break;	// azure console packaging
					case 1:	R=255; 	G=255;	B=255;	break;	// white
					case 2:	R=255; 	G=255;	B=255;	break;	// white
					case 3:	R=255; 	G=255;	B=255;	break;	// white
					case 4:	R=255; 	G=255;	B=255;	break;	// white
					case 5:	R=255; 	G=255;	B=255;	break;	// white
					case 6:	R=255; 	G=255;	B=255;	break;	// white
					case 7:	R=255; 	G=255;	B=255;	break;	// white
					case 8:	R=255; 	G=255;	B=255;	break;	// white
					case 9:	R=255; 	G=255;	B=255;	break;	// white
					case 10:R=145;	G=148;	B=161;	break;	// grey logo
					case 11:R=0; 	G=160;	B=207;	break;	// azure 2 console packaging
				}
			}
			else if ( wsw.find(text) > -1 ) {		// WONDERSWAN
				switch ( number ) {
					case 0:	R=255;	G=255;	B=255;	break;	// white
					case 1:	R=255; 	G=0;	B=0;	break;	// red
					case 2:	R=255; 	G=0;	B=0;	break;	// red
					case 3:	R=255; 	G=0;	B=0;	break;	// red
					case 4:	R=255; 	G=0;	B=0;	break;	// red
					case 5:	R=255; 	G=0;	B=0;	break;	// red
					case 6:	R=255; 	G=0;	B=0;	break;	// red
					case 7:	R=255; 	G=0;	B=0;	break;	// red
					case 8:	R=255; 	G=0;	B=0;	break;	// red
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( wsc.find(text) > -1 ) {		// WONDERSWAN COLOR
				switch ( number ) {
					case 0:	R=255;	G=255;	B=255;	break;	// white
					case 1:	R=218; 	G=114;	B=163;	break;	// pink logo
					case 2:	R=116; 	G=135;	B=191;	break;	// cyan logo
					case 3:	R=240; 	G=55;	B=63;	break;	// red logo
					case 4:	R=245; 	G=160;	B=35;	break;	// yellow logo
					case 5:	R=1; 	G=158;	B=227;	break;	// azure logo
					case 6:	R=0; 	G=0;	B=0;	break;	// black
					case 7:	R=0; 	G=0;	B=0;	break;	// black
					case 8:	R=0; 	G=0;	B=0;	break;	// black
					case 9:	R=0; 	G=0;	B=0;	break;	// black
				}
			}
			else if ( zxs.find(text) > -1 ) {		// ZX SPECTRUM
				switch ( number ) {
					case 0:	R=0;	G=0;	B=0;	break;	// black
					case 1:	R=202; 	G=40;	B=37;	break;	// red logo
					case 2:	R=253; 	G=198;	B=1;	break;	// yellow logo
					case 3:	R=0; 	G=156;	B=55;	break;	// green logo
					case 4:	R=2; 	G=85;	B=156;	break;	// blue logo
					case 5:	R=202; 	G=40;	B=37;	break;	// red logo
					case 6:	R=253; 	G=198;	B=1;	break;	// yellow logo
					case 7:	R=0; 	G=156;	B=55;	break;	// green logo
					case 8:	R=2; 	G=85;	B=156;	break;	// blue logo
					case 9:	R=255; 	G=255;	B=255;	break;	// white
				}
			}
			switch ( mod ) {
				case 0:	art.set_rgb( R, G, B ); break;
				case 1:	art.set_sel_rgb( R, G, B ); break;
				case 2:	art.set_bg_rgb( R, G, B ); break;
				case 3:	art.set_selbg_rgb( R, G, B ); break;
				case 4: animation.add( PropertyAnimation( art, { property="color", end={red=R,green=G,blue=B}, time=tm, delay=dl })); break;
			}
		}
	}
}