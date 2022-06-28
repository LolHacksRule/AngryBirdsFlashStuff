package starling.events
{
   import §'_§.Texture;
   import §1!&§.§&p§;
   import §1!&§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §7!J§ extends Sprite
   {
      
      private static var §7!b§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §<!V§:Point;
      
      private var §!!!§:Texture;
      
      function §7!J§(param1:Context3D)
      {
         var _loc3_:§&p§ = null;
         super();
         this.§<!V§ = new Point();
         this.§!!!§ = Texture.§3!R§(param1,new §7!b§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §&p§(this.§!!!§);
            _loc3_.pivotX = this.§!!!§.width / 2;
            _loc3_.pivotY = this.§!!!§.height / 2;
            _loc3_.§9@§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!!!§.dispose();
         super.dispose();
      }
      
      public function §]3§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§<!V§.x += param1 - this.§"v§.x;
            this.§<!V§.y += param2 - this.§"v§.y;
         }
         this.§"v§.x = param1;
         this.§"v§.y = param2;
         this.§;q§.x = 2 * this.§<!V§.x - param1;
         this.§;q§.y = 2 * this.§<!V§.y - param2;
      }
      
      public function §-!j§(param1:Number, param2:Number) : void
      {
         this.§<!V§.x = param1;
         this.§<!V§.y = param2;
         this.§]3§(this.§4T§,this.§#!A§);
      }
      
      private function get §"v§() : §&p§
      {
         return getChildAt(0) as §&p§;
      }
      
      private function get §;q§() : §&p§
      {
         return getChildAt(1) as §&p§;
      }
      
      public function get §4T§() : Number
      {
         return this.§"v§.x;
      }
      
      public function get §#!A§() : Number
      {
         return this.§"v§.y;
      }
      
      public function get §^u§() : Number
      {
         return this.§;q§.x;
      }
      
      public function get §@F§() : Number
      {
         return this.§;q§.y;
      }
   }
}
