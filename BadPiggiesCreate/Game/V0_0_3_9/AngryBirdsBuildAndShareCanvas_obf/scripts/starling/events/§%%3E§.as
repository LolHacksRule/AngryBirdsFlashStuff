package starling.events
{
   import §7q§.§0!§;
   import §7q§.Sprite;
   import §8Y§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §%>§ extends Sprite
   {
      
      private static var §;!6§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §="-§:Point;
      
      private var §!E§:Texture;
      
      function §%>§(param1:Context3D)
      {
         var _loc3_:§0!§ = null;
         super();
         this.§="-§ = new Point();
         this.§!E§ = Texture.§0"+§(param1,new §;!6§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §0!§(this.§!E§);
            _loc3_.pivotX = this.§!E§.width / 2;
            _loc3_.pivotY = this.§!E§.height / 2;
            _loc3_.§7!&§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!E§.dispose();
         super.dispose();
      }
      
      public function §2D§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§="-§.x += param1 - this.§%!Q§.x;
            this.§="-§.y += param2 - this.§%!Q§.y;
         }
         this.§%!Q§.x = param1;
         this.§%!Q§.y = param2;
         this.§+W§.x = 2 * this.§="-§.x - param1;
         this.§+W§.y = 2 * this.§="-§.y - param2;
      }
      
      public function §]!§(param1:Number, param2:Number) : void
      {
         this.§="-§.x = param1;
         this.§="-§.y = param2;
         this.§2D§(this.§7A§,this.§@!S§);
      }
      
      private function get §%!Q§() : §0!§
      {
         return getChildAt(0) as §0!§;
      }
      
      private function get §+W§() : §0!§
      {
         return getChildAt(1) as §0!§;
      }
      
      public function get §7A§() : Number
      {
         return this.§%!Q§.x;
      }
      
      public function get §@!S§() : Number
      {
         return this.§%!Q§.y;
      }
      
      public function get §-Q§() : Number
      {
         return this.§+W§.x;
      }
      
      public function get §`!r§() : Number
      {
         return this.§+W§.y;
      }
   }
}
