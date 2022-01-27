package starling.events
{
   import §86§.§?5§;
   import §86§.Sprite;
   import §[!A§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §,a§ extends Sprite
   {
      
      private static var §-a§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §^N§:Point;
      
      private var §+r§:Texture;
      
      function §,a§(param1:Context3D)
      {
         var _loc3_:§?5§ = null;
         super();
         this.§^N§ = new Point();
         this.§+r§ = Texture.§#K§(param1,new §-a§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §?5§(this.§+r§);
            _loc3_.pivotX = this.§+r§.width / 2;
            _loc3_.pivotY = this.§+r§.height / 2;
            _loc3_.§+k§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§+r§.dispose();
         super.dispose();
      }
      
      public function §3z§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§^N§.x += param1 - this.§[!N§.x;
            this.§^N§.y += param2 - this.§[!N§.y;
         }
         this.§[!N§.x = param1;
         this.§[!N§.y = param2;
         this.§ A§.x = 2 * this.§^N§.x - param1;
         this.§ A§.y = 2 * this.§^N§.y - param2;
      }
      
      public function §-b§(param1:Number, param2:Number) : void
      {
         this.§^N§.x = param1;
         this.§^N§.y = param2;
         this.§3z§(this.§!!I§,this.§;!A§);
      }
      
      private function get §[!N§() : §?5§
      {
         return getChildAt(0) as §?5§;
      }
      
      private function get § A§() : §?5§
      {
         return getChildAt(1) as §?5§;
      }
      
      public function get §!!I§() : Number
      {
         return this.§[!N§.x;
      }
      
      public function get §;!A§() : Number
      {
         return this.§[!N§.y;
      }
      
      public function get §8A§() : Number
      {
         return this.§ A§.x;
      }
      
      public function get §9?§() : Number
      {
         return this.§ A§.y;
      }
   }
}
