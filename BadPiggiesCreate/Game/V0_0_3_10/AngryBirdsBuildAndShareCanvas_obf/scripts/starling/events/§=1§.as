package starling.events
{
   import §4!S§.Texture;
   import §^I§.§=!+§;
   import §^I§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §=1§ extends Sprite
   {
      
      private static var §'!§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §1!U§:Point;
      
      private var §,!>§:Texture;
      
      function §=1§(param1:Context3D)
      {
         var _loc3_:§=!+§ = null;
         super();
         this.§1!U§ = new Point();
         this.§,!>§ = Texture.§%!J§(param1,new §'!§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §=!+§(this.§,!>§);
            _loc3_.pivotX = this.§,!>§.width / 2;
            _loc3_.pivotY = this.§,!>§.height / 2;
            _loc3_.§<"!§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§,!>§.dispose();
         super.dispose();
      }
      
      public function §8!c§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§1!U§.x += param1 - this.§&!x§.x;
            this.§1!U§.y += param2 - this.§&!x§.y;
         }
         this.§&!x§.x = param1;
         this.§&!x§.y = param2;
         this.§ !1§.x = 2 * this.§1!U§.x - param1;
         this.§ !1§.y = 2 * this.§1!U§.y - param2;
      }
      
      public function § "+§(param1:Number, param2:Number) : void
      {
         this.§1!U§.x = param1;
         this.§1!U§.y = param2;
         this.§8!c§(this.§?!l§,this.§1S§);
      }
      
      private function get §&!x§() : §=!+§
      {
         return getChildAt(0) as §=!+§;
      }
      
      private function get § !1§() : §=!+§
      {
         return getChildAt(1) as §=!+§;
      }
      
      public function get §?!l§() : Number
      {
         return this.§&!x§.x;
      }
      
      public function get §1S§() : Number
      {
         return this.§&!x§.y;
      }
      
      public function get §4g§() : Number
      {
         return this.§ !1§.x;
      }
      
      public function get §9i§() : Number
      {
         return this.§ !1§.y;
      }
   }
}
