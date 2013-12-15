package ;
import com.haxepunk.Entity;
import com.haxepunk.graphics.Tilemap;
import haxe.xml.Fast;
import openfl.Assets;
import com.haxepunk.HXP;

/**
 * ...
 * @author NateAGeek
 */
class Level_Middleground extends Entity {

	var MiddlegroundTiles:Tilemap;
	
	public function new(Level_ID:Int) {
		
		super();
		
		LoadMiddleGround(Level_ID);
		
		layer = 1;
		
	}
	
	public override function update() {
		
		
	}
	
	public function LoadMiddleGround(Level_ID:Int) {
		
		var root = new Fast(Xml.parse(Assets.getText("levels/" + Level_ID + "/level.oel")).firstElement());
		
		var MapWidth = Std.parseInt(root.att.width);
		var MapHeight = Std.parseInt(root.att.height);
		
		MiddlegroundTiles = new Tilemap(HXP.getBitmap("gfx/World/Tiles.png"), MapWidth, MapHeight, 32, 32);
		
		var MiddlegroundTilesXML = root.node.Middleground;
		
		for (Tiles in MiddlegroundTilesXML.elements) {
			MiddlegroundTiles.setTile(Std.int(Std.parseInt(Tiles.att.x)), Std.int(Std.parseInt(Tiles.att.y)), Std.parseInt(Tiles.att.id));
		}
		
		graphic = MiddlegroundTiles;
	}
	
}