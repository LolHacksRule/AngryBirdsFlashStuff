package §%t§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §4!&§ extends §9!7§
   {
      
      private static const §1$§:int = 50;
       
      
      private var §?!4§:MovieClip;
      
      public function §4!&§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§?!4§ = new MovieClip();
         addChild(this.§?!4§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§2-§);
         this.§[y§(§`'§);
         this.§%!U§(§2-§,§1$§);
         this.§]!U§(§`'§ as §?!a§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§[y§(§2-§);
         this.§]!U§(§2-§ as §?!a§);
      }
      
      private function §[y§(param1:Sprite) : void
      {
         while(this.§?!4§.numChildren > 0)
         {
            this.§?!4§.removeChildAt(0);
         }
         this.§?!4§.scrollRect = new Rectangle(0,0,§1$§,§1$§);
         this.§?!4§.addChild(param1);
      }
      
      private function §]!U§(param1:§?!a§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§%!U§(param1,§1$§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§=!a§);
         }
      }
      
      private function §=!a§(param1:Event) : void
      {
         var _loc2_:§?!a§ = param1.currentTarget as §?!a§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§=!a§);
         }
         this.§%!U§(_loc2_,§1$§);
      }
      
      private function §%!U§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §1§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §?!a§)
         {
            _loc4_ = (param1 as §?!a§).§'!+§;
            _loc5_ = (param1 as §?!a§).§?x§;
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
