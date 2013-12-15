package ;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Tilemap;
import haxe.xml.Fast;
import openfl.Assets;
import com.haxepunk.HXP;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;

/**
 * ...
 * @author NateAGeek
 */
class Level_Background extends Entity {

	var BackgroundTiles:Tilemap;
	
	var Player_Ref:Player;
	
	var Map_Width:Int;
	var Map_Height:Int;
	
	public function new(Level_ID:Int) {
		
		super();
		
		LoadBackGround(Level_ID); 
		
		layer = 2;
		
	}
	
	public override function update() {
		
		if (Input.check("left") && !(HXP.camera.x <= 0 || HXP.camera.x == Map_Width - HXP.screen.width) && Player_Ref.getcanMove()) {
			x -= 0.5;
		}else if (Input.check("right") && !(HXP.camera.x <= 0 || HXP.camera.x == Map_Width - HXP.screen.width) && Player_Ref.getcanMove()) {
			x += 0.5;
		}
		
	}
	
	public function LoadBackGround(Level_ID:Int) {
		
		var root = new Fast(Xml.parse(Assets.getText("levels/" + Level_ID + "/level.oel")).firstElement());
		
		var MapWidth = Std.parseInt(root.att.width);
		var MapHeight = Std.parseInt(root.att.height);
		
		BackgroundTiles = new Tilemap(HXP.getBitmap("gfx/World/Tiles.png"), MapWidth, MapHeight, 32, 32);
		
		var BackgroundTilesXML = root.node.Background;
		
		for (Tiles in BackgroundTilesXML.elements) {
			BackgroundTiles.setTile(Std.int(Std.parseInt(Tiles.att.x)), Std.int(Std.parseInt(Tiles.att.y)), Std.parseInt(Tiles.att.id));
		}
		
		graphic = BackgroundTiles;
		
	}
	
	public function Set_PlayerRef(Player_Pointer:Player) {
		Player_Ref = Player_Pointer;
	}
	
	public function Set_Map_W_H(W:Int, H:Int) {
		Map_Width = W;
		Map_Height = H;
	}
	
}