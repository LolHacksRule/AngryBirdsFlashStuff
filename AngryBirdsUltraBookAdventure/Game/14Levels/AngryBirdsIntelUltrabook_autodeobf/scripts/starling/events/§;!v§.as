package starling.events
{
   import §?]§.Texture;
   import §`g§.§"<§;
   import §`g§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §;!v§ extends Sprite
   {
      
      private static var §6G§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §]T§:Point;
      
      private var §!=§:Texture;
      
      function §;!v§(param1:Context3D)
      {
         var _loc3_:§"<§ = null;
         super();
         this.§]T§ = new Point();
         this.§!=§ = Texture.§`!s§(param1,new §6G§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §"<§(this.§!=§);
            _loc3_.pivotX = this.§!=§.width / 2;
            _loc3_.pivotY = this.§!=§.height / 2;
            _loc3_.§&!U§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!=§.dispose();
         super.dispose();
      }
      
      public function §7!v§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§]T§.x += param1 - this.§]!b§.x;
            this.§]T§.y += param2 - this.§]!b§.y;
         }
         this.§]!b§.x = param1;
         this.§]!b§.y = param2;
         this.§,!e§.x = 2 * this.§]T§.x - param1;
         this.§,!e§.y = 2 * this.§]T§.y - param2;
      }
      
      public function §"!#§(param1:Number, param2:Number) : void
      {
         this.§]T§.x = param1;
         this.§]T§.y = param2;
         this.§7!v§(this.§&!5§,this.§!N§);
      }
      
      private function get §]!b§() : §"<§
      {
         return getChildAt(0) as §"<§;
      }
      
      private function get §,!e§() : §"<§
      {
         return getChildAt(1) as §"<§;
      }
      
      public function get §&!5§() : Number
      {
         return this.§]!b§.x;
      }
      
      public function get §!N§() : Number
      {
         return this.§]!b§.y;
      }
      
      public function get §0!]§() : Number
      {
         return this.§,!e§.x;
      }
      
      public function get §;6§() : Number
      {
         return this.§,!e§.y;
      }
   }
}
