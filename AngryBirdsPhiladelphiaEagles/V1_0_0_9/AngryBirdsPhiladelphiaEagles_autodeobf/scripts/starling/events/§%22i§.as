package starling.events
{
   import §,]§.Texture;
   import §-!'§.§3!1§;
   import §-!'§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §"i§ extends Sprite
   {
      
      private static var §'m§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §!U§:Point;
      
      private var §7R§:Texture;
      
      function §"i§(param1:Context3D)
      {
         var _loc3_:§3!1§ = null;
         super();
         this.§!U§ = new Point();
         this.§7R§ = Texture.§]!B§(param1,new §'m§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §3!1§(this.§7R§);
            _loc3_.pivotX = this.§7R§.width / 2;
            _loc3_.pivotY = this.§7R§.height / 2;
            _loc3_.§=!5§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§7R§.dispose();
         super.dispose();
      }
      
      public function §4g§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§!U§.x += param1 - this.§9C§.x;
            this.§!U§.y += param2 - this.§9C§.y;
         }
         this.§9C§.x = param1;
         this.§9C§.y = param2;
         this.§<!G§.x = 2 * this.§!U§.x - param1;
         this.§<!G§.y = 2 * this.§!U§.y - param2;
      }
      
      public function §3!@§(param1:Number, param2:Number) : void
      {
         this.§!U§.x = param1;
         this.§!U§.y = param2;
         this.§4g§(this.§"!N§,this.§6!6§);
      }
      
      private function get §9C§() : §3!1§
      {
         return getChildAt(0) as §3!1§;
      }
      
      private function get §<!G§() : §3!1§
      {
         return getChildAt(1) as §3!1§;
      }
      
      public function get §"!N§() : Number
      {
         return this.§9C§.x;
      }
      
      public function get §6!6§() : Number
      {
         return this.§9C§.y;
      }
      
      public function get §;]§() : Number
      {
         return this.§<!G§.x;
      }
      
      public function get §`F§() : Number
      {
         return this.§<!G§.y;
      }
   }
}
