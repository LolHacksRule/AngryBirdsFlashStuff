package starling.events
{
   import §'!&§.§9!c§;
   import §'!&§.Sprite;
   import §3"$§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §-C§ extends Sprite
   {
      
      private static var §;!J§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §%9§:Point;
      
      private var §2o§:Texture;
      
      function §-C§(param1:Context3D)
      {
         var _loc3_:§9!c§ = null;
         super();
         this.§%9§ = new Point();
         this.§2o§ = Texture.§5!%§(param1,new §;!J§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §9!c§(this.§2o§);
            _loc3_.pivotX = this.§2o§.width / 2;
            _loc3_.pivotY = this.§2o§.height / 2;
            _loc3_.§="E§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§2o§.dispose();
         super.dispose();
      }
      
      public function §"1§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§%9§.x += param1 - this.§ "1§.x;
            this.§%9§.y += param2 - this.§ "1§.y;
         }
         this.§ "1§.x = param1;
         this.§ "1§.y = param2;
         this.§,#§.x = 2 * this.§%9§.x - param1;
         this.§,#§.y = 2 * this.§%9§.y - param2;
      }
      
      public function §>f§(param1:Number, param2:Number) : void
      {
         this.§%9§.x = param1;
         this.§%9§.y = param2;
         this.§"1§(this.§%"2§,this.§'8§);
      }
      
      private function get § "1§() : §9!c§
      {
         return getChildAt(0) as §9!c§;
      }
      
      private function get §,#§() : §9!c§
      {
         return getChildAt(1) as §9!c§;
      }
      
      public function get §%"2§() : Number
      {
         return this.§ "1§.x;
      }
      
      public function get §'8§() : Number
      {
         return this.§ "1§.y;
      }
      
      public function get §<0§() : Number
      {
         return this.§,#§.x;
      }
      
      public function get §0!e§() : Number
      {
         return this.§,#§.y;
      }
   }
}
