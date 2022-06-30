package starling.events
{
   import §2Y§.§7!f§;
   import §2Y§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!R§ extends Sprite
   {
      
      private static var §?!,§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §[!H§:Point;
      
      private var §-y§:Texture;
      
      function §?!R§(param1:Context3D)
      {
         var _loc3_:§7!f§ = null;
         super();
         this.§[!H§ = new Point();
         this.§-y§ = Texture.§"r§(param1,new §?!,§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §7!f§(this.§-y§);
            _loc3_.pivotX = this.§-y§.width / 2;
            _loc3_.pivotY = this.§-y§.height / 2;
            _loc3_.§0!3§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§-y§.dispose();
         super.dispose();
      }
      
      public function §case§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§[!H§.x += param1 - this.§15§.x;
            this.§[!H§.y += param2 - this.§15§.y;
         }
         this.§15§.x = param1;
         this.§15§.y = param2;
         this.§4!L§.x = 2 * this.§[!H§.x - param1;
         this.§4!L§.y = 2 * this.§[!H§.y - param2;
      }
      
      public function §`!§(param1:Number, param2:Number) : void
      {
         this.§[!H§.x = param1;
         this.§[!H§.y = param2;
         this.§case§(this.§[!&§,this.§5o§);
      }
      
      private function get §15§() : §7!f§
      {
         return getChildAt(0) as §7!f§;
      }
      
      private function get §4!L§() : §7!f§
      {
         return getChildAt(1) as §7!f§;
      }
      
      public function get §[!&§() : Number
      {
         return this.§15§.x;
      }
      
      public function get §5o§() : Number
      {
         return this.§15§.y;
      }
      
      public function get §6P§() : Number
      {
         return this.§4!L§.x;
      }
      
      public function get §<I§() : Number
      {
         return this.§4!L§.y;
      }
   }
}
