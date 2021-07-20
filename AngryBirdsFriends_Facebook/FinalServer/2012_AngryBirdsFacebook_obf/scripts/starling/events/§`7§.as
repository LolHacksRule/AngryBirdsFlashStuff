package starling.events
{
   import §?7§.Texture;
   import §]!v§.§'!=§;
   import §]!v§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §`7§ extends Sprite
   {
      
      private static var §9![§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §4b§:Point;
      
      private var §&P§:Texture;
      
      function §`7§(param1:Context3D)
      {
         var _loc3_:§'!=§ = null;
         super();
         this.§4b§ = new Point();
         this.§&P§ = Texture.§^!I§(param1,new §9![§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §'!=§(this.§&P§);
            _loc3_.pivotX = this.§&P§.width / 2;
            _loc3_.pivotY = this.§&P§.height / 2;
            _loc3_.§5! § = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§&P§.dispose();
         super.dispose();
      }
      
      public function §+#§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§4b§.x += param1 - this.§'!9§.x;
            this.§4b§.y += param2 - this.§'!9§.y;
         }
         this.§'!9§.x = param1;
         this.§'!9§.y = param2;
         this.§]!_§.x = 2 * this.§4b§.x - param1;
         this.§]!_§.y = 2 * this.§4b§.y - param2;
      }
      
      public function §7r§(param1:Number, param2:Number) : void
      {
         this.§4b§.x = param1;
         this.§4b§.y = param2;
         this.§+#§(this.§@!3§,this.§;L§);
      }
      
      private function get §'!9§() : §'!=§
      {
         return getChildAt(0) as §'!=§;
      }
      
      private function get §]!_§() : §'!=§
      {
         return getChildAt(1) as §'!=§;
      }
      
      public function get §@!3§() : Number
      {
         return this.§'!9§.x;
      }
      
      public function get §;L§() : Number
      {
         return this.§'!9§.y;
      }
      
      public function get §["5§() : Number
      {
         return this.§]!_§.x;
      }
      
      public function get §0r§() : Number
      {
         return this.§]!_§.y;
      }
   }
}
