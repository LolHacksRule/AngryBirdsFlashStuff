package starling.events
{
   import §3!U§.Texture;
   import §]!2§.§,!n§;
   import §]!2§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § $§ extends Sprite
   {
      
      private static var §6!L§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §^!_§:Point;
      
      private var §=#§:Texture;
      
      function § $§(param1:Context3D)
      {
         var _loc3_:§,!n§ = null;
         super();
         this.§^!_§ = new Point();
         this.§=#§ = Texture.§+g§(param1,new §6!L§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §,!n§(this.§=#§);
            _loc3_.pivotX = this.§=#§.width / 2;
            _loc3_.pivotY = this.§=#§.height / 2;
            _loc3_.§7!'§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§=#§.dispose();
         super.dispose();
      }
      
      public function §0!p§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§^!_§.x += param1 - this.§`J§.x;
            this.§^!_§.y += param2 - this.§`J§.y;
         }
         this.§`J§.x = param1;
         this.§`J§.y = param2;
         this.§'"+§.x = 2 * this.§^!_§.x - param1;
         this.§'"+§.y = 2 * this.§^!_§.y - param2;
      }
      
      public function §1h§(param1:Number, param2:Number) : void
      {
         this.§^!_§.x = param1;
         this.§^!_§.y = param2;
         this.§0!p§(this.§4a§,this.§#!X§);
      }
      
      private function get §`J§() : §,!n§
      {
         return getChildAt(0) as §,!n§;
      }
      
      private function get §'"+§() : §,!n§
      {
         return getChildAt(1) as §,!n§;
      }
      
      public function get §4a§() : Number
      {
         return this.§`J§.x;
      }
      
      public function get §#!X§() : Number
      {
         return this.§`J§.y;
      }
      
      public function get §]!!§() : Number
      {
         return this.§'"+§.x;
      }
      
      public function get §1y§() : Number
      {
         return this.§'"+§.y;
      }
   }
}
