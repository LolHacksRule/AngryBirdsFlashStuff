package starling.events
{
   import §_-4g§.Texture;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import flash.geom.Point;
   
   class §_-Uf§ extends Sprite
   {
      
      private static var §_-vi§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-Oy§:Point;
      
      private var §_-cX§:Texture;
      
      function §_-Uf§()
      {
         var _loc2_:§_-19§ = null;
         super();
         this.§_-Oy§ = new Point();
         this.§_-cX§ = Texture.§_-aY§(new §_-vi§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-19§(this.§_-cX§);
            _loc2_.pivotX = this.§_-cX§.width / 2;
            _loc2_.pivotY = this.§_-cX§.height / 2;
            _loc2_.§_-pE§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-cX§.dispose();
         super.dispose();
      }
      
      public function §_-ee§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-Oy§.x += param1 - this.§_-u4§.x;
            this.§_-Oy§.y += param2 - this.§_-u4§.y;
         }
         this.§_-u4§.x = param1;
         this.§_-u4§.y = param2;
         this.§_-yM§.x = 2 * this.§_-Oy§.x - param1;
         this.§_-yM§.y = 2 * this.§_-Oy§.y - param2;
      }
      
      public function §_-2B§(param1:Number, param2:Number) : void
      {
         this.§_-Oy§.x = param1;
         this.§_-Oy§.y = param2;
         this.§_-ee§(this.§_-dm§,this.§_-Oo§);
      }
      
      private function get §_-u4§() : §_-19§
      {
         return getChildAt(0) as §_-19§;
      }
      
      private function get §_-yM§() : §_-19§
      {
         return getChildAt(1) as §_-19§;
      }
      
      public function get §_-dm§() : Number
      {
         return this.§_-u4§.x;
      }
      
      public function get §_-Oo§() : Number
      {
         return this.§_-u4§.y;
      }
      
      public function get §_-15§() : Number
      {
         return this.§_-yM§.x;
      }
      
      public function get §_-AU§() : Number
      {
         return this.§_-yM§.y;
      }
   }
}
