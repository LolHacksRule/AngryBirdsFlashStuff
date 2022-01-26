package starling.events
{
   import §_-i9§.Texture;
   import §case §.Sprite;
   import §case §.§_-G3§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §_-w8§ extends Sprite
   {
      
      private static var §_-y0§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-0-z§:Point;
      
      private var §_-Mg§:Texture;
      
      function §_-w8§(param1:Context3D)
      {
         var _loc3_:§_-G3§ = null;
         super();
         this.§_-0-z§ = new Point();
         this.§_-Mg§ = Texture.§_-6I§(param1,new §_-y0§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §_-G3§(this.§_-Mg§);
            _loc3_.pivotX = this.§_-Mg§.width / 2;
            _loc3_.pivotY = this.§_-Mg§.height / 2;
            _loc3_.§_-IX§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-Mg§.dispose();
         super.dispose();
      }
      
      public function §_-i1§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-0-z§.x += param1 - this.§_-so§.x;
            this.§_-0-z§.y += param2 - this.§_-so§.y;
         }
         this.§_-so§.x = param1;
         this.§_-so§.y = param2;
         this.§_-Ou§.x = 2 * this.§_-0-z§.x - param1;
         this.§_-Ou§.y = 2 * this.§_-0-z§.y - param2;
      }
      
      public function §_-HQ§(param1:Number, param2:Number) : void
      {
         this.§_-0-z§.x = param1;
         this.§_-0-z§.y = param2;
         this.§_-i1§(this.§_-kA§,this.§_-2h§);
      }
      
      private function get §_-so§() : §_-G3§
      {
         return getChildAt(0) as §_-G3§;
      }
      
      private function get §_-Ou§() : §_-G3§
      {
         return getChildAt(1) as §_-G3§;
      }
      
      public function get §_-kA§() : Number
      {
         return this.§_-so§.x;
      }
      
      public function get §_-2h§() : Number
      {
         return this.§_-so§.y;
      }
      
      public function get §_-N7§() : Number
      {
         return this.§_-Ou§.x;
      }
      
      public function get §_-D4§() : Number
      {
         return this.§_-Ou§.y;
      }
   }
}
