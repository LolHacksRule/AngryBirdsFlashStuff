package starling.events
{
   import §_-Q2§.Texture;
   import §_-vO§.Sprite;
   import §_-vO§.§_-OW§;
   import flash.geom.Point;
   
   class §_-BO§ extends Sprite
   {
      
      private static var §_-Yn§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-Bs§:Point;
      
      private var §_-QH§:Texture;
      
      function §_-BO§()
      {
         var _loc2_:§_-OW§ = null;
         super();
         this.§_-Bs§ = new Point();
         this.§_-QH§ = Texture.§_-FU§(new §_-Yn§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-OW§(this.§_-QH§);
            _loc2_.pivotX = this.§_-QH§.width / 2;
            _loc2_.pivotY = this.§_-QH§.height / 2;
            _loc2_.§_-wV§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-QH§.dispose();
         super.dispose();
      }
      
      public function §_-gh§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-Bs§.x += param1 - this.§_-6N§.x;
            this.§_-Bs§.y += param2 - this.§_-6N§.y;
         }
         this.§_-6N§.x = param1;
         this.§_-6N§.y = param2;
         this.§_-WK§.x = 2 * this.§_-Bs§.x - param1;
         this.§_-WK§.y = 2 * this.§_-Bs§.y - param2;
      }
      
      public function §_-0X§(param1:Number, param2:Number) : void
      {
         this.§_-Bs§.x = param1;
         this.§_-Bs§.y = param2;
         this.§_-gh§(this.§_-fh§,this.§_-gn§);
      }
      
      private function get §_-6N§() : §_-OW§
      {
         return getChildAt(0) as §_-OW§;
      }
      
      private function get §_-WK§() : §_-OW§
      {
         return getChildAt(1) as §_-OW§;
      }
      
      public function get §_-fh§() : Number
      {
         return this.§_-6N§.x;
      }
      
      public function get §_-gn§() : Number
      {
         return this.§_-6N§.y;
      }
      
      public function get §_-hl§() : Number
      {
         return this.§_-WK§.x;
      }
      
      public function get §_-I9§() : Number
      {
         return this.§_-WK§.y;
      }
   }
}
