package nme;


import openfl.Assets;


class AssetData {

	
	public static var className = new #if haxe3 Map <String, #else Hash <#end Dynamic> ();
	public static var library = new #if haxe3 Map <String, #else Hash <#end LibraryType> ();
	public static var type = new #if haxe3 Map <String, #else Hash <#end AssetType> ();
	
	private static var initialized:Bool = false;
	
	
	public static function initialize ():Void {
		
		if (!initialized) {
			
			className.set ("gfx/debug/console_debug.png", nme.NME_gfx_debug_console_debug_png);
			type.set ("gfx/debug/console_debug.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/debug/console_logo.png", nme.NME_gfx_debug_console_logo_png);
			type.set ("gfx/debug/console_logo.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/debug/console_output.png", nme.NME_gfx_debug_console_output_png);
			type.set ("gfx/debug/console_output.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/debug/console_pause.png", nme.NME_gfx_debug_console_pause_png);
			type.set ("gfx/debug/console_pause.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/debug/console_play.png", nme.NME_gfx_debug_console_play_png);
			type.set ("gfx/debug/console_play.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/debug/console_step.png", nme.NME_gfx_debug_console_step_png);
			type.set ("gfx/debug/console_step.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/Entities/Player.png", nme.NME_gfx_entities_player_png);
			type.set ("gfx/Entities/Player.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("gfx/World/Tiles.png", nme.NME_gfx_world_tiles_png);
			type.set ("gfx/World/Tiles.png", Reflect.field (AssetType, "image".toUpperCase ()));
			className.set ("font/04B_03__.ttf", nme.NME_font_04b_03___ttf);
			type.set ("font/04B_03__.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
			className.set ("levels/0/level.oel", nme.NME_levels_0_level_oel);
			type.set ("levels/0/level.oel", Reflect.field (AssetType, "text".toUpperCase ()));
			
			
			initialized = true;
			
		}
		
	}
	
	
}


class NME_gfx_debug_console_debug_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_debug_console_logo_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_debug_console_output_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_debug_console_pause_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_debug_console_play_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_debug_console_step_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_entities_player_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_gfx_world_tiles_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class NME_font_04b_03___ttf extends flash.text.Font { }
class NME_levels_0_level_oel extends flash.utils.ByteArray { }
