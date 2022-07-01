package starling.events
{
   import §&!;§.Texture;
   import §-![§.§3!i§;
   import §-![§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §3k§ extends Sprite
   {
      
      private static var §-!A§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §6",§:Point;
      
      private var §0!0§:Texture;
      
      function §3k§(param1:Context3D)
      {
         var _loc3_:§3!i§ = null;
         super();
         this.§6",§ = new Point();
         this.§0!0§ = Texture.§]!^§(param1,new §-!A§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §3!i§(this.§0!0§);
            _loc3_.pivotX = this.§0!0§.width / 2;
            _loc3_.pivotY = this.§0!0§.height / 2;
            _loc3_.§%!<§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§0!0§.dispose();
         super.dispose();
      }
      
      public function §^!p§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§6",§.x += param1 - this.§8y§.x;
            this.§6",§.y += param2 - this.§8y§.y;
         }
         this.§8y§.x = param1;
         this.§8y§.y = param2;
         this.§>!C§.x = 2 * this.§6",§.x - param1;
         this.§>!C§.y = 2 * this.§6",§.y - param2;
      }
      
      public function §'-§(param1:Number, param2:Number) : void
      {
         this.§6",§.x = param1;
         this.§6",§.y = param2;
         this.§^!p§(this.§[!@§,this.§[",§);
      }
      
      private function get §8y§() : §3!i§
      {
         return getChildAt(0) as §3!i§;
      }
      
      private function get §>!C§() : §3!i§
      {
         return getChildAt(1) as §3!i§;
      }
      
      public function get §[!@§() : Number
      {
         return this.§8y§.x;
      }
      
      public function get §[",§() : Number
      {
         return this.§8y§.y;
      }
      
      public function get §8!R§() : Number
      {
         return this.§>!C§.x;
      }
      
      public function get §7!+§() : Number
      {
         return this.§>!C§.y;
      }
   }
}
