package starling.events
{
   import §5!@§.Texture;
   import §9W§.§6!0§;
   import §9W§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §;`§ extends Sprite
   {
      
      private static var §^M§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §,c§:Point;
      
      private var §7#§:Texture;
      
      function §;`§(param1:Context3D)
      {
         var _loc3_:§6!0§ = null;
         super();
         this.§,c§ = new Point();
         this.§7#§ = Texture.§?g§(param1,new §^M§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §6!0§(this.§7#§);
            _loc3_.pivotX = this.§7#§.width / 2;
            _loc3_.pivotY = this.§7#§.height / 2;
            _loc3_.§=O§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§7#§.dispose();
         super.dispose();
      }
      
      public function §2!A§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§,c§.x += param1 - this.§-p§.x;
            this.§,c§.y += param2 - this.§-p§.y;
         }
         this.§-p§.x = param1;
         this.§-p§.y = param2;
         this.§=!H§.x = 2 * this.§,c§.x - param1;
         this.§=!H§.y = 2 * this.§,c§.y - param2;
      }
      
      public function §@o§(param1:Number, param2:Number) : void
      {
         this.§,c§.x = param1;
         this.§,c§.y = param2;
         this.§2!A§(this.§-N§,this.§`k§);
      }
      
      private function get §-p§() : §6!0§
      {
         return getChildAt(0) as §6!0§;
      }
      
      private function get §=!H§() : §6!0§
      {
         return getChildAt(1) as §6!0§;
      }
      
      public function get §-N§() : Number
      {
         return this.§-p§.x;
      }
      
      public function get §`k§() : Number
      {
         return this.§-p§.y;
      }
      
      public function get §8!%§() : Number
      {
         return this.§=!H§.x;
      }
      
      public function get §@#§() : Number
      {
         return this.§=!H§.y;
      }
   }
}
