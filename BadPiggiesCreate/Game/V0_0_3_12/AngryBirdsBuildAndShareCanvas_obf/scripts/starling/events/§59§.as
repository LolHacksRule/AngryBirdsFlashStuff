package starling.events
{
   import §@!i§.§%Q§;
   import §@!i§.Sprite;
   import §^Q§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §59§ extends Sprite
   {
      
      private static var §+z§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §4!Y§:Point;
      
      private var §@"+§:Texture;
      
      function §59§(param1:Context3D)
      {
         var _loc3_:§%Q§ = null;
         super();
         this.§4!Y§ = new Point();
         this.§@"+§ = Texture.§;!`§(param1,new §+z§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §%Q§(this.§@"+§);
            _loc3_.pivotX = this.§@"+§.width / 2;
            _loc3_.pivotY = this.§@"+§.height / 2;
            _loc3_.§"!f§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§@"+§.dispose();
         super.dispose();
      }
      
      public function §'!^§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§4!Y§.x += param1 - this.§]?§.x;
            this.§4!Y§.y += param2 - this.§]?§.y;
         }
         this.§]?§.x = param1;
         this.§]?§.y = param2;
         this.§+U§.x = 2 * this.§4!Y§.x - param1;
         this.§+U§.y = 2 * this.§4!Y§.y - param2;
      }
      
      public function §1!s§(param1:Number, param2:Number) : void
      {
         this.§4!Y§.x = param1;
         this.§4!Y§.y = param2;
         this.§'!^§(this.§1!S§,this.§?"'§);
      }
      
      private function get §]?§() : §%Q§
      {
         return getChildAt(0) as §%Q§;
      }
      
      private function get §+U§() : §%Q§
      {
         return getChildAt(1) as §%Q§;
      }
      
      public function get §1!S§() : Number
      {
         return this.§]?§.x;
      }
      
      public function get §?"'§() : Number
      {
         return this.§]?§.y;
      }
      
      public function get §9$§() : Number
      {
         return this.§+U§.x;
      }
      
      public function get §3!g§() : Number
      {
         return this.§+U§.y;
      }
   }
}
