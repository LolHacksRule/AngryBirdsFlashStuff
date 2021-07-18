package starling.events
{
   import § N§.§1!A§;
   import § N§.Sprite;
   import §8z§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!'§ extends Sprite
   {
      
      private static var §for §:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §`!§:Point;
      
      private var §-`§:Texture;
      
      function §?!'§(param1:Context3D)
      {
         var _loc3_:§1!A§ = null;
         super();
         this.§`!§ = new Point();
         this.§-`§ = Texture.§@!-§(param1,new §for §());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §1!A§(this.§-`§);
            _loc3_.pivotX = this.§-`§.width / 2;
            _loc3_.pivotY = this.§-`§.height / 2;
            _loc3_.§!!"§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§-`§.dispose();
         super.dispose();
      }
      
      public function § <§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§`!§.x += param1 - this.§!!L§.x;
            this.§`!§.y += param2 - this.§!!L§.y;
         }
         this.§!!L§.x = param1;
         this.§!!L§.y = param2;
         this.§![§.x = 2 * this.§`!§.x - param1;
         this.§![§.y = 2 * this.§`!§.y - param2;
      }
      
      public function §"+§(param1:Number, param2:Number) : void
      {
         this.§`!§.x = param1;
         this.§`!§.y = param2;
         this.§ <§(this.§3!O§,this.§[!M§);
      }
      
      private function get §!!L§() : §1!A§
      {
         return getChildAt(0) as §1!A§;
      }
      
      private function get §![§() : §1!A§
      {
         return getChildAt(1) as §1!A§;
      }
      
      public function get §3!O§() : Number
      {
         return this.§!!L§.x;
      }
      
      public function get §[!M§() : Number
      {
         return this.§!!L§.y;
      }
      
      public function get §]<§() : Number
      {
         return this.§![§.x;
      }
      
      public function get §[L§() : Number
      {
         return this.§![§.y;
      }
   }
}
