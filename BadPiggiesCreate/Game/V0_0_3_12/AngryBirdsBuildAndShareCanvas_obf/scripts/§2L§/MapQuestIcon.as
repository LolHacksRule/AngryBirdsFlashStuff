package §2L§
{
   import §0Z§.§-!M§;
   import §0Z§.§9"5§;
   import com.rovio.assets.§!"'§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class MapQuestIcon extends Sprite
   {
       
      
      private var §3!v§:MovieClip;
      
      public function MapQuestIcon(param1:Object, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc9_:§9"5§ = null;
         super();
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = §!"'§.§%!Q§("MapQuestIcon"))()).gotoAndStop(1);
         addChild(_loc6_);
         this.x = param2;
         this.y = param3;
         if(param4)
         {
            scaleX = 0;
            scaleY = 0;
            (_loc9_ = §-!M§.§ "!§.§+d§(this,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0.2,
               "scaleY":0.2
            },0.5,§-!M§.§#b§)).play();
         }
         this.§3!v§ = _loc6_.getChildByName("NameBox") as MovieClip;
         this.§3!v§.scaleX = this.§3!v§.scaleY = this.§3!v§.alpha = 0;
         var _loc7_:Object = this.§3!v§.getChildByName("text");
         var _loc8_:TextField;
         (_loc8_ = this.§3!v§.getChildByName("text") as TextField).text = param1.name;
         _loc8_.autoSize = "center";
         addEventListener(MouseEvent.ROLL_OVER,this.§?!q§);
         addEventListener(MouseEvent.ROLL_OUT,this.§2=§);
      }
      
      private function §?!q§(param1:MouseEvent) : void
      {
         var _loc2_:§9"5§ = §-!M§.§ "!§.§+d§(this.§3!v§,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },null,0.2,§-!M§.§#b§);
         _loc2_.play();
      }
      
      private function §2=§(param1:MouseEvent) : void
      {
         var _loc2_:§9"5§ = §-!M§.§ "!§.§+d§(this.§3!v§,{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },null,0.2,§-!M§.§#b§);
         _loc2_.play();
      }
      
      public function get position() : Point
      {
         return new Point(x,y);
      }
   }
}
