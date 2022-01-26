package starling.events
{
   import §_-Cy§.Texture;
   import §_-UX§.Sprite;
   import §_-UX§.§_-2S§;
   import flash.geom.Point;
   
   class §_-0a§ extends Sprite
   {
      
      private static var §_-UZ§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-qt§:Point;
      
      private var §_-lT§:Texture;
      
      function §_-0a§()
      {
         var _loc2_:§_-2S§ = null;
         super();
         this.§_-qt§ = new Point();
         this.§_-lT§ = Texture.§_-WB§(new §_-UZ§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-2S§(this.§_-lT§);
            _loc2_.pivotX = this.§_-lT§.width / 2;
            _loc2_.pivotY = this.§_-lT§.height / 2;
            _loc2_.§_-SS§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-lT§.dispose();
         super.dispose();
      }
      
      public function §_-UL§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-qt§.x += param1 - this.§_-vn§.x;
            this.§_-qt§.y += param2 - this.§_-vn§.y;
         }
         this.§_-vn§.x = param1;
         this.§_-vn§.y = param2;
         this.§_-35§.x = 2 * this.§_-qt§.x - param1;
         this.§_-35§.y = 2 * this.§_-qt§.y - param2;
      }
      
      public function §return§(param1:Number, param2:Number) : void
      {
         this.§_-qt§.x = param1;
         this.§_-qt§.y = param2;
         this.§_-UL§(this.§_-NS§,this.§_-rM§);
      }
      
      private function get §_-vn§() : §_-2S§
      {
         return getChildAt(0) as §_-2S§;
      }
      
      private function get §_-35§() : §_-2S§
      {
         return getChildAt(1) as §_-2S§;
      }
      
      public function get §_-NS§() : Number
      {
         return this.§_-vn§.x;
      }
      
      public function get §_-rM§() : Number
      {
         return this.§_-vn§.y;
      }
      
      public function get §_-fs§() : Number
      {
         return this.§_-35§.x;
      }
      
      public function get §_-oG§() : Number
      {
         return this.§_-35§.y;
      }
   }
}
