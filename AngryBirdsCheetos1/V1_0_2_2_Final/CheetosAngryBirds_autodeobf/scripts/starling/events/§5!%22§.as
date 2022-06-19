package starling.events
{
   import §]!B§.Texture;
   import §]@§.Sprite;
   import §]@§.§`!C§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5!"§ extends Sprite
   {
      
      private static var §?=§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §&!J§:Point;
      
      private var §if§:Texture;
      
      function §5!"§(param1:Context3D)
      {
         var _loc3_:§`!C§ = null;
         super();
         this.§&!J§ = new Point();
         this.§if§ = Texture.§0Z§(param1,new §?=§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §`!C§(this.§if§);
            _loc3_.pivotX = this.§if§.width / 2;
            _loc3_.pivotY = this.§if§.height / 2;
            _loc3_.§^f§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§if§.dispose();
         super.dispose();
      }
      
      public function §3k§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§&!J§.x += param1 - this.§-?§.x;
            this.§&!J§.y += param2 - this.§-?§.y;
         }
         this.§-?§.x = param1;
         this.§-?§.y = param2;
         this.§7G§.x = 2 * this.§&!J§.x - param1;
         this.§7G§.y = 2 * this.§&!J§.y - param2;
      }
      
      public function §+O§(param1:Number, param2:Number) : void
      {
         this.§&!J§.x = param1;
         this.§&!J§.y = param2;
         this.§3k§(this.§7!!§,this.§4h§);
      }
      
      private function get §-?§() : §`!C§
      {
         return getChildAt(0) as §`!C§;
      }
      
      private function get §7G§() : §`!C§
      {
         return getChildAt(1) as §`!C§;
      }
      
      public function get §7!!§() : Number
      {
         return this.§-?§.x;
      }
      
      public function get §4h§() : Number
      {
         return this.§-?§.y;
      }
      
      public function get §&h§() : Number
      {
         return this.§7G§.x;
      }
      
      public function get §@Q§() : Number
      {
         return this.§7G§.y;
      }
   }
}
