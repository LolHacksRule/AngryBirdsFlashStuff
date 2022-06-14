package starling.events
{
   import §0!R§.Texture;
   import §1!$§.§0!N§;
   import §1!$§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#!Y§ extends Sprite
   {
      
      private static var §7![§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §;0§:Point;
      
      private var §&M§:Texture;
      
      function §#!Y§(param1:Context3D)
      {
         var _loc3_:§0!N§ = null;
         super();
         this.§;0§ = new Point();
         this.§&M§ = Texture.§1!H§(param1,new §7![§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §0!N§(this.§&M§);
            _loc3_.pivotX = this.§&M§.width / 2;
            _loc3_.pivotY = this.§&M§.height / 2;
            _loc3_.§`!u§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§&M§.dispose();
         super.dispose();
      }
      
      public function §'R§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§;0§.x += param1 - this.§9S§.x;
            this.§;0§.y += param2 - this.§9S§.y;
         }
         this.§9S§.x = param1;
         this.§9S§.y = param2;
         this.§6!U§.x = 2 * this.§;0§.x - param1;
         this.§6!U§.y = 2 * this.§;0§.y - param2;
      }
      
      public function §[!4§(param1:Number, param2:Number) : void
      {
         this.§;0§.x = param1;
         this.§;0§.y = param2;
         this.§'R§(this.§"" §,this.§!">§);
      }
      
      private function get §9S§() : §0!N§
      {
         return getChildAt(0) as §0!N§;
      }
      
      private function get §6!U§() : §0!N§
      {
         return getChildAt(1) as §0!N§;
      }
      
      public function get §"" §() : Number
      {
         return this.§9S§.x;
      }
      
      public function get §!">§() : Number
      {
         return this.§9S§.y;
      }
      
      public function get § ""§() : Number
      {
         return this.§6!U§.x;
      }
      
      public function get §5!R§() : Number
      {
         return this.§6!U§.y;
      }
   }
}
