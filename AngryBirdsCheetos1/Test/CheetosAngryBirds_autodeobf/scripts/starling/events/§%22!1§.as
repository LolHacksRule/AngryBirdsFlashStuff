package starling.events
{
   import §]!a§.Texture;
   import §^a§.§6p§;
   import §^a§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §"!1§ extends Sprite
   {
      
      private static var §!U§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var § C§:Point;
      
      private var §7Y§:Texture;
      
      function §"!1§(param1:Context3D)
      {
         var _loc3_:§6p§ = null;
         super();
         this.§ C§ = new Point();
         this.§7Y§ = Texture.§?!`§(param1,new §!U§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §6p§(this.§7Y§);
            _loc3_.pivotX = this.§7Y§.width / 2;
            _loc3_.pivotY = this.§7Y§.height / 2;
            _loc3_.§;o§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§7Y§.dispose();
         super.dispose();
      }
      
      public function §^!5§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§ C§.x += param1 - this.§,9§.x;
            this.§ C§.y += param2 - this.§,9§.y;
         }
         this.§,9§.x = param1;
         this.§,9§.y = param2;
         this.§!s§.x = 2 * this.§ C§.x - param1;
         this.§!s§.y = 2 * this.§ C§.y - param2;
      }
      
      public function §&!Z§(param1:Number, param2:Number) : void
      {
         this.§ C§.x = param1;
         this.§ C§.y = param2;
         this.§^!5§(this.§%s§,this.§1F§);
      }
      
      private function get §,9§() : §6p§
      {
         return getChildAt(0) as §6p§;
      }
      
      private function get §!s§() : §6p§
      {
         return getChildAt(1) as §6p§;
      }
      
      public function get §%s§() : Number
      {
         return this.§,9§.x;
      }
      
      public function get §1F§() : Number
      {
         return this.§,9§.y;
      }
      
      public function get §+=§() : Number
      {
         return this.§!s§.x;
      }
      
      public function get §4!J§() : Number
      {
         return this.§!s§.y;
      }
   }
}
