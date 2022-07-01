package starling.events
{
   import §1!Y§.§8C§;
   import §1!Y§.Sprite;
   import §^i§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?Z§ extends Sprite
   {
      
      private static var §+!1§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §7!-§:Point;
      
      private var §2S§:Texture;
      
      function §?Z§(param1:Context3D)
      {
         var _loc3_:§8C§ = null;
         super();
         this.§7!-§ = new Point();
         this.§2S§ = Texture.§9!m§(param1,new §+!1§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §8C§(this.§2S§);
            _loc3_.pivotX = this.§2S§.width / 2;
            _loc3_.pivotY = this.§2S§.height / 2;
            _loc3_.§,!J§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§2S§.dispose();
         super.dispose();
      }
      
      public function §1d§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§7!-§.x += param1 - this.§1Q§.x;
            this.§7!-§.y += param2 - this.§1Q§.y;
         }
         this.§1Q§.x = param1;
         this.§1Q§.y = param2;
         this.§!"!§.x = 2 * this.§7!-§.x - param1;
         this.§!"!§.y = 2 * this.§7!-§.y - param2;
      }
      
      public function §8r§(param1:Number, param2:Number) : void
      {
         this.§7!-§.x = param1;
         this.§7!-§.y = param2;
         this.§1d§(this.§+6§,this.§'!w§);
      }
      
      private function get §1Q§() : §8C§
      {
         return getChildAt(0) as §8C§;
      }
      
      private function get §!"!§() : §8C§
      {
         return getChildAt(1) as §8C§;
      }
      
      public function get §+6§() : Number
      {
         return this.§1Q§.x;
      }
      
      public function get §'!w§() : Number
      {
         return this.§1Q§.y;
      }
      
      public function get §6f§() : Number
      {
         return this.§!"!§.x;
      }
      
      public function get §61§() : Number
      {
         return this.§!"!§.y;
      }
   }
}
