package §,B§
{
   import §&"'§.§7!E§;
   import §&"'§.§@5§;
   import com.rovio.assets.§>!]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class MapQuestIcon extends Sprite
   {
       
      
      private var §6!k§:MovieClip;
      
      public function MapQuestIcon(param1:Object, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc9_:§@5§ = null;
         super();
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = §>!]§.§1!8§("MapQuestIcon"))()).gotoAndStop(1);
         addChild(_loc6_);
         this.x = param2;
         this.y = param3;
         if(param4)
         {
            scaleX = 0;
            scaleY = 0;
            (_loc9_ = §7!E§.§2=§.§<!C§(this,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0.2,
               "scaleY":0.2
            },0.5,§7!E§.§throw§)).play();
         }
         this.§6!k§ = _loc6_.getChildByName("NameBox") as MovieClip;
         this.§6!k§.scaleX = this.§6!k§.scaleY = this.§6!k§.alpha = 0;
         var _loc7_:Object = this.§6!k§.getChildByName("text");
         var _loc8_:TextField;
         (_loc8_ = this.§6!k§.getChildByName("text") as TextField).text = param1.name;
         _loc8_.autoSize = "center";
         addEventListener(MouseEvent.ROLL_OVER,this.§8!M§);
         addEventListener(MouseEvent.ROLL_OUT,this.§&y§);
      }
      
      private function §8!M§(param1:MouseEvent) : void
      {
         var _loc2_:§@5§ = §7!E§.§2=§.§<!C§(this.§6!k§,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },null,0.2,§7!E§.§throw§);
         _loc2_.play();
      }
      
      private function §&y§(param1:MouseEvent) : void
      {
         var _loc2_:§@5§ = §7!E§.§2=§.§<!C§(this.§6!k§,{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },null,0.2,§7!E§.§throw§);
         _loc2_.play();
      }
      
      public function get position() : Point
      {
         return new Point(x,y);
      }
   }
}
