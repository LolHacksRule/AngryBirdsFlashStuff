package starling.events
{
   import §,_§.§4K§;
   import §,_§.Sprite;
   import §7!=§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §<^§ extends Sprite
   {
      
      private static var §=O§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §9t§:Point;
      
      private var §[#§:Texture;
      
      function §<^§(param1:Context3D)
      {
         var _loc3_:§4K§ = null;
         super();
         this.§9t§ = new Point();
         this.§[#§ = Texture.§,c§(param1,new §=O§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §4K§(this.§[#§);
            _loc3_.pivotX = this.§[#§.width / 2;
            _loc3_.pivotY = this.§[#§.height / 2;
            _loc3_.§!!%§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§[#§.dispose();
         super.dispose();
      }
      
      public function §^"§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§9t§.x += param1 - this.§7!9§.x;
            this.§9t§.y += param2 - this.§7!9§.y;
         }
         this.§7!9§.x = param1;
         this.§7!9§.y = param2;
         this.§4!9§.x = 2 * this.§9t§.x - param1;
         this.§4!9§.y = 2 * this.§9t§.y - param2;
      }
      
      public function §2n§(param1:Number, param2:Number) : void
      {
         this.§9t§.x = param1;
         this.§9t§.y = param2;
         this.§^"§(this.§[!5§,this.§=! §);
      }
      
      private function get §7!9§() : §4K§
      {
         return getChildAt(0) as §4K§;
      }
      
      private function get §4!9§() : §4K§
      {
         return getChildAt(1) as §4K§;
      }
      
      public function get §[!5§() : Number
      {
         return this.§7!9§.x;
      }
      
      public function get §=! §() : Number
      {
         return this.§7!9§.y;
      }
      
      public function get §-!?§() : Number
      {
         return this.§4!9§.x;
      }
      
      public function get §!M§() : Number
      {
         return this.§4!9§.y;
      }
   }
}
