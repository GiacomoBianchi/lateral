// Giacomo Bianchi 30/10/2018
//
// this class changes artwork color
// example of usage:
// colors( artwork_name, "orange", 0 );
// 0 = set_rgb		1 = set_sel_rgb		2 = set_bg_rgb		3 = set_selbg_rgb


class colors {

	art = null;
	col = null;
	mod = null;

	constructor( artname, color, mode )
	{
		art = artname;
		col = color.tolower();
		mod = mode;
		
		local R = null;
		local G = null;
		local B = null;

		switch ( col ) {
			case "black":			R=0;	G=0;	B=0;		break;
			case "white":			R=255;	G=255;	B=255;		break;
			
			case "grey 25%":		R=191;	G=191;	B=191;		break;
			case "grey 50%":		R=128;	G=128;	B=128;		break;
			case "grey 75%":		R=64;	G=64;	B=64;		break;
			
			case "grey 10%":		R=225;	G=225;	B=225;		break;
			case "grey 20%":		R=200;	G=200;	B=200;		break;
			case "grey 30%":		R=175;	G=175;	B=175;		break;
			case "grey 40%":		R=150;	G=150;	B=150;		break;
			case "grey 50%":		R=125;	G=125;	B=125;		break;
			case "grey 60%":		R=100;	G=100;	B=100;		break;
			case "grey 70%":		R=75;	G=75;	B=75;		break;
			case "grey 80%":		R=50;	G=50;	B=50;		break;
			case "grey 90%":		R=25;	G=25;	B=25;		break;
			case "grey 95%":		R=13;	G=13;	B=13;		break;
			
			// Johannes Itten
			case "yellow":			R=255;	G=255;	B=0;		break;
			case "yellow orange":	R=255;	G=204;	B=0;		break;
			case "orange":			R=255;	G=153;	B=0;		break;
			case "red orange":		R=255;	G=102;	B=0;		break;
			case "red":				R=255;	G=0;	B=0;		break;
			case "red violet":		R=221;	G=0;	B=131;		break;
			case "violet":			R=138;	G=0;	B=209;		break;
			case "blue violet":		R=34;	G=0;	B=209;		break;
			case "blue":			R=34;	G=0;	B=209;		break;
			case "blue green":		R=0;	G=159;	B=209;		break;
			case "green":			R=0;	G=153;	B=0;		break;
			case "yellow green":	R=177;	G=235;	B=0;		break;
			
			// other colors
			case "lemon":			R=253;	G=233;	B=16;		break;
			case "banana":			R=255;	G=225;	B=53;		break;
			case "amber":			R=255;	G=191;	B=0;		break;
			case "mango":			R=253;	G=213;	B=28;		break;
			case "tangerine":		R=255;	G=204;	B=0;		break;
			case "pear":			R=209;	G=226;	B=49;		break;
			case "apple":			R=102;	G=180;	B=71;		break;
			case "lime zest":		R=50;	G=205;	B=50;		break;
			case "wasabi":			R=212;	G=238;	B=94;		break;
			case "emerald":			R=80;	G=200;	B=120;		break;
			case "jade":			R=0;	G=168;	B=107;		break;
			case "cucumber":		R=63;	G=100;	B=94;		break;
			case "dos":				R=56;	G=248;	B=48;		break;
			case "terminal":		R=74;	G=246;	B=38;		break;
			case "grapefruit":		R=255;	G=174;	B=159;		break;
			case "apricot":			R=235;	G=176;	B=117;		break;
			case "mahogany":		R=192;	G=64;	B=0;		break;
			case "sapphire":		R=15;	G=82;	B=186;		break;
			case "cobalt":			R=0;	G=71;	B=171;		break;
			case "denim":			R=21;	G=96;	B=189;		break;
			case "amethyst":		R=136;	G=77;	B=167;		break;
			case "very light blue":	R=188;	G=219;	B=255;		break;
			case "light blue":		R=0;	G=102;	B=255;		break;
			case "medium blue":		R=43;	G=33;	B=113;		break;
			case "dark blue":		R=34;	G=22;	B=87;		break;
			case "blackberry":		R=13;	G=3;	B=68;		break;
			case "bordeaux":		R=95;	G=2;	B=31;		break;
			case "eggplant":		R=200;	G=37;	B=54;		break;
			case "raspberry":		R=227;	G=11;	B=92;		break;
			case "ruby":			R=200;	G=37;	B=54;		break;
			case "salmon":			R=255;	G=140;	B=105;		break;
			case "plum":			R=85;	G=21;	B=86;		break;
			case "aubergine":		R=153;	G=17;	B=153;		break;
			case "fuchsia":			R=244;	G=0;	B=161;		break;
			case "magenta":			R=255;	G=0;	B=255;		break;
			case "raphael":			R=227;	G=51;	B=28;		break;
			case "michelangelo":	R=234;	G=149;	B=0;		break;
			case "leonardo":		R=0;	G=170;	B=230;		break;
			case "donatello":		R=153;	G=90;	B=160;		break;
			case "tmnt":			R=76;	G=156;	B=35;		break;
			case "richard petty":	R=21;	G=176;	B=240;		break;
			case "ferrari":			R=255;	G=40;	B=0;		break;
		}
		
		switch ( mod ) {
			case 0:	art.set_rgb( R, G, B ); break;
			case 1:	art.set_sel_rgb( R, G, B ); break;
			case 2:	art.set_bg_rgb( R, G, B ); break;
			case 3:	art.set_selbg_rgb( R, G, B ); break;
		}
	}
}