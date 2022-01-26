package starling.events
{
   import §_-S4§.Texture;
   import §_-pF§.Sprite;
   import §_-pF§.§_-gY§;
   import flash.geom.Point;
   
   class §_-X9§ extends Sprite
   {
      
      private static var §_-DH§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-fw§:Point;
      
      private var §_-sb§:Texture;
      
      function §_-X9§()
      {
         var _loc2_:§_-gY§ = null;
         super();
         this.§_-fw§ = new Point();
         this.§_-sb§ = Texture.§_-DL§(new §_-DH§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-gY§(this.§_-sb§);
            _loc2_.pivotX = this.§_-sb§.width / 2;
            _loc2_.pivotY = this.§_-sb§.height / 2;
            _loc2_.§_-7e§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-sb§.dispose();
         super.dispose();
      }
      
      public function §_-Z3§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-fw§.x += param1 - this.§_-Oy§.x;
            this.§_-fw§.y += param2 - this.§_-Oy§.y;
         }
         this.§_-Oy§.x = param1;
         this.§_-Oy§.y = param2;
         this.§_-PQ§.x = 2 * this.§_-fw§.x - param1;
         this.§_-PQ§.y = 2 * this.§_-fw§.y - param2;
      }
      
      public function §_-iJ§(param1:Number, param2:Number) : void
      {
         this.§_-fw§.x = param1;
         this.§_-fw§.y = param2;
         this.§_-Z3§(this.§_-PX§,this.§_-MN§);
      }
      
      private function get §_-Oy§() : §_-gY§
      {
         return getChildAt(0) as §_-gY§;
      }
      
      private function get §_-PQ§() : §_-gY§
      {
         return getChildAt(1) as §_-gY§;
      }
      
      public function get §_-PX§() : Number
      {
         return this.§_-Oy§.x;
      }
      
      public function get §_-MN§() : Number
      {
         return this.§_-Oy§.y;
      }
      
      public function get §_-pR§() : Number
      {
         return this.§_-PQ§.x;
      }
      
      public function get §_-cS§() : Number
      {
         return this.§_-PQ§.y;
      }
   }
}
