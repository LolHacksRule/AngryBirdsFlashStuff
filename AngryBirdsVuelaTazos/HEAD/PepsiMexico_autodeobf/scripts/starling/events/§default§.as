package starling.events
{
   import §_-Q0§.Texture;
   import §_-SE§.Sprite;
   import §_-SE§.§_-rl§;
   import flash.geom.Point;
   
   class §default§ extends Sprite
   {
      
      private static var §_-j4§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-Tt§:Point;
      
      private var §_-C6§:Texture;
      
      function §default§()
      {
         var _loc2_:§_-rl§ = null;
         super();
         this.§_-Tt§ = new Point();
         this.§_-C6§ = Texture.§_-mr§(new §_-j4§());
         var _loc1_:int = 0;
         while(_loc1_ < 2)
         {
            _loc2_ = new §_-rl§(this.§_-C6§);
            _loc2_.pivotX = this.§_-C6§.width / 2;
            _loc2_.pivotY = this.§_-C6§.height / 2;
            _loc2_.§_-54§ = false;
            addChild(_loc2_);
            _loc1_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-C6§.dispose();
         super.dispose();
      }
      
      public function §_-Za§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-Tt§.x += param1 - this.§_-RL§.x;
            this.§_-Tt§.y += param2 - this.§_-RL§.y;
         }
         this.§_-RL§.x = param1;
         this.§_-RL§.y = param2;
         this.§_-BW§.x = 2 * this.§_-Tt§.x - param1;
         this.§_-BW§.y = 2 * this.§_-Tt§.y - param2;
      }
      
      public function §_-PM§(param1:Number, param2:Number) : void
      {
         this.§_-Tt§.x = param1;
         this.§_-Tt§.y = param2;
         this.§_-Za§(this.§_-G0§,this.§_-mf§);
      }
      
      private function get §_-RL§() : §_-rl§
      {
         return getChildAt(0) as §_-rl§;
      }
      
      private function get §_-BW§() : §_-rl§
      {
         return getChildAt(1) as §_-rl§;
      }
      
      public function get §_-G0§() : Number
      {
         return this.§_-RL§.x;
      }
      
      public function get §_-mf§() : Number
      {
         return this.§_-RL§.y;
      }
      
      public function get §_-EY§() : Number
      {
         return this.§_-BW§.x;
      }
      
      public function get §_-GB§() : Number
      {
         return this.§_-BW§.y;
      }
   }
}
