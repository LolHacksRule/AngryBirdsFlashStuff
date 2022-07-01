package starling.events
{
   import §6s§.Texture;
   import §`!B§.§ l§;
   import §`!B§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §^"%§ extends Sprite
   {
      
      private static var §=!c§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §[!t§:Point;
      
      private var §^V§:Texture;
      
      function §^"%§(param1:Context3D)
      {
         var _loc3_:§ l§ = null;
         super();
         this.§[!t§ = new Point();
         this.§^V§ = Texture.§"!I§(param1,new §=!c§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new § l§(this.§^V§);
            _loc3_.pivotX = this.§^V§.width / 2;
            _loc3_.pivotY = this.§^V§.height / 2;
            _loc3_.§!!z§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§^V§.dispose();
         super.dispose();
      }
      
      public function §@J§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§[!t§.x += param1 - this.§`T§.x;
            this.§[!t§.y += param2 - this.§`T§.y;
         }
         this.§`T§.x = param1;
         this.§`T§.y = param2;
         this.§&F§.x = 2 * this.§[!t§.x - param1;
         this.§&F§.y = 2 * this.§[!t§.y - param2;
      }
      
      public function § d§(param1:Number, param2:Number) : void
      {
         this.§[!t§.x = param1;
         this.§[!t§.y = param2;
         this.§@J§(this.§>t§,this.§-Y§);
      }
      
      private function get §`T§() : § l§
      {
         return getChildAt(0) as § l§;
      }
      
      private function get §&F§() : § l§
      {
         return getChildAt(1) as § l§;
      }
      
      public function get §>t§() : Number
      {
         return this.§`T§.x;
      }
      
      public function get §-Y§() : Number
      {
         return this.§`T§.y;
      }
      
      public function get §=!,§() : Number
      {
         return this.§&F§.x;
      }
      
      public function get §;I§() : Number
      {
         return this.§&F§.y;
      }
   }
}
