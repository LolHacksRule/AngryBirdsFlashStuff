package starling.events
{
   import §_-GY§.Sprite;
   import §_-GY§.§_-4W§;
   import §_-yp§.Texture;
   import flash.geom.Point;
   
   class §_-Yt§ extends Sprite
   {
      
      private static var §_-VN§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-jD§:Point;
      
      private var §_-eE§:Texture;
      
      function §_-Yt§()
      {
         var _loc2_:§_-4W§ = null;
         super();
         this.§_-jD§ = new Point();
         this.§_-eE§ = Texture.§_-E6§(new §_-VN§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-4W§(this.§_-eE§);
            _loc2_.pivotX = this.§_-eE§.width / 2;
            _loc2_.pivotY = this.§_-eE§.height / 2;
            _loc2_.§_-6q§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-eE§.dispose();
         super.dispose();
      }
      
      public function §_-Ln§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-jD§.x += param1 - this.§_-wa§.x;
            this.§_-jD§.y += param2 - this.§_-wa§.y;
         }
         this.§_-wa§.x = param1;
         this.§_-wa§.y = param2;
         this.§_-g5§.x = 2 * this.§_-jD§.x - param1;
         this.§_-g5§.y = 2 * this.§_-jD§.y - param2;
      }
      
      public function §_-Bu§(param1:Number, param2:Number) : void
      {
         this.§_-jD§.x = param1;
         this.§_-jD§.y = param2;
         this.§_-Ln§(this.§_-9J§,this.§_-f5§);
      }
      
      private function get §_-wa§() : §_-4W§
      {
         return getChildAt(0) as §_-4W§;
      }
      
      private function get §_-g5§() : §_-4W§
      {
         return getChildAt(1) as §_-4W§;
      }
      
      public function get §_-9J§() : Number
      {
         return this.§_-wa§.x;
      }
      
      public function get §_-f5§() : Number
      {
         return this.§_-wa§.y;
      }
      
      public function get §_-XA§() : Number
      {
         return this.§_-g5§.x;
      }
      
      public function get §_-n2§() : Number
      {
         return this.§_-g5§.y;
      }
   }
}
