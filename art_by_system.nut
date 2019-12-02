// Giacomo Bianchi 14/10/2019
//
// this class returns artwork.file_name according to the list.name
//
// example of usage:
// systems( "folder/subfolder/", artwork_name );

class art_by_system {
	
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
	folder = null;
	
	constructor( folder_name, artname )
	{
		art = artname;
		folder = folder_name;
		fe.add_transition_callback( this, "system_name" );
	}
		
	function system_name( ttype, var, ttime )
	{
		if ( ttype == Transition.ToNewList  ) {
			local text = fe.list.name.tolower();
			
			art.file_name = folder + "not_found.png";		// system not found
			
			if ( arc.find(text) > -1 )			art.file_name = folder + "arcade.png";
			else if ( p3do.find(text) > -1 )	art.file_name = folder + "3d0.png";
			else if ( n3ds.find(text) > -1 )	art.file_name = folder + "nds.png";
			else if ( at2.find(text) > -1 )		art.file_name = folder + "atari2700.png";
			else if ( at7.find(text) > -1 )		art.file_name = folder + "atari7800.png";
			else if ( atj.find(text) > -1 )		art.file_name = folder + "atarijaguari.png";
			else if ( atl.find(text) > -1 )		art.file_name = folder + "atarilynx.png";
			else if ( col.find(text) > -1 )		art.file_name = folder + "colecovision.png";
			else if ( drc.find(text) > -1 )		art.file_name = folder + "dreamcast.png";
			else if ( fds.find(text) > -1 )		art.file_name = folder + "fds.png";
			else if ( gg.find(text) > -1 )		art.file_name = folder + "gamegear.png";
			else if ( gb.find(text) > -1 )		art.file_name = folder + "gb.png";
			else if ( gba.find(text) > -1 )		art.file_name = folder + "gba.png";
			else if ( gbc.find(text) > -1 )		art.file_name = folder + "gbc.png";
			else if ( gc.find(text) > -1 )		art.file_name = folder + "gc.png";
			else if ( gen.find(text) > -1 )		art.file_name = folder + "genesis.png";
			else if ( sms.find(text) > -1 )		art.file_name = folder + "mastersystem.png";
			else if ( n64.find(text) > -1 )		art.file_name = folder + "n64.png";
			else if ( nds.find(text) > -1 )		art.file_name = folder + "nds.png";
			else if ( aes.find(text) > -1 )		art.file_name = folder + "neogeoaes.png";
			else if ( ncd.find(text) > -1 )		art.file_name = folder + "neogeocd.png";
			else if ( nes.find(text) > -1 )		art.file_name = folder + "nes.png";
			else if ( ngp.find(text) > -1 )		art.file_name = folder + "ngp.png";
			else if ( ngpc.find(text) > -1 )	art.file_name = folder + "ngpc.png";
			else if ( od2.find(text) > -1 )		art.file_name = folder + "odyssey2.png";
			else if ( pce.find(text) > -1 )		art.file_name = folder + "pcengine.png";
			else if ( ps2.find(text) > -1 )		art.file_name = folder + "ps2.png";
			else if ( ps3.find(text) > -1 )		art.file_name = folder + "ps3.png";
			else if ( psp.find(text) > -1 )		art.file_name = folder + "psp.png";
			else if ( psx.find(text) > -1 )		art.file_name = folder + "psx.png";
			else if ( sat.find(text) > -1 )		art.file_name = folder + "saturn.png";
			else if ( s32x.find(text) > -1 )	art.file_name = folder + "sega32x.png";
			else if ( scd.find(text) > -1 )		art.file_name = folder + "segacd.png";
			else if ( cd32x.find(text) > -1 )	art.file_name = folder + "segacd32x.png";
			else if ( sg1.find(text) > -1 )		art.file_name = folder + "sg-1000.png";
			else if ( snes.find(text) > -1 )	art.file_name = folder + "snes.png";
			else if ( vec.find(text) > -1 )		art.file_name = folder + "vectrex.png";
			else if ( vrb.find(text) > -1 )		art.file_name = folder + "virtualboy.png";
			else if ( wii.find(text) > -1 )		art.file_name = folder + "wii.png";
			else if ( wiiu.find(text) > -1 )	art.file_name = folder + "wiiu.png";
			else if ( wsw.find(text) > -1 )		art.file_name = folder + "wonderswan.png";
			else if ( wsc.find(text) > -1 )		art.file_name = folder + "wonderswancolor.png";
			else if ( zxs.find(text) > -1 )		art.file_name = folder + "zxspectrum.png";							
		}
	}
}