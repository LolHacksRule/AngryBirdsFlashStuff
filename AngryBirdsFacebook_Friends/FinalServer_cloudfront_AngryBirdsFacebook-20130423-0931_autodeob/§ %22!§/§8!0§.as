package § "!§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §8!0§ extends § ! §
   {
      
      private static const §[!^§:int = 50;
       
      
      private var §5!D§:MovieClip;
      
      public function §8!0§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§5!D§ = new MovieClip();
         addChild(this.§5!D§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§`F§);
         this.§^"&§(§3"A§);
         this.§^^§(§`F§,§[!^§);
         this.§;!I§(§3"A§ as §!"O§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§^"&§(§`F§);
         this.§;!I§(§`F§ as §!"O§);
      }
      
      private function §^"&§(param1:Sprite) : void
      {
         while(this.§5!D§.numChildren > 0)
         {
            this.§5!D§.removeChildAt(0);
         }
         this.§5!D§.scrollRect = new Rectangle(0,0,§[!^§,§[!^§);
         this.§5!D§.addChild(param1);
      }
      
      private function §;!I§(param1:§!"O§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§^^§(param1,§[!^§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§%>§);
         }
      }
      
      private function §%>§(param1:Event) : void
      {
         var _loc2_:§!"O§ = param1.currentTarget as §!"O§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§%>§);
         }
         this.§^^§(_loc2_,§[!^§);
      }
      
      private function §^^§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc5_:int = 0;
         var _loc4_:int = param1.width;
         _loc5_ = param1.height;
         if(param1 is §2w§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §!"O§)
         {
            _loc4_ = (param1 as §!"O§).§#";§;
            _loc5_ = (param1 as §!"O§).§ %§;
            if(_loc4_ < _loc5_)
            {
               _loc3_ = param2 / _loc4_;
               param1.scaleX = _loc3_;
               param1.scaleY = _loc3_;
            }
            else
            {
               _loc3_ = param2 / _loc5_;
               param1.scaleX = _loc3_;
               param1.scaleY = _loc3_;
               param1.x = -(param1.width - param2) / 2;
            }
         }
      }
   }
}
