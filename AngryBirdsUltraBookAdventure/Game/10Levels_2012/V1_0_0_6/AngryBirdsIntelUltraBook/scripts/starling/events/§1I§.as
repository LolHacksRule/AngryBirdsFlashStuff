package starling.events
{
   import §4>§.Texture;
   import §7!B§.§-§;
   import §7!B§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §1I§ extends Sprite
   {
      
      private static var §=!<§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §"!2§:Point;
      
      private var §5!6§:Texture;
      
      function §1I§(param1:Context3D)
      {
         var _loc3_:§-§ = null;
         super();
         this.§"!2§ = new Point();
         this.§5!6§ = Texture.§ l§(param1,new §=!<§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §-§(this.§5!6§);
            _loc3_.pivotX = this.§5!6§.width / 2;
            _loc3_.pivotY = this.§5!6§.height / 2;
            _loc3_.§]!F§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§5!6§.dispose();
         super.dispose();
      }
      
      public function §#!+§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§"!2§.x += param1 - this.§8!"§.x;
            this.§"!2§.y += param2 - this.§8!"§.y;
         }
         this.§8!"§.x = param1;
         this.§8!"§.y = param2;
         this.§&!-§.x = 2 * this.§"!2§.x - param1;
         this.§&!-§.y = 2 * this.§"!2§.y - param2;
      }
      
      public function §'!6§(param1:Number, param2:Number) : void
      {
         this.§"!2§.x = param1;
         this.§"!2§.y = param2;
         this.§#!+§(this.§%!X§,this.§-$§);
      }
      
      private function get §8!"§() : §-§
      {
         return getChildAt(0) as §-§;
      }
      
      private function get §&!-§() : §-§
      {
         return getChildAt(1) as §-§;
      }
      
      public function get §%!X§() : Number
      {
         return this.§8!"§.x;
      }
      
      public function get §-$§() : Number
      {
         return this.§8!"§.y;
      }
      
      public function get §-!;§() : Number
      {
         return this.§&!-§.x;
      }
      
      public function get §8!i§() : Number
      {
         return this.§&!-§.y;
      }
   }
}
