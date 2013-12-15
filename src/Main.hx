package ;

import com.haxepunk.Engine;
import com.haxepunk.HXP;

/**
 * ...
 * @author NateAGeek
 */

class Main extends Engine 
{

	public static inline var ScreenWidth:Int = 640;
	public static inline var ScreenHeight:Int = 480;
	public static inline var FrameRate:Int = 60;
	public static inline var ClearColor:Int = 0x333333;
	public static inline var ProjectName:String = "GameTitle";

	function new()
	{
		super(ScreenWidth, ScreenHeight, FrameRate, false);	
	}

	override public function init()
	{
#if debug
	#if flash
		if (flash.system.Capabilities.isDebugger)
	#end
		{
			HXP.console.enable();
		}
#end
		HXP.screen.color = ClearColor;
		HXP.screen.scale = 1;
		HXP.scene = new Game();
	}

	public static function main()
	{
		var app = new Main();
	}
}