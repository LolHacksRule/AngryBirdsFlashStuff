package starling.events
{
   import §&!5§.§'!$§;
   import §&!5§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   import §switch§.Texture;
   
   class §8!%§ extends Sprite
   {
      
      private static var §7s§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §]6§:Point;
      
      private var §#!X§:Texture;
      
      function §8!%§(param1:Context3D)
      {
         var _loc3_:§'!$§ = null;
         super();
         this.§]6§ = new Point();
         this.§#!X§ = Texture.§9!8§(param1,new §7s§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §'!$§(this.§#!X§);
            _loc3_.pivotX = this.§#!X§.width / 2;
            _loc3_.pivotY = this.§#!X§.height / 2;
            _loc3_.§7!9§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§#!X§.dispose();
         super.dispose();
      }
      
      public function §=P§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§]6§.x += param1 - this.§"g§.x;
            this.§]6§.y += param2 - this.§"g§.y;
         }
         this.§"g§.x = param1;
         this.§"g§.y = param2;
         this.§<!9§.x = 2 * this.§]6§.x - param1;
         this.§<!9§.y = 2 * this.§]6§.y - param2;
      }
      
      public function §,!U§(param1:Number, param2:Number) : void
      {
         this.§]6§.x = param1;
         this.§]6§.y = param2;
         this.§=P§(this.§4h§,this.§[#§);
      }
      
      private function get §"g§() : §'!$§
      {
         return getChildAt(0) as §'!$§;
      }
      
      private function get §<!9§() : §'!$§
      {
         return getChildAt(1) as §'!$§;
      }
      
      public function get §4h§() : Number
      {
         return this.§"g§.x;
      }
      
      public function get §[#§() : Number
      {
         return this.§"g§.y;
      }
      
      public function get § !$§() : Number
      {
         return this.§<!9§.x;
      }
      
      public function get §-!'§() : Number
      {
         return this.§<!9§.y;
      }
   }
}
