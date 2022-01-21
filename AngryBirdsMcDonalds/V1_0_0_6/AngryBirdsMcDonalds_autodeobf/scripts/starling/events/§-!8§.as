package starling.events
{
   import § !^§.Texture;
   import §2![§.Sprite;
   import §2![§.§[!U§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §-!8§ extends Sprite
   {
      
      private static var §+!j§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §+d§:Point;
      
      private var §`L§:Texture;
      
      function §-!8§(param1:Context3D)
      {
         var _loc3_:§[!U§ = null;
         super();
         this.§+d§ = new Point();
         this.§`L§ = Texture.§`!3§(param1,new §+!j§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §[!U§(this.§`L§);
            _loc3_.pivotX = this.§`L§.width / 2;
            _loc3_.pivotY = this.§`L§.height / 2;
            _loc3_.§,!c§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§`L§.dispose();
         super.dispose();
      }
      
      public function §true§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§+d§.x += param1 - this.§,!-§.x;
            this.§+d§.y += param2 - this.§,!-§.y;
         }
         this.§,!-§.x = param1;
         this.§,!-§.y = param2;
         this.§1x§.x = 2 * this.§+d§.x - param1;
         this.§1x§.y = 2 * this.§+d§.y - param2;
      }
      
      public function §6!'§(param1:Number, param2:Number) : void
      {
         this.§+d§.x = param1;
         this.§+d§.y = param2;
         this.§true§(this.§^i§,this.§9c§);
      }
      
      private function get §,!-§() : §[!U§
      {
         return getChildAt(0) as §[!U§;
      }
      
      private function get §1x§() : §[!U§
      {
         return getChildAt(1) as §[!U§;
      }
      
      public function get §^i§() : Number
      {
         return this.§,!-§.x;
      }
      
      public function get §9c§() : Number
      {
         return this.§,!-§.y;
      }
      
      public function get §[!i§() : Number
      {
         return this.§1x§.x;
      }
      
      public function get §]!F§() : Number
      {
         return this.§1x§.y;
      }
   }
}
