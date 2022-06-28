package starling.events
{
   import §%-§.§%!,§;
   import §%-§.Sprite;
   import §?!"§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §-!#§ extends Sprite
   {
      
      private static var §3$§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §='§:Point;
      
      private var §9X§:Texture;
      
      function §-!#§(param1:Context3D)
      {
         var _loc3_:§%!,§ = null;
         super();
         this.§='§ = new Point();
         this.§9X§ = Texture.§48§(param1,new §3$§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §%!,§(this.§9X§);
            _loc3_.pivotX = this.§9X§.width / 2;
            _loc3_.pivotY = this.§9X§.height / 2;
            _loc3_.§4!5§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§9X§.dispose();
         super.dispose();
      }
      
      public function §'l§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§='§.x += param1 - this.§[n§.x;
            this.§='§.y += param2 - this.§[n§.y;
         }
         this.§[n§.x = param1;
         this.§[n§.y = param2;
         this.§'!%§.x = 2 * this.§='§.x - param1;
         this.§'!%§.y = 2 * this.§='§.y - param2;
      }
      
      public function §08§(param1:Number, param2:Number) : void
      {
         this.§='§.x = param1;
         this.§='§.y = param2;
         this.§'l§(this.§47§,this.§7I§);
      }
      
      private function get §[n§() : §%!,§
      {
         return getChildAt(0) as §%!,§;
      }
      
      private function get §'!%§() : §%!,§
      {
         return getChildAt(1) as §%!,§;
      }
      
      public function get §47§() : Number
      {
         return this.§[n§.x;
      }
      
      public function get §7I§() : Number
      {
         return this.§[n§.y;
      }
      
      public function get §>>§() : Number
      {
         return this.§'!%§.x;
      }
      
      public function get §1!;§() : Number
      {
         return this.§'!%§.y;
      }
   }
}
