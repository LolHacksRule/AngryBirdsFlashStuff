package starling.events
{
   import §-A§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   import §null §.§%!G§;
   import §null §.Sprite;
   
   class §5!&§ extends Sprite
   {
      
      private static var §"4§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §-T§:Point;
      
      private var §9q§:Texture;
      
      function §5!&§(param1:Context3D)
      {
         var _loc3_:§%!G§ = null;
         super();
         this.§-T§ = new Point();
         this.§9q§ = Texture.§>!>§(param1,new §"4§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §%!G§(this.§9q§);
            _loc3_.pivotX = this.§9q§.width / 2;
            _loc3_.pivotY = this.§9q§.height / 2;
            _loc3_.§[;§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§9q§.dispose();
         super.dispose();
      }
      
      public function §4n§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§-T§.x += param1 - this.§?!$§.x;
            this.§-T§.y += param2 - this.§?!$§.y;
         }
         this.§?!$§.x = param1;
         this.§?!$§.y = param2;
         this.§#!"§.x = 2 * this.§-T§.x - param1;
         this.§#!"§.y = 2 * this.§-T§.y - param2;
      }
      
      public function §'§(param1:Number, param2:Number) : void
      {
         this.§-T§.x = param1;
         this.§-T§.y = param2;
         this.§4n§(this.§3!;§,this.§8!P§);
      }
      
      private function get §?!$§() : §%!G§
      {
         return getChildAt(0) as §%!G§;
      }
      
      private function get §#!"§() : §%!G§
      {
         return getChildAt(1) as §%!G§;
      }
      
      public function get §3!;§() : Number
      {
         return this.§?!$§.x;
      }
      
      public function get §8!P§() : Number
      {
         return this.§?!$§.y;
      }
      
      public function get §"E§() : Number
      {
         return this.§#!"§.x;
      }
      
      public function get §!u§() : Number
      {
         return this.§#!"§.y;
      }
   }
}
