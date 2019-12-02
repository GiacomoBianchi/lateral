// Giacomo Bianchi 12/11/2018
//
// this class return art.visible = true/false according to the system
// example of usage:
// scanlines_by_system( artwork_name );

class scanlines_by_system {
	
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
	
	constructor( artname )
	{
		art = artname;
		fe.add_transition_callback( this, "system_name" );
	}
		
	function system_name( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewList  ) {
			local text = fe.list.name.tolower();
			
			if ( arc.find(text) > -1 )			art.visible = true;
			else if ( p3do.find(text) > -1 )	art.visible = true;
			else if ( n3ds.find(text) > -1 )	art.visible = false;
			else if ( at2.find(text) > -1 )		art.visible = true;
			else if ( at7.find(text) > -1 )		art.visible = true;
			else if ( atj.find(text) > -1 )		art.visible = true;
			else if ( atl.find(text) > -1 )		art.visible = true;
			else if ( col.find(text) > -1 )		art.visible = true;
			else if ( drc.find(text) > -1 )		art.visible = true;
			else if ( fds.find(text) > -1 )		art.visible = true;
			else if ( gg.find(text) > -1 )		art.visible = true;
			else if ( gb.find(text) > -1 )		art.visible = true;
			else if ( gba.find(text) > -1 )		art.visible = true;
			else if ( gbc.find(text) > -1 )		art.visible = true;
			else if ( gc.find(text) > -1 )		art.visible = true;
			else if ( gen.find(text) > -1 )		art.visible = true;
			else if ( sms.find(text) > -1 )		art.visible = true;
			else if ( n64.find(text) > -1 )		art.visible = true;
			else if ( nds.find(text) > -1 )		art.visible = true;
			else if ( aes.find(text) > -1 )		art.visible = true;
			else if ( ncd.find(text) > -1 )		art.visible = true;
			else if ( nes.find(text) > -1 )		art.visible = true;
			else if ( ngp.find(text) > -1 )		art.visible = true;
			else if ( ngpc.find(text) > -1 )	art.visible = true;
			else if ( od2.find(text) > -1 )		art.visible = true;
			else if ( pce.find(text) > -1 )		art.visible = true;
			else if ( ps2.find(text) > -1 )		art.visible = false;
			else if ( ps3.find(text) > -1 )		art.visible = false;
			else if ( psp.find(text) > -1 )		art.visible = false;
			else if ( psx.find(text) > -1 )		art.visible = true;
			else if ( sat.find(text) > -1 )		art.visible = true;
			else if ( s32x.find(text) > -1 )	art.visible = true;
			else if ( scd.find(text) > -1 )		art.visible = true;
			else if ( cd32x.find(text) > -1 )	art.visible = true;
			else if ( sg1.find(text) > -1 )		art.visible = true;
			else if ( snes.find(text) > -1 )	art.visible = true;
			else if ( vec.find(text) > -1 )		art.visible = true;
			else if ( vrb.find(text) > -1 )		art.visible = true;
			else if ( wii.find(text) > -1 )		art.visible = false;
			else if ( wiiu.find(text) > -1 )	art.visible = false;
			else if ( wsw.find(text) > -1 )		art.visible = true;
			else if ( wsc.find(text) > -1 )		art.visible = true;
			else if ( zxs.find(text) > -1 )		art.visible = true;					
		}
	}
}