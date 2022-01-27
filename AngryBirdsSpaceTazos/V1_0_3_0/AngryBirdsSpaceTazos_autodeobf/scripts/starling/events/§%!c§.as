package starling.events
{
   import §'@§.Texture;
   import §4"@§.§?!0§;
   import §4"@§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §%!c§ extends Sprite
   {
      
      private static var §="%§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §3!F§:Point;
      
      private var §^!N§:Texture;
      
      function §%!c§(param1:Context3D)
      {
         var _loc3_:§?!0§ = null;
         super();
         this.§3!F§ = new Point();
         this.§^!N§ = Texture.§^"#§(param1,new §="%§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §?!0§(this.§^!N§);
            _loc3_.pivotX = this.§^!N§.width / 2;
            _loc3_.pivotY = this.§^!N§.height / 2;
            _loc3_.§#,§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§^!N§.dispose();
         super.dispose();
      }
      
      public function §4?§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§3!F§.x += param1 - this.§6"8§.x;
            this.§3!F§.y += param2 - this.§6"8§.y;
         }
         this.§6"8§.x = param1;
         this.§6"8§.y = param2;
         this.§==§.x = 2 * this.§3!F§.x - param1;
         this.§==§.y = 2 * this.§3!F§.y - param2;
      }
      
      public function §%!R§(param1:Number, param2:Number) : void
      {
         this.§3!F§.x = param1;
         this.§3!F§.y = param2;
         this.§4?§(this.§0!#§,this.§^"-§);
      }
      
      private function get §6"8§() : §?!0§
      {
         return getChildAt(0) as §?!0§;
      }
      
      private function get §==§() : §?!0§
      {
         return getChildAt(1) as §?!0§;
      }
      
      public function get §0!#§() : Number
      {
         return this.§6"8§.x;
      }
      
      public function get §^"-§() : Number
      {
         return this.§6"8§.y;
      }
      
      public function get §9F§() : Number
      {
         return this.§==§.x;
      }
      
      public function get §=q§() : Number
      {
         return this.§==§.y;
      }
   }
}
