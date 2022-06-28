package §_-hX§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §_-yo§ extends §_-pI§
   {
      
      private static const §_-Wv§:int = 50;
       
      
      private var §_-X1§:MovieClip;
      
      public function §_-yo§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         this.§_-X1§ = new MovieClip();
         addChild(this.§_-X1§);
         super(param1,param2,param3,param4);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         super.createAvatar(param1,param2,param3,param4,true);
         addChild(§_-2A§);
         this.§_-0-0§(§_-gM§);
         this.§_-0C8§(§_-2A§,§_-Wv§);
         this.§_-k7§(§_-gM§ as §_-bT§);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         super.createFacebookProfile(param1,param2,true);
         this.§_-0-0§(§_-2A§);
         this.§_-k7§(§_-2A§ as §_-bT§);
      }
      
      private function §_-0-0§(param1:Sprite) : void
      {
         while(this.§_-X1§.numChildren > 0)
         {
            this.§_-X1§.removeChildAt(0);
         }
         this.§_-X1§.scrollRect = new Rectangle(0,0,§_-Wv§,§_-Wv§);
         this.§_-X1§.addChild(param1);
      }
      
      private function §_-k7§(param1:§_-bT§) : void
      {
         if(param1.width > 0 && param1.height > 0)
         {
            this.§_-0C8§(param1,§_-Wv§);
         }
         else
         {
            param1.addEventListener(Event.COMPLETE,this.§_-8M§);
         }
      }
      
      private function §_-8M§(param1:Event) : void
      {
         var _loc2_:§_-bT§ = param1.currentTarget as §_-bT§;
         if(_loc2_)
         {
            _loc2_.removeEventListener(Event.COMPLETE,this.§_-8M§);
         }
         this.§_-0C8§(_loc2_,§_-Wv§);
      }
      
      private function §_-0C8§(param1:Sprite, param2:Number) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(param1 is §_-WC§)
         {
            param2 *= 1.4;
            param1.x = -5;
            param1.y = -5;
            _loc3_ = param2 / _loc5_;
            param1.scaleX = _loc3_;
            param1.scaleY = _loc3_;
         }
         if(param1 is §_-bT§)
         {
            _loc4_ = (param1 as §_-bT§).§_-09q§;
            _loc5_ = (param1 as §_-bT§).§_-cD§;
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
