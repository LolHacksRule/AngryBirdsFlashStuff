package starling.events
{
   import §+a§.Texture;
   import §9!a§.§"z§;
   import §9!a§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §>f§ extends Sprite
   {
      
      private static var §;4§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §`_§:Point;
      
      private var §`>§:Texture;
      
      function §>f§(param1:Context3D)
      {
         var _loc3_:§"z§ = null;
         super();
         this.§`_§ = new Point();
         this.§`>§ = Texture.§,N§(param1,new §;4§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §"z§(this.§`>§);
            _loc3_.pivotX = this.§`>§.width / 2;
            _loc3_.pivotY = this.§`>§.height / 2;
            _loc3_.§`!M§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§`>§.dispose();
         super.dispose();
      }
      
      public function §;!$§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§`_§.x += param1 - this.§?R§.x;
            this.§`_§.y += param2 - this.§?R§.y;
         }
         this.§?R§.x = param1;
         this.§?R§.y = param2;
         this.§#!=§.x = 2 * this.§`_§.x - param1;
         this.§#!=§.y = 2 * this.§`_§.y - param2;
      }
      
      public function §#r§(param1:Number, param2:Number) : void
      {
         this.§`_§.x = param1;
         this.§`_§.y = param2;
         this.§;!$§(this.§-o§,this.§1!F§);
      }
      
      private function get §?R§() : §"z§
      {
         return getChildAt(0) as §"z§;
      }
      
      private function get §#!=§() : §"z§
      {
         return getChildAt(1) as §"z§;
      }
      
      public function get §-o§() : Number
      {
         return this.§?R§.x;
      }
      
      public function get §1!F§() : Number
      {
         return this.§?R§.y;
      }
      
      public function get §"W§() : Number
      {
         return this.§#!=§.x;
      }
      
      public function get §!!H§() : Number
      {
         return this.§#!=§.y;
      }
   }
}
