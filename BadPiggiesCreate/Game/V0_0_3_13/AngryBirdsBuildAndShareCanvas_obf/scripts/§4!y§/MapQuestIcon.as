package §4!y§
{
   import §catch§.§!M§;
   import §catch§.§"L§;
   import com.rovio.assets.§=#§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class MapQuestIcon extends Sprite
   {
       
      
      private var §[!Y§:MovieClip;
      
      public function MapQuestIcon(param1:Object, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc9_:§!M§ = null;
         super();
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = §=#§.§1v§("MapQuestIcon"))()).gotoAndStop(1);
         addChild(_loc6_);
         this.x = param2;
         this.y = param3;
         if(param4)
         {
            scaleX = 0;
            scaleY = 0;
            (_loc9_ = §"L§.§7!?§.§4!P§(this,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0.2,
               "scaleY":0.2
            },0.5,§"L§.§`!"§)).play();
         }
         this.§[!Y§ = _loc6_.getChildByName("NameBox") as MovieClip;
         this.§[!Y§.scaleX = this.§[!Y§.scaleY = this.§[!Y§.alpha = 0;
         var _loc7_:Object = this.§[!Y§.getChildByName("text");
         var _loc8_:TextField;
         (_loc8_ = this.§[!Y§.getChildByName("text") as TextField).text = param1.name;
         _loc8_.autoSize = "center";
         addEventListener(MouseEvent.ROLL_OVER,this.§3!x§);
         addEventListener(MouseEvent.ROLL_OUT,this.§"T§);
      }
      
      private function §3!x§(param1:MouseEvent) : void
      {
         var _loc2_:§!M§ = §"L§.§7!?§.§4!P§(this.§[!Y§,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },null,0.2,§"L§.§`!"§);
         _loc2_.play();
      }
      
      private function §"T§(param1:MouseEvent) : void
      {
         var _loc2_:§!M§ = §"L§.§7!?§.§4!P§(this.§[!Y§,{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },null,0.2,§"L§.§`!"§);
         _loc2_.play();
      }
      
      public function get position() : Point
      {
         return new Point(x,y);
      }
   }
}
