package starling.events
{
   import §-!f§.§-!,§;
   import §-!f§.Sprite;
   import §7"+§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §[!w§ extends Sprite
   {
      
      private static var §1Q§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §?!e§:Point;
      
      private var §4r§:Texture;
      
      function §[!w§(param1:Context3D)
      {
         var _loc3_:§-!,§ = null;
         super();
         this.§?!e§ = new Point();
         this.§4r§ = Texture.§"h§(param1,new §1Q§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §-!,§(this.§4r§);
            _loc3_.pivotX = this.§4r§.width / 2;
            _loc3_.pivotY = this.§4r§.height / 2;
            _loc3_.§`;§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§4r§.dispose();
         super.dispose();
      }
      
      public function §>!L§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§?!e§.x += param1 - this.§+8§.x;
            this.§?!e§.y += param2 - this.§+8§.y;
         }
         this.§+8§.x = param1;
         this.§+8§.y = param2;
         this.§#q§.x = 2 * this.§?!e§.x - param1;
         this.§#q§.y = 2 * this.§?!e§.y - param2;
      }
      
      public function §7! §(param1:Number, param2:Number) : void
      {
         this.§?!e§.x = param1;
         this.§?!e§.y = param2;
         this.§>!L§(this.§>?§,this.§ K§);
      }
      
      private function get §+8§() : §-!,§
      {
         return getChildAt(0) as §-!,§;
      }
      
      private function get §#q§() : §-!,§
      {
         return getChildAt(1) as §-!,§;
      }
      
      public function get §>?§() : Number
      {
         return this.§+8§.x;
      }
      
      public function get § K§() : Number
      {
         return this.§+8§.y;
      }
      
      public function get §2n§() : Number
      {
         return this.§#q§.x;
      }
      
      public function get §21§() : Number
      {
         return this.§#q§.y;
      }
   }
}
