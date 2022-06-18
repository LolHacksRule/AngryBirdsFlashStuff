package starling.events
{
   import §5@§.Texture;
   import §;q§.Sprite;
   import §;q§.§[E§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §&&§ extends Sprite
   {
      
      private static var §?U§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §!!F§:Point;
      
      private var §+Z§:Texture;
      
      function §&&§(param1:Context3D)
      {
         var _loc3_:§[E§ = null;
         super();
         this.§!!F§ = new Point();
         this.§+Z§ = Texture.§?=§(param1,new §?U§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §[E§(this.§+Z§);
            _loc3_.pivotX = this.§+Z§.width / 2;
            _loc3_.pivotY = this.§+Z§.height / 2;
            _loc3_.§9$§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§+Z§.dispose();
         super.dispose();
      }
      
      public function §"b§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§!!F§.x += param1 - this.§6D§.x;
            this.§!!F§.y += param2 - this.§6D§.y;
         }
         this.§6D§.x = param1;
         this.§6D§.y = param2;
         this.§[I§.x = 2 * this.§!!F§.x - param1;
         this.§[I§.y = 2 * this.§!!F§.y - param2;
      }
      
      public function §]z§(param1:Number, param2:Number) : void
      {
         this.§!!F§.x = param1;
         this.§!!F§.y = param2;
         this.§"b§(this.§=&§,this.§&;§);
      }
      
      private function get §6D§() : §[E§
      {
         return getChildAt(0) as §[E§;
      }
      
      private function get §[I§() : §[E§
      {
         return getChildAt(1) as §[E§;
      }
      
      public function get §=&§() : Number
      {
         return this.§6D§.x;
      }
      
      public function get §&;§() : Number
      {
         return this.§6D§.y;
      }
      
      public function get §!!#§() : Number
      {
         return this.§[I§.x;
      }
      
      public function get §3!C§() : Number
      {
         return this.§[I§.y;
      }
   }
}
