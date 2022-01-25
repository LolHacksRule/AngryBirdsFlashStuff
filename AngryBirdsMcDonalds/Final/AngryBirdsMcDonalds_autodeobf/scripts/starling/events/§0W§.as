package starling.events
{
   import §&!9§.Texture;
   import §0@§.§1]§;
   import §0@§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §0W§ extends Sprite
   {
      
      private static var §-§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §7!h§:Point;
      
      private var §#d§:Texture;
      
      function §0W§(param1:Context3D)
      {
         var _loc3_:§1]§ = null;
         super();
         this.§7!h§ = new Point();
         this.§#d§ = Texture.§5^§(param1,new §-§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §1]§(this.§#d§);
            _loc3_.pivotX = this.§#d§.width / 2;
            _loc3_.pivotY = this.§#d§.height / 2;
            _loc3_.§;Y§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§#d§.dispose();
         super.dispose();
      }
      
      public function §6&§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§7!h§.x += param1 - this.§?!e§.x;
            this.§7!h§.y += param2 - this.§?!e§.y;
         }
         this.§?!e§.x = param1;
         this.§?!e§.y = param2;
         this.§%x§.x = 2 * this.§7!h§.x - param1;
         this.§%x§.y = 2 * this.§7!h§.y - param2;
      }
      
      public function §3Z§(param1:Number, param2:Number) : void
      {
         this.§7!h§.x = param1;
         this.§7!h§.y = param2;
         this.§6&§(this.§@6§,this.§`Z§);
      }
      
      private function get §?!e§() : §1]§
      {
         return getChildAt(0) as §1]§;
      }
      
      private function get §%x§() : §1]§
      {
         return getChildAt(1) as §1]§;
      }
      
      public function get §@6§() : Number
      {
         return this.§?!e§.x;
      }
      
      public function get §`Z§() : Number
      {
         return this.§?!e§.y;
      }
      
      public function get §^!"§() : Number
      {
         return this.§%x§.x;
      }
      
      public function get §>! §() : Number
      {
         return this.§%x§.y;
      }
   }
}
