package starling.events
{
   import § !=§.§0F§;
   import § !=§.Sprite;
   import § !a§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § m§ extends Sprite
   {
      
      private static var §#!#§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §+l§:Point;
      
      private var §-e§:Texture;
      
      function § m§(param1:Context3D)
      {
         var _loc3_:§0F§ = null;
         super();
         this.§+l§ = new Point();
         this.§-e§ = Texture.§`z§(param1,new §#!#§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §0F§(this.§-e§);
            _loc3_.pivotX = this.§-e§.width / 2;
            _loc3_.pivotY = this.§-e§.height / 2;
            _loc3_.§8!Z§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§-e§.dispose();
         super.dispose();
      }
      
      public function §do§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§+l§.x += param1 - this.§="+§.x;
            this.§+l§.y += param2 - this.§="+§.y;
         }
         this.§="+§.x = param1;
         this.§="+§.y = param2;
         this.§8!z§.x = 2 * this.§+l§.x - param1;
         this.§8!z§.y = 2 * this.§+l§.y - param2;
      }
      
      public function §>7§(param1:Number, param2:Number) : void
      {
         this.§+l§.x = param1;
         this.§+l§.y = param2;
         this.§do§(this.§^!T§,this.§7!H§);
      }
      
      private function get §="+§() : §0F§
      {
         return getChildAt(0) as §0F§;
      }
      
      private function get §8!z§() : §0F§
      {
         return getChildAt(1) as §0F§;
      }
      
      public function get §^!T§() : Number
      {
         return this.§="+§.x;
      }
      
      public function get §7!H§() : Number
      {
         return this.§="+§.y;
      }
      
      public function get §@!d§() : Number
      {
         return this.§8!z§.x;
      }
      
      public function get §@!<§() : Number
      {
         return this.§8!z§.y;
      }
   }
}
