package starling.events
{
   import §_-jY§.Texture;
   import §_-se§.Sprite;
   import §_-se§.§_-N§;
   import flash.geom.Point;
   
   class §_-W0§ extends Sprite
   {
      
      private static var §_-7E§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-Gr§:Point;
      
      private var §_-OI§:Texture;
      
      function §_-W0§()
      {
         var _loc2_:§_-N§ = null;
         super();
         this.§_-Gr§ = new Point();
         this.§_-OI§ = Texture.§_-ob§(new §_-7E§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-N§(this.§_-OI§);
            _loc2_.pivotX = this.§_-OI§.width / 2;
            _loc2_.pivotY = this.§_-OI§.height / 2;
            _loc2_.§_-kU§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-OI§.dispose();
         super.dispose();
      }
      
      public function §_-po§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-Gr§.x += param1 - this.§_-U4§.x;
            this.§_-Gr§.y += param2 - this.§_-U4§.y;
         }
         this.§_-U4§.x = param1;
         this.§_-U4§.y = param2;
         this.§_-If§.x = 2 * this.§_-Gr§.x - param1;
         this.§_-If§.y = 2 * this.§_-Gr§.y - param2;
      }
      
      public function §_-RU§(param1:Number, param2:Number) : void
      {
         this.§_-Gr§.x = param1;
         this.§_-Gr§.y = param2;
         this.§_-po§(this.§_-RO§,this.§_-Ry§);
      }
      
      private function get §_-U4§() : §_-N§
      {
         return getChildAt(0) as §_-N§;
      }
      
      private function get §_-If§() : §_-N§
      {
         return getChildAt(1) as §_-N§;
      }
      
      public function get §_-RO§() : Number
      {
         return this.§_-U4§.x;
      }
      
      public function get §_-Ry§() : Number
      {
         return this.§_-U4§.y;
      }
      
      public function get §_-0n§() : Number
      {
         return this.§_-If§.x;
      }
      
      public function get §_-T2§() : Number
      {
         return this.§_-If§.y;
      }
   }
}
