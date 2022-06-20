package starling.events
{
   import §<L§.Texture;
   import §]&§.§-§;
   import §]&§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §9t§ extends Sprite
   {
      
      private static var §;!2§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §%"+§:Point;
      
      private var §,x§:Texture;
      
      function §9t§(param1:Context3D)
      {
         var _loc3_:§-§ = null;
         super();
         this.§%"+§ = new Point();
         this.§,x§ = Texture.§=$§(param1,new §;!2§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §-§(this.§,x§);
            _loc3_.pivotX = this.§,x§.width / 2;
            _loc3_.pivotY = this.§,x§.height / 2;
            _loc3_.§3!5§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§,x§.dispose();
         super.dispose();
      }
      
      public function §7w§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§%"+§.x += param1 - this.§1M§.x;
            this.§%"+§.y += param2 - this.§1M§.y;
         }
         this.§1M§.x = param1;
         this.§1M§.y = param2;
         this.§2!0§.x = 2 * this.§%"+§.x - param1;
         this.§2!0§.y = 2 * this.§%"+§.y - param2;
      }
      
      public function §!!§(param1:Number, param2:Number) : void
      {
         this.§%"+§.x = param1;
         this.§%"+§.y = param2;
         this.§7w§(this.§;!V§,this.§]!Q§);
      }
      
      private function get §1M§() : §-§
      {
         return getChildAt(0) as §-§;
      }
      
      private function get §2!0§() : §-§
      {
         return getChildAt(1) as §-§;
      }
      
      public function get §;!V§() : Number
      {
         return this.§1M§.x;
      }
      
      public function get §]!Q§() : Number
      {
         return this.§1M§.y;
      }
      
      public function get §,h§() : Number
      {
         return this.§2!0§.x;
      }
      
      public function get §="B§() : Number
      {
         return this.§2!0§.y;
      }
   }
}
