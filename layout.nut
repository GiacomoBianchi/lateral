////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//                                              LATERAL 1.0.2 layout for Attract-Mode 2.6.0
//                                                      Giacomo Bianchi 30/11/2019
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
local o = 0;
local num100 = "DEFAULT,100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0";
local col = "WHITE,BLACK,GREY 95%,GREY 90%,GREY 80%,GREY 70%,GREY 60%,GREY 50%,GREY 40%,GREY 30%,GREY 20%,GREY 10%,YELLOW,YELLOW ORANGE,ORANGE,RED ORANGE,RED,RED VIOLET,VIOLET,BLUE VIOLET,BLUE,BLUE GREEN,GREEN,YELLOW GREEN,LEMON,BANANA,AMBER,MANGO,TANGERINE,PEAR,APPLE,LIME ZEST,WASABI,EMERALD,JADE,CUCUMBER,DOS,TERMINAL,GRAPEFRUIT,APRincOT,MAHOGANY,SAPPHIRE,COBALT,DENIM,AMETHYST,VERY LIGHT BLUE,LIGHT BLUE,MEDIUM BLUE,DARK BLUE,BLACKBERRY,BORDEAUX,EGGPLANT,RASPBERRY,RUBY,SALMON,PLUM,AUBERGINE,FUCHSIA,MAGENTA,RAPHAEL,MincHELANGELO,LEONARDO,DONATELLO,TMNT,RincHARD PETTY,FERRARI";
class UserConfig {
	</ label="background", help="background artwork (default VIDEO)", options="VIDEO,SCREENSHOT", order=o++ /> bg_opt="VIDEO";
	</ label="snap audio", help="enable snap audio (default YES)", options="YES,NO", order=o++ /> bg_audio_opt="YES";
	</ label="scanlines", help="enable scanlines (default BY SYSTEM)", options="BY SYSTEM,ALWAYS,NO", order=o++ /> scan_opt="BY SYSTEM";
	</ label="selection sound", help="enable selection sound (default YES)", options="YES,NO", order=o++ /> selection_sound="YES";
	</ label="extra", help="select extra or overview (default EXTRA)", options="EXTRA,OVERVIEW,NO", order=o++ /> ext_opt="EXTRA";
	</ label="boxart", help="lateral game artwork (default BOXART)", options="BOXART,FLYER", order=o++ /> art_opt="BOXART";
	</ label="wheel", help="top game artwork (default WHEEL)", options="WHEEL,3D-BOXART,CARTART", order=o++ /> top_art_opt="WHEEL";
	</ label=" ", help="", order=o++ /> space1=" ";
	</ label=" ", help="", order=o++ /> space2=" ";
	</ label="------------ EXPERT ZONE ------------", help="These options change theme appearance", order=o++ /> empty1=" ";
	</ label="game area width", help="game area width (default 20)", options=num100, order=o++ /> gbw_opt="DEFAULT";
	</ label="system area width", help="system area width (default 20)", options=num100, order=o++ /> sbw_opt="DEFAULT";
	</ label="text background", help="text background (DEFAULT NO)", options="YES,NO,DEFAULT", order=o++ /> tbg_opt="DEFAULT";
}
local my_config = fe.get_config();
fe.load_module("animate");
fe.do_nut("art_by_system.nut");
fe.do_nut("colors.nut");
fe.do_nut("color_by_category.nut")
fe.do_nut("colors_by_system.nut");
fe.do_nut("scanlines_by_system.nut");
fe.do_nut("system_history.nut");
local fsb = "BarlowCondensed-SemiBold";
local fbo = "BarlowCondensed-Bold";
local fbr = "BarlowCondensed-Regular";
fe.layout.font = "BarlowCondensed-Medium";
local flw = fe.layout.width;
local flh = fe.layout.height;
local anv = 4;			//  animation YES/NO  ( 4=YES   0=N0 )
local ant = 750;		//  animation time
local ans = 10000;		//  animation scrolling time
local and = 3000;		//  animation delay
local baa = 50;			//  background alpha
local tih = 0.070;		//  title height
local tic = 0.092;		//  title charsize
local ath = 0.070;		//  alternative title height
local atc = 0.040;		//  alternative title charsize
local nuh = 0.070;		//  number height
local nuc = 0.092;		//  number charsize
local exh = 0.775;		//  extra height
local exc = 0.023;		//  extra charsize
local dih = 0.025;		//  display height
local dic = 0.028;		//  display charsize
local sbw = 0.20;		//  system background width
local sgh = 0.50;		//  system gradient height
local sga = 80;			//  system gradient alpha
local sph = 0.60;		//  system photo height
local slh = 0.06;		//  system logo height
local slb = 0.015;		//  system logo space from bottom
local sst = 0.015;		//  system_story top space
local ssl = 0.015;		//  system_story left space
local ssr = 0.015;		//  system_story right space
local ssp = 1.00;		//  system_story line spacing
local shc = 0.020;		//  system_story charsize
local gbw = 0.20;		//  game background width
local glh = 0.16;		//  game logo height
local gah = 0.90;		//  game art height
local gth = 0.30;		//  gradient_top height;
local gbh = 0.30;		//  gradient_bottom height;
local gfh = 0.40;		//  game gradient fullpart height;
local ggh = 0.25;		//  game gradient height;
local gay = 0.20;		//  game art y
local inh = 0.028;		//  info height
local inc = 0.032;		//  info charsize
local ins = 0.008;		//  info space
if ( my_config["gbw_opt"] != "DEFAULT") gbw=my_config["gbw_opt"].tofloat()*0.01;	//  game background width
if ( my_config["sbw_opt"] != "DEFAULT") sbw=my_config["sbw_opt"].tofloat()*0.01;	//  system background width


//////////////// BACKGROUND
local background = fe.add_artwork( "snap", 0, 0, flw, flh );
if ( my_config["bg_opt"] == "SCREENSHOT") background.video_flags = Vid.ImagesOnly;
if ( my_config["bg_audio_opt"] == "NO") background.video_flags = Vid.NoAudio;
background.preserve_aspect_ratio = true;
fe.add_transition_callback("snap_width");
function snap_width( ttype, var, ttime ) {
	if ( ttype == Transition.ToNewList || ttype == Transition.ToNewSelection || ttype == Transition.FromOldSelection ) {
		local path = null;
		if ( my_config["bg_opt"] == "SCREENSHOT") path = fe.get_art( "snap", 0 , 0 , Art.Default | Art.ImagesOnly );
		else if ( my_config["bg_opt"] == "VIDEO") path = fe.get_art( "snap", 0 , 0 , Art.Default );	
		if ( path != "" ) background.width = background.height / background.texture_height * background.texture_width;
		else background.width = 0;
	}
}

switch ( my_config["scan_opt"] ) {
	case "ALWAYS":
		local scanlines = fe.add_image( "assets/scanlines.png", 0, 0, flw, flh );
		break;
	case "BY SYSTEM":
		local scanlines = fe.add_image( "assets/scanlines.png", 0, 0, flw, flh );
		scanlines_by_system( scanlines );
		break;
}

local gradient_top = fe.add_image( "assets/gradient_t.png", 0, 0, flw, flh*gth );
gradient_top.set_rgb( 0, 0, 0 );
local gradient_bottom = fe.add_image( "assets/gradient_b.png", 0, flh-flh*gbh+1, flw, flh*gbh );
gradient_bottom.set_rgb( 0, 0, 0 );

function title( index_offset ) {
	local text_t = fe.game_info(Info.Title, index_offset);
	local text_r = split( fe.game_info( Info.Name, index_offset ), "(/[" );
	if ( text_t != "" ) return text_t.toupper();
	else return text_r[0].toupper();
}
local title = fe.add_text ( "[!title]", flh*ssl, flh*sst, flw-flw*sbw-flw*gbw-flh*ssl-flh*ssr, flh*tih );
title.align = Align.TopLeft;
title.font = fsb;
title.charsize = flh*tic;
title.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( title, "BLUE", 2 );
animation.add( PropertyAnimation( title, { when=Transition.ToNewList, property="y", start=-title.height*2.5, end=title.y, time=ant, tween=Tween.Circle }));
animation.add( PropertyAnimation( title, { when=Transition.ToNewSelection, property="y", start=-title.height*2.5, end=title.y, time=ant, tween=Tween.Circle }));

function alt_title( index_offset ) {
	local text_a = fe.game_info(Info.AltTitle, index_offset);
	local text_r = fe.game_info(Info.Name, index_offset);
	if ( text_a != "" ) return text_a.toupper();
	else return text_r.toupper();
}
local alt_title = fe.add_text ( "[!alt_title]", flh*ssl, title.y+title.height+flh*ins, flw-flw*sbw-flw*gbw-flh*ssl-flh*ssr, flh*ath );
alt_title.align = Align.TopLeft;
alt_title.font = fsb;
alt_title.charsize = flh*atc;
alt_title.margin = 0;
alt_title.line_spacing = 0.75;
alt_title.word_wrap = true
if ( my_config["tbg_opt"] == "YES" ) colors( alt_title, "BLUE", 2 );
animation.add( PropertyAnimation( alt_title, { when=Transition.ToNewList, property="x", start=-alt_title.width, end=alt_title.x, time=ant, tween=Tween.Back }));
animation.add( PropertyAnimation( alt_title, { when=Transition.ToNewSelection, property="x", start=-alt_title.width, end=alt_title.x, time=ant, tween=Tween.Circle }));

local number = fe.add_text("[ListEntry]/[ListSize]", flh*ssl, flh-flh*dih-flh*nuh-flh*slb-flh*ins, flw-flw*sbw-flw*gbw-flh*ssl-flh*ssr, flh*nuh );
number.charsize = flh*nuc;
number.align = Align.TopLeft;
number.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( number, "BLUE", 2 );
animation.add( PropertyAnimation( number, { when=Transition.ToNewList, property="x", start=-number.width, end=number.x, time=ant, tween=Tween.Back }));

function display( index_offset, var ) return fe.displays[fe.list.display_index].name.toupper();
function filter( index_offset, var ) {	// Thanks Oomek :)
    if (fe.filters.len() > 0) return fe.filters[fe.list.filter_index].name.toupper()	// Thanks Oomek :)
    else return ""	// Thanks Oomek :)
}	// Thanks Oomek :)
local display = fe.add_text ( "[!display] - [!filter]", flh*ssl, flh-flh*dih-flh*slb, flw-flw*sbw-flw*gbw-flh*ssl-flh*ssr, flh*dih );
display.charsize = flh*dic;
display.font = fsb;
display.align = Align.TopLeft;
display.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( display, "BLUE", 2 );
animation.add( PropertyAnimation( display, { when=Transition.ToNewList, property="x", start=-display.width, end=display.x, time=ant, tween=Tween.Back }));

if ( my_config["ext_opt"] != "NO") {
	local ext = "";
	if ( my_config["ext_opt"] == "EXTRA" ) ext = "[!extra]";
	else if ( my_config["ext_opt"] == "OVERVIEW" ) ext = "[Overview]";
	function extra( index_offset ) {
		local text = fe.game_info(Info.Extra, index_offset);
		if (text != "") return text.toupper();
		else return "MISSING EXTRA";
	}
	local extra = fe.add_text ( ext, flh*ssl, alt_title.y+alt_title.height+flh*ins*2.0, flw-flw*sbw-flw*gbw-flh*ssl-flh*ssr, flh-flh*tih-flh*sst-flh*slb-flh*nuh-flh*dih-flh*ath-flh*ins*5.0 );
	extra.align = Align.TopLeft;
	extra.word_wrap = true;
	extra.margin = 0;
	extra.line_spacing = 0.80;
	extra.charsize = flh*exc;
	if ( my_config["tbg_opt"] == "YES" ) colors( extra, "BLUE", 2 );
	animation.add( PropertyAnimation( extra, { when=Transition.ToNewList, property="alpha", end=0, time=1 }));
	animation.add( PropertyAnimation( extra, { when=Transition.ToNewSelection, property="alpha", end=0, time=1 }));
	animation.add( PropertyAnimation( extra, { when=Transition.ToNewSelection, property="alpha", start=0, end=255, time=ant*2.00, delay=and }));
	animation.add( PropertyAnimation( background, { when=Transition.ToNewList, property="alpha", end=255, time=ant*0.30 }));
	animation.add( PropertyAnimation( background, { when=Transition.ToNewSelection, property="alpha", end=255, time=ant*0.30 }));
	animation.add( PropertyAnimation( background, { when=Transition.ToNewSelection, property="alpha", start=255, end=baa, time=ant*2.00, delay=and }));
}


//////////////// SYSTEM
local system_background = fe.add_image( "assets/white.png", flw-flw*sbw, 0, flw*sbw, flh );
colors_by_system( system_background, 0, anv, ant*0.30, 0 );

local system_gradient = fe.add_image( "assets/gradient_t.png", flw-flw*sbw, 0, flw*sbw, flh*sgh );
system_gradient.alpha = sga;

local story_surface = fe.add_surface ( flw*sbw-flh*ssl-flh*ssr, flh );
story_surface.x = flw-flw*sbw;
story_surface.y = flh*sst;
local system_story = story_surface.add_text( "", flh*ssl, 1, flw*sbw-flh*ssl-flh*ssr, flh*3 );
system_history( system_story, "UPPERCASE" );
colors_by_system( system_story, 9, anv, ant*0.30, 0 );
system_story.font = fbr;
system_story.charsize = flh*shc;
system_story.align = Align.TopLeft;
system_story.word_wrap = true;
system_story.margin = 0;
system_story.line_spacing = ssp;
if ( my_config["tbg_opt"] == "YES" ) colors( system_story, "BLUE", 2 );
animation.add( PropertyAnimation( system_story, { when=Transition.ToNewList, property="y", end=system_story.y, time=1 }));
animation.add( PropertyAnimation( system_story, { when=Transition.ToNewList, property="y", start=system_story.y, end=system_story.y-system_story.height, time=ans*6.0, delay=and*1.5 }));

local system_surface = fe.add_surface( flw*sbw, flh );
system_surface.x = flw-flw*sbw;
system_surface.y = 0;

local system_photo = system_surface.add_image( "", flw*sbw*0.50-flw*0.50, flh-flh*sph*0.70, flw, flh*sph );
art_by_system( "assets/system photo/", system_photo );
system_photo.preserve_aspect_ratio = true;
animation.add( PropertyAnimation( system_photo, { when=Transition.ToNewList, property="x", start=0, end=system_photo.x, time=ant, tween=Tween.Back }));

local system_logo = system_surface.add_image( "", flh*ssl, 0, flw*sbw-flh*ssl-flh*ssr, flh*slh );
art_by_system( "assets/system logo/", system_logo );
fe.add_transition_callback("system_logo");
function system_logo( ttype, var, ttime ) {
	if ( ttype == Transition.ToNewList ) {
		if ( system_logo.file_name != "" ) system_logo.height = system_logo.width / system_logo.texture_width * system_logo.texture_height;
		else system_logo.height = 0;
		system_logo.y = flh-system_logo.height-flh*slb;
		animation.add( PropertyAnimation( system_logo, { property="y", start=flh+system_logo.height*0.5, end=system_logo.y, time=ant, tween=Tween.Circle }));
	}
}


//////////////// GAME
local game_surface = fe.add_surface( flw*gbw, flh );
game_surface.x = flw-flw*sbw-flw*gbw;
game_surface.y = 0;

local game_background = game_surface.add_image( "assets/white.png", 0, 0, flw*gbw, flh );
game_background.alpha = 255;
game_background.set_rgb( 0, 0, 0 );

local art = "";
if ( my_config["art_opt"] == "BOXART" ) art = "boxart";
else if ( my_config["art_opt"] == "FLYER" ) art = "flyer";
local game_art = game_surface.add_artwork( art, flw*gbw*0.50-flw*0.50, flh*gay, flw, flh*gah );
game_art.preserve_aspect_ratio = true;
animation.add( PropertyAnimation( game_art, { when=Transition.ToNewList, property="x", start=0, end=game_art.x, time=ant, tween=Tween.Back }));
animation.add( PropertyAnimation( game_art, { when=Transition.ToNewSelection, property="x", start=0, end=game_art.x, time=ant, tween=Tween.Back }));

local game_gradient_fullpart = game_surface.add_image( "assets/white.png", 0, 0, flw*gbw, flh*gfh );
color_by_category( game_gradient_fullpart, 0, anv, ant*0.30, 0 );

local game_gradient = game_surface.add_image ( "assets/gradient_t.png", 0, flh*gfh, flw*gbw, flh*ggh );
color_by_category( game_gradient, 0, anv, ant*0.30, 0 );

local top_art = "";
switch ( my_config["top_art_opt"] ) {
	case "WHEEL": top_art = "wheel"; break;
	case "3D-BOXART": top_art = "3d-boxart"; break;
	case "CARTART": top_art = "cartart"; break;
}
local game_logo = game_surface.add_artwork( top_art, flh*ssl, flh*sst, flw*gbw-flh*ssl-flh*ssr, flh*glh );
game_logo.preserve_aspect_ratio = true;
animation.add( PropertyAnimation( game_logo, { when=Transition.ToNewList, property="y", start=-game_logo.height*1.5, end=game_logo.y, time=ant, tween=Tween.Circle }));
animation.add( PropertyAnimation( game_logo, { when=Transition.ToNewSelection, property="y", start=-game_logo.height*1.5, end=game_logo.y, time=ant, tween=Tween.Circle }));

local year_surface = fe.add_surface ( flw*gbw-flh*ssl-flh*ssr, flh*inh );
year_surface.x = flw-flw*sbw-flw*gbw+flh*ssl;
year_surface.y = flh*sst+flh*glh+flh*ins*4;
function year( index_offset, var ) {
	local text = fe.game_info(Info.Year, 0);
	if (text != "") return text;
	else return "MISSING YEAR";
}
local year = year_surface.add_text ( "[!year]", 0, 0, flw*gbw-flh*ssl-flh*ssr, flh*inh );
year.charsize = flh*inc;
year.align = Align.Centre;
year.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( year, "BLUE", 2 );
animation.add( PropertyAnimation( year, { when=Transition.ToNewList, property="y", start=year.height*2.5, end=0, time=ant, tween=Tween.Circle }));
animation.add( PropertyAnimation( year, { when=Transition.ToNewSelection, property="y", start=year.height*2.5, end=0, time=ant, tween=Tween.Circle }));

local manufacturer_surface = fe.add_surface ( flw*gbw-flh*ssl-flh*ssr, flh*inh );
manufacturer_surface.x = flw-flw*sbw-flw*gbw+flh*ssl;
manufacturer_surface.y = year_surface.y+year_surface.height+flh*ins;
function manufacturer( index_offset ) {
	local text = fe.game_info(Info.Manufacturer, 0);
	if (text != "") return text.toupper();
	else return "MISSING DEVELOPER";
}
local manufacturer = manufacturer_surface.add_text ( "[!manufacturer]", 0, 0, flw*gbw-flh*ssl-flh*ssr, flh*inh );
manufacturer.charsize = flh*inc;
manufacturer.align = Align.Centre;
manufacturer.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( manufacturer, "BLUE", 2 );
animation.add( PropertyAnimation( manufacturer, { when=Transition.ToNewList, property="y", start=manufacturer.height*2.5, end=0, time=ant, tween=Tween.Circle }));
animation.add( PropertyAnimation( manufacturer, { when=Transition.ToNewSelection, property="y", start=manufacturer.height*2.5, end=0, time=ant, tween=Tween.Circle }));

local category_surface = fe.add_surface ( flw*gbw-flh*ssl-flh*ssr, flh*inh );
category_surface.x = flw-flw*sbw-flw*gbw+flh*ssl;
category_surface.y = manufacturer_surface.y+manufacturer_surface.height+flh*ins;
function category( index_offset ) {
	local text = fe.game_info(Info.Category, 0);
	if (text != "") return text.toupper();
	else return "MISSING GENRE";
}
local category = category_surface.add_text ( "[!category]", 0, 0, flw*gbw-flh*ssl-flh*ssr, flh*inh );
category.charsize = flh*inc;
category.align = Align.Centre;
category.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( category, "BLUE", 2 );
animation.add( PropertyAnimation( category, { when=Transition.ToNewList, property="y", start=category.height*2.5, end=0, time=ant, tween=Tween.Circle }));
animation.add( PropertyAnimation( category, { when=Transition.ToNewSelection, property="y", start=category.height*2.5, end=0, time=ant, tween=Tween.Circle }));

local players_surface = fe.add_surface ( flw*gbw-flh*ssl-flh*ssr, flh*inh );
players_surface.x = flw-flw*sbw-flw*gbw+flh*ssl;
players_surface.y = category_surface.y+category_surface.height+flh*ins;
function players( index_offset ) {
	local text = fe.game_info(Info.Players,0);
	if (text == "1") return text + " PLAYER";
	else if (text == "")  return "MISSING PLAYERS";
	else return text + " PLAYERS";
}
local players = players_surface.add_text ( "[!players]", 0, 0, flw*gbw-flh*ssl-flh*ssr, flh*inh );
players.charsize = flh*inc;
players.align = Align.Centre;
players.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( players, "BLUE", 2 );
animation.add( PropertyAnimation( players, { when=Transition.ToNewList, property="y", start=players.height*2.5, end=0, time=ant, tween=Tween.Circle }));
animation.add( PropertyAnimation( players, { when=Transition.ToNewSelection, property="y", start=players.height*2.5, end=0, time=ant, tween=Tween.Circle }));


//////////////// SOUNDS
local click = fe.add_sound("");
fe.add_transition_callback( "click" );
function click( ttype, var, ttime ) {
	if ( ttype == Transition.ToNewSelection ) {
		local path = null;
		if (fe.get_input_state("Up") == true) {
			if ( my_config["bg_opt"] == "SCREENSHOT") path = fe.get_art( "snap", -1 , 0 , Art.Default | Art.ImagesOnly );
			else if ( my_config["bg_opt"] == "VIDEO") path = fe.get_art( "snap", -1 , 0 , Art.Default );	
			if ( path != "" ) {
				click.file_name = "assets/beep.wav";
				if ( my_config["selection_sound"] == "YES") click.playing = true;
			}
			else {
				click.file_name = "assets/error.wav";
				if ( my_config["selection_sound"] == "YES") click.playing = true;
			}
		}
		else if (fe.get_input_state("Down") == true) {
			if ( my_config["bg_opt"] == "SCREENSHOT") path = fe.get_art( "snap", 1 , 0 , Art.Default | Art.ImagesOnly );
			else if ( my_config["bg_opt"] == "VIDEO") path = fe.get_art( "snap", 1 , 0 , Art.Default );	
			if ( path != "" ) {
				click.file_name = "assets/beep.wav";
				if ( my_config["selection_sound"] == "YES") click.playing = true;
			}
			else {
				click.file_name = "assets/error.wav";
				if ( my_config["selection_sound"] == "YES") click.playing = true;
			}
		}
	}
}