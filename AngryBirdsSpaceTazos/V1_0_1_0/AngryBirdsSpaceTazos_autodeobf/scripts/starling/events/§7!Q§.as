package starling.events
{
   import §7!8§.Sprite;
   import §7!8§.§`y§;
   import §`!#§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §7!Q§ extends Sprite
   {
      
      private static var §["B§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §5!0§:Point;
      
      private var §2-§:Texture;
      
      function §7!Q§(param1:Context3D)
      {
         var _loc3_:§`y§ = null;
         super();
         this.§5!0§ = new Point();
         this.§2-§ = Texture.§3<§(param1,new §["B§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §`y§(this.§2-§);
            _loc3_.pivotX = this.§2-§.width / 2;
            _loc3_.pivotY = this.§2-§.height / 2;
            _loc3_.§]!D§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§2-§.dispose();
         super.dispose();
      }
      
      public function §]-§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§5!0§.x += param1 - this.§<!s§.x;
            this.§5!0§.y += param2 - this.§<!s§.y;
         }
         this.§<!s§.x = param1;
         this.§<!s§.y = param2;
         this.§!!F§.x = 2 * this.§5!0§.x - param1;
         this.§!!F§.y = 2 * this.§5!0§.y - param2;
      }
      
      public function §1!d§(param1:Number, param2:Number) : void
      {
         this.§5!0§.x = param1;
         this.§5!0§.y = param2;
         this.§]-§(this.§>b§,this.§8x§);
      }
      
      private function get §<!s§() : §`y§
      {
         return getChildAt(0) as §`y§;
      }
      
      private function get §!!F§() : §`y§
      {
         return getChildAt(1) as §`y§;
      }
      
      public function get §>b§() : Number
      {
         return this.§<!s§.x;
      }
      
      public function get §8x§() : Number
      {
         return this.§<!s§.y;
      }
      
      public function get §3!w§() : Number
      {
         return this.§!!F§.x;
      }
      
      public function get §;!Z§() : Number
      {
         return this.§!!F§.y;
      }
   }
}
