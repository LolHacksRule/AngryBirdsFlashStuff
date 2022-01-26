package starling.events
{
   import §_-DQ§.Texture;
   import §_-b5§.Sprite;
   import §_-b5§.§_-Xj§;
   import flash.geom.Point;
   
   class §_-CK§ extends Sprite
   {
      
      private static var §_-uP§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-h6§:Point;
      
      private var §_-Ix§:Texture;
      
      function §_-CK§()
      {
         var _loc2_:§_-Xj§ = null;
         super();
         this.§_-h6§ = new Point();
         this.§_-Ix§ = Texture.§_-NP§(new §_-uP§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-Xj§(this.§_-Ix§);
            _loc2_.pivotX = this.§_-Ix§.width / 2;
            _loc2_.pivotY = this.§_-Ix§.height / 2;
            _loc2_.§_-3V§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-Ix§.dispose();
         super.dispose();
      }
      
      public function §_-bU§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-h6§.x += param1 - this.§_-k§.x;
            this.§_-h6§.y += param2 - this.§_-k§.y;
         }
         this.§_-k§.x = param1;
         this.§_-k§.y = param2;
         this.§_-FE§.x = 2 * this.§_-h6§.x - param1;
         this.§_-FE§.y = 2 * this.§_-h6§.y - param2;
      }
      
      public function §_-Vk§(param1:Number, param2:Number) : void
      {
         this.§_-h6§.x = param1;
         this.§_-h6§.y = param2;
         this.§_-bU§(this.§_-Jz§,this.§_-Ya§);
      }
      
      private function get §_-k§() : §_-Xj§
      {
         return getChildAt(0) as §_-Xj§;
      }
      
      private function get §_-FE§() : §_-Xj§
      {
         return getChildAt(1) as §_-Xj§;
      }
      
      public function get §_-Jz§() : Number
      {
         return this.§_-k§.x;
      }
      
      public function get §_-Ya§() : Number
      {
         return this.§_-k§.y;
      }
      
      public function get §_-Mz§() : Number
      {
         return this.§_-FE§.x;
      }
      
      public function get §_-Rj§() : Number
      {
         return this.§_-FE§.y;
      }
   }
}
