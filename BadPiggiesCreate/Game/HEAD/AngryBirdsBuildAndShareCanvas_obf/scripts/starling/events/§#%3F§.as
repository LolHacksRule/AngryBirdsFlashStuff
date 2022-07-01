package starling.events
{
   import §+!-§.§7"#§;
   import §+!-§.Sprite;
   import §0!%§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#?§ extends Sprite
   {
      
      private static var §^D§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §8!1§:Point;
      
      private var §=#§:Texture;
      
      function §#?§(param1:Context3D)
      {
         var _loc3_:§7"#§ = null;
         super();
         this.§8!1§ = new Point();
         this.§=#§ = Texture.§+o§(param1,new §^D§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §7"#§(this.§=#§);
            _loc3_.pivotX = this.§=#§.width / 2;
            _loc3_.pivotY = this.§=#§.height / 2;
            _loc3_.§#b§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§=#§.dispose();
         super.dispose();
      }
      
      public function §>!f§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§8!1§.x += param1 - this.§2>§.x;
            this.§8!1§.y += param2 - this.§2>§.y;
         }
         this.§2>§.x = param1;
         this.§2>§.y = param2;
         this.§[Z§.x = 2 * this.§8!1§.x - param1;
         this.§[Z§.y = 2 * this.§8!1§.y - param2;
      }
      
      public function §3V§(param1:Number, param2:Number) : void
      {
         this.§8!1§.x = param1;
         this.§8!1§.y = param2;
         this.§>!f§(this.§]V§,this.§%7§);
      }
      
      private function get §2>§() : §7"#§
      {
         return getChildAt(0) as §7"#§;
      }
      
      private function get §[Z§() : §7"#§
      {
         return getChildAt(1) as §7"#§;
      }
      
      public function get §]V§() : Number
      {
         return this.§2>§.x;
      }
      
      public function get §%7§() : Number
      {
         return this.§2>§.y;
      }
      
      public function get §?G§() : Number
      {
         return this.§[Z§.x;
      }
      
      public function get §"R§() : Number
      {
         return this.§[Z§.y;
      }
   }
}
