package §50§
{
   import §'V§.§%!"§;
   import §'V§.§7I§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class MapQuestIcon extends Sprite
   {
       
      
      private var §2m§:MovieClip;
      
      public function MapQuestIcon(param1:Object, param2:int, param3:int, param4:Boolean = false)
      {
         var _loc9_:§%!"§ = null;
         super();
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = §69§.§ 0§("MapQuestIcon"))()).gotoAndStop(1);
         addChild(_loc6_);
         this.x = param2;
         this.y = param3;
         if(param4)
         {
            scaleX = 0;
            scaleY = 0;
            (_loc9_ = §7I§.§[E§.§ ";§(this,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0.2,
               "scaleY":0.2
            },0.5,§7I§.§[!M§)).play();
         }
         this.§2m§ = _loc6_.getChildByName("NameBox") as MovieClip;
         this.§2m§.scaleX = this.§2m§.scaleY = this.§2m§.alpha = 0;
         var _loc7_:Object = this.§2m§.getChildByName("text");
         var _loc8_:TextField;
         (_loc8_ = this.§2m§.getChildByName("text") as TextField).text = param1.name;
         _loc8_.autoSize = "center";
         addEventListener(MouseEvent.ROLL_OVER,this.§7!J§);
         addEventListener(MouseEvent.ROLL_OUT,this.§-"3§);
      }
      
      private function §7!J§(param1:MouseEvent) : void
      {
         var _loc2_:§%!"§ = §7I§.§[E§.§ ";§(this.§2m§,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },null,0.2,§7I§.§[!M§);
         _loc2_.play();
      }
      
      private function §-"3§(param1:MouseEvent) : void
      {
         var _loc2_:§%!"§ = §7I§.§[E§.§ ";§(this.§2m§,{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },null,0.2,§7I§.§[!M§);
         _loc2_.play();
      }
      
      public function get position() : Point
      {
         return new Point(x,y);
      }
   }
}
