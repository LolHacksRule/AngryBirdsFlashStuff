package starling.events
{
   import §_-Dk§.Texture;
   import §_-Ls§.Sprite;
   import §_-Ls§.§_-Nd§;
   import flash.geom.Point;
   
   class §_-zW§ extends Sprite
   {
      
      private static var §_-TN§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-NW§:Point;
      
      private var §_-AF§:Texture;
      
      function §_-zW§()
      {
         var _loc2_:§_-Nd§ = null;
         super();
         this.§_-NW§ = new Point();
         this.§_-AF§ = Texture.§_-p9§(new §_-TN§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-Nd§(this.§_-AF§);
            _loc2_.pivotX = this.§_-AF§.width / 2;
            _loc2_.pivotY = this.§_-AF§.height / 2;
            _loc2_.§_-K2§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-AF§.dispose();
         super.dispose();
      }
      
      public function §_-rB§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-NW§.x += param1 - this.§_-3e§.x;
            this.§_-NW§.y += param2 - this.§_-3e§.y;
         }
         this.§_-3e§.x = param1;
         this.§_-3e§.y = param2;
         this.§_-3c§.x = 2 * this.§_-NW§.x - param1;
         this.§_-3c§.y = 2 * this.§_-NW§.y - param2;
      }
      
      public function §_-ed§(param1:Number, param2:Number) : void
      {
         this.§_-NW§.x = param1;
         this.§_-NW§.y = param2;
         this.§_-rB§(this.§_-xq§,this.§_-rz§);
      }
      
      private function get §_-3e§() : §_-Nd§
      {
         return getChildAt(0) as §_-Nd§;
      }
      
      private function get §_-3c§() : §_-Nd§
      {
         return getChildAt(1) as §_-Nd§;
      }
      
      public function get §_-xq§() : Number
      {
         return this.§_-3e§.x;
      }
      
      public function get §_-rz§() : Number
      {
         return this.§_-3e§.y;
      }
      
      public function get §_-dW§() : Number
      {
         return this.§_-3c§.x;
      }
      
      public function get §_-mz§() : Number
      {
         return this.§_-3c§.y;
      }
   }
}
