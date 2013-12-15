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
class Level_Foreground extends Entity {

	var ForegroundTiles:Tilemap;
	
	public function new(Level_ID:Int) {
		
		super();
		
		LoadForeGround(Level_ID);
		
		layer = 0;
		
	}
	
	public override function update() {
		
		
		
	}
	
	public function LoadForeGround(Level_ID:Int) {
		
		var root = new Fast(Xml.parse(Assets.getText("levels/" + Level_ID + "/level.oel")).firstElement());
		
		var MapWidth = Std.parseInt(root.att.width);
		var MapHeight = Std.parseInt(root.att.height);
		
		ForegroundTiles = new Tilemap(HXP.getBitmap("gfx/World/Tiles.png"), MapWidth, MapHeight, 32, 32);
		
		var ForegroundTilesXML = root.node.Foreground;
		
		for (Tiles in ForegroundTilesXML.elements) {
			ForegroundTiles.setTile(Std.int(Std.parseInt(Tiles.att.x)), Std.int(Std.parseInt(Tiles.att.y)), Std.parseInt(Tiles.att.id));
		}
		
		graphic = ForegroundTiles;
		
	}
	
}