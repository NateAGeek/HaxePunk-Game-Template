package ;

import com.haxepunk.HXP;

/**
 * ...
 * @author NateAGeek
 */
class Camera
{
	
	var MapWidth:Int;
	var MapHeight:Int;
	
	public function new (Map_Width:Int, Map_Height:Int, Spotlight_X:Float, Spotlight_Y:Float, Spotlight_Width:Int, Spotlight_Height:Int) {
		
		MapWidth = Map_Width;
		MapHeight = Map_Height;
		
		var camX:Int = Std.int((Spotlight_X + Spotlight_Width / 2) - HXP.width / 2);
		var camY:Int = Std.int((Spotlight_Y + Spotlight_Height / 2) - HXP.height / 2);
		
		if (camX < 0) camX = 0;
		else if (camX + HXP.width > Map_Width) camX = Map_Width - HXP.width;
		
		if (camY < 0) camY = 0;
		else if (camY + HXP.height > Map_Height) camX = Map_Height - HXP.height;
		
		HXP.camera.x = camX;
		HXP.camera.y = camY;
		
	}
	
	public function update(Spotlight_X:Float, Spotlight_Y:Float, Spotlight_Width:Int, Spotlight_Height:Int) {
		
		HXP.camera.x = Std.int((Spotlight_X + Spotlight_Width / 2) - HXP.width / 2);
		HXP.camera.y = Std.int((Spotlight_Y + Spotlight_Height / 2) - HXP.height / 2);
		
		if (HXP.camera.x < 0) {
			HXP.camera.x = 0;
		}
		else if (HXP.camera.x > MapWidth - HXP.screen.width) {
			HXP.camera.x = MapWidth - HXP.screen.width;
		}

		if (HXP.camera.y < 0) {
			HXP.camera.y = 0;
		}
		else if (HXP.camera.y > MapHeight - HXP.screen.height) {
			HXP.camera.y = MapHeight - HXP.screen.height;
		}
		
	}
	
}