package starling.events
{
   import §!!9§.Texture;
   import §9E§.§;!U§;
   import §9E§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §]e§ extends Sprite
   {
      
      private static var §!?§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §-f§:Point;
      
      private var §,!Q§:Texture;
      
      function §]e§(param1:Context3D)
      {
         var _loc3_:§;!U§ = null;
         super();
         this.§-f§ = new Point();
         this.§,!Q§ = Texture.§>O§(param1,new §!?§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §;!U§(this.§,!Q§);
            _loc3_.pivotX = this.§,!Q§.width / 2;
            _loc3_.pivotY = this.§,!Q§.height / 2;
            _loc3_.§<V§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§,!Q§.dispose();
         super.dispose();
      }
      
      public function §7!^§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§-f§.x += param1 - this.§;Y§.x;
            this.§-f§.y += param2 - this.§;Y§.y;
         }
         this.§;Y§.x = param1;
         this.§;Y§.y = param2;
         this.§&!=§.x = 2 * this.§-f§.x - param1;
         this.§&!=§.y = 2 * this.§-f§.y - param2;
      }
      
      public function § !A§(param1:Number, param2:Number) : void
      {
         this.§-f§.x = param1;
         this.§-f§.y = param2;
         this.§7!^§(this.§]=§,this.§8!?§);
      }
      
      private function get §;Y§() : §;!U§
      {
         return getChildAt(0) as §;!U§;
      }
      
      private function get §&!=§() : §;!U§
      {
         return getChildAt(1) as §;!U§;
      }
      
      public function get §]=§() : Number
      {
         return this.§;Y§.x;
      }
      
      public function get §8!?§() : Number
      {
         return this.§;Y§.y;
      }
      
      public function get §!!n§() : Number
      {
         return this.§&!=§.x;
      }
      
      public function get §1C§() : Number
      {
         return this.§&!=§.y;
      }
   }
}
