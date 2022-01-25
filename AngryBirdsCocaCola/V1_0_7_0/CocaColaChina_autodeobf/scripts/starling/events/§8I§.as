package starling.events
{
   import §+!S§.Texture;
   import §,!Q§.§%^§;
   import §,!Q§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §8I§ extends Sprite
   {
      
      private static var §&j§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §"n§:Point;
      
      private var §3!"§:Texture;
      
      function §8I§(param1:Context3D)
      {
         var _loc3_:§%^§ = null;
         super();
         this.§"n§ = new Point();
         this.§3!"§ = Texture.§5+§(param1,new §&j§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §%^§(this.§3!"§);
            _loc3_.pivotX = this.§3!"§.width / 2;
            _loc3_.pivotY = this.§3!"§.height / 2;
            _loc3_.§8!Q§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3!"§.dispose();
         super.dispose();
      }
      
      public function §3! §(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§"n§.x += param1 - this.§;!U§.x;
            this.§"n§.y += param2 - this.§;!U§.y;
         }
         this.§;!U§.x = param1;
         this.§;!U§.y = param2;
         this.§#>§.x = 2 * this.§"n§.x - param1;
         this.§#>§.y = 2 * this.§"n§.y - param2;
      }
      
      public function §+n§(param1:Number, param2:Number) : void
      {
         this.§"n§.x = param1;
         this.§"n§.y = param2;
         this.§3! §(this.§]!!§,this.§`3§);
      }
      
      private function get §;!U§() : §%^§
      {
         return getChildAt(0) as §%^§;
      }
      
      private function get §#>§() : §%^§
      {
         return getChildAt(1) as §%^§;
      }
      
      public function get §]!!§() : Number
      {
         return this.§;!U§.x;
      }
      
      public function get §`3§() : Number
      {
         return this.§;!U§.y;
      }
      
      public function get §@Z§() : Number
      {
         return this.§#>§.x;
      }
      
      public function get §88§() : Number
      {
         return this.§#>§.y;
      }
   }
}
