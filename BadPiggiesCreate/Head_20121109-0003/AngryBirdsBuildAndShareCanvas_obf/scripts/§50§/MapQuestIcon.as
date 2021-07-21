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
         var _loc11_:Boolean = true;
         var _loc12_:Boolean = false;
         var _loc9_:§%!"§ = null;
         if(_loc11_)
         {
            super();
         }
         var _loc6_:MovieClip;
         var _loc5_:Class;
         (_loc6_ = new (_loc5_ = §69§.§ 0§("MapQuestIcon"))()).gotoAndStop(1);
         if(_loc11_ || this)
         {
            addChild(_loc6_);
         }
         loop0:
         while(true)
         {
            this.x = param2;
            while(true)
            {
               this.y = param3;
               loop2:
               for(; _loc11_; while(true)
               {
                  if(_loc11_ || param3)
                  {
                     continue;
                  }
                  continue loop2;
               },§§goto(addr160))
               {
                  while(param4)
                  {
                     if(_loc11_ || param1)
                     {
                        continue loop0;
                     }
                     continue loop2;
                  }
                  this.§2m§ = _loc6_.getChildByName("NameBox") as MovieClip;
                  if(_loc11_ || param1)
                  {
                     this.§2m§.scaleX = this.§2m§.scaleY = this.§2m§.alpha = 0;
                  }
                  var _loc7_:Object = this.§2m§.getChildByName("text");
                  var _loc8_:TextField;
                  (_loc8_ = this.§2m§.getChildByName("text") as TextField).text = param1.name;
                  if(!(_loc12_ && param1))
                  {
                     _loc8_.autoSize = "center";
                     addEventListener(MouseEvent.ROLL_OVER,this.§7!J§);
                     addr228:
                  }
                  addEventListener(MouseEvent.ROLL_OUT,this.§-"3§);
                  if(!_loc12_)
                  {
                     if(_loc12_ && param3)
                     {
                        §§goto(addr228);
                     }
                     return;
                  }
                  addr224:
                  §§goto(addr224);
               }
            }
         }
      }
      
      private function §7!J§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%!"§ = §7I§.§[E§.§ ";§(this.§2m§,{
            "alpha":1,
            "scaleX":1,
            "scaleY":1
         },null,0.2,§7I§.§[!M§);
         if(!(_loc3_ && _loc2_))
         {
            _loc2_.play();
         }
      }
      
      private function §-"3§(param1:MouseEvent) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%!"§ = §7I§.§[E§.§ ";§(this.§2m§,{
            "alpha":0,
            "scaleX":0,
            "scaleY":0
         },null,0.2,§7I§.§[!M§);
         if(!_loc4_)
         {
            _loc2_.play();
         }
      }
      
      public function get position() : Point
      {
         return new Point(x,y);
      }
   }
}
