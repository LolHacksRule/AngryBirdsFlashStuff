package starling.events
{
   import §0!Y§.§#"5§;
   import §0!Y§.Sprite;
   import §^z§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §[g§ extends Sprite
   {
      
      private static var §0F§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §+!O§:Point;
      
      private var §^!T§:Texture;
      
      function §[g§(param1:Context3D)
      {
         var _loc3_:§#"5§ = null;
         super();
         this.§+!O§ = new Point();
         this.§^!T§ = Texture.§8!y§(param1,new §0F§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §#"5§(this.§^!T§);
            _loc3_.pivotX = this.§^!T§.width / 2;
            _loc3_.pivotY = this.§^!T§.height / 2;
            _loc3_.§9"$§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§^!T§.dispose();
         super.dispose();
      }
      
      public function §"!C§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§+!O§.x += param1 - this.§=e§.x;
            this.§+!O§.y += param2 - this.§=e§.y;
         }
         this.§=e§.x = param1;
         this.§=e§.y = param2;
         this.§<!3§.x = 2 * this.§+!O§.x - param1;
         this.§<!3§.y = 2 * this.§+!O§.y - param2;
      }
      
      public function §7!q§(param1:Number, param2:Number) : void
      {
         this.§+!O§.x = param1;
         this.§+!O§.y = param2;
         this.§"!C§(this.§+<§,this.§4b§);
      }
      
      private function get §=e§() : §#"5§
      {
         return getChildAt(0) as §#"5§;
      }
      
      private function get §<!3§() : §#"5§
      {
         return getChildAt(1) as §#"5§;
      }
      
      public function get §+<§() : Number
      {
         return this.§=e§.x;
      }
      
      public function get §4b§() : Number
      {
         return this.§=e§.y;
      }
      
      public function get §[!s§() : Number
      {
         return this.§<!3§.x;
      }
      
      public function get §>!q§() : Number
      {
         return this.§<!3§.y;
      }
   }
}
