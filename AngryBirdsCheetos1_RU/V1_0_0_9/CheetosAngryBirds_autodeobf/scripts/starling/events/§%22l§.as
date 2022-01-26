package starling.events
{
   import §#!`§.Texture;
   import §7u§.§&!C§;
   import §7u§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §"l§ extends Sprite
   {
      
      private static var §";§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §0Y§:Point;
      
      private var § 4§:Texture;
      
      function §"l§(param1:Context3D)
      {
         var _loc3_:§&!C§ = null;
         super();
         this.§0Y§ = new Point();
         this.§ 4§ = Texture.§#!%§(param1,new §";§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §&!C§(this.§ 4§);
            _loc3_.pivotX = this.§ 4§.width / 2;
            _loc3_.pivotY = this.§ 4§.height / 2;
            _loc3_.§^!Y§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§ 4§.dispose();
         super.dispose();
      }
      
      public function §"P§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§0Y§.x += param1 - this.§7r§.x;
            this.§0Y§.y += param2 - this.§7r§.y;
         }
         this.§7r§.x = param1;
         this.§7r§.y = param2;
         this.§%B§.x = 2 * this.§0Y§.x - param1;
         this.§%B§.y = 2 * this.§0Y§.y - param2;
      }
      
      public function §&!S§(param1:Number, param2:Number) : void
      {
         this.§0Y§.x = param1;
         this.§0Y§.y = param2;
         this.§"P§(this.§6v§,this.§var §);
      }
      
      private function get §7r§() : §&!C§
      {
         return getChildAt(0) as §&!C§;
      }
      
      private function get §%B§() : §&!C§
      {
         return getChildAt(1) as §&!C§;
      }
      
      public function get §6v§() : Number
      {
         return this.§7r§.x;
      }
      
      public function get §var §() : Number
      {
         return this.§7r§.y;
      }
      
      public function get §[!@§() : Number
      {
         return this.§%B§.x;
      }
      
      public function get §2,§() : Number
      {
         return this.§%B§.y;
      }
   }
}
