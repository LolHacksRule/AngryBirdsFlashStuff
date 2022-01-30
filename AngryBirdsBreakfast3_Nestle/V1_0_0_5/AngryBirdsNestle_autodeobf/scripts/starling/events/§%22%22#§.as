package starling.events
{
   import §,!q§.§+Q§;
   import §,!q§.Sprite;
   import §?V§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §""#§ extends Sprite
   {
      
      private static var §0r§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §9!<§:Point;
      
      private var §3",§:Texture;
      
      function §""#§(param1:Context3D)
      {
         var _loc3_:§+Q§ = null;
         super();
         this.§9!<§ = new Point();
         this.§3",§ = Texture.§#`§(param1,new §0r§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §+Q§(this.§3",§);
            _loc3_.pivotX = this.§3",§.width / 2;
            _loc3_.pivotY = this.§3",§.height / 2;
            _loc3_.§ w§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3",§.dispose();
         super.dispose();
      }
      
      public function §'%§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§9!<§.x += param1 - this.§[l§.x;
            this.§9!<§.y += param2 - this.§[l§.y;
         }
         this.§[l§.x = param1;
         this.§[l§.y = param2;
         this.§1>§.x = 2 * this.§9!<§.x - param1;
         this.§1>§.y = 2 * this.§9!<§.y - param2;
      }
      
      public function §!L§(param1:Number, param2:Number) : void
      {
         this.§9!<§.x = param1;
         this.§9!<§.y = param2;
         this.§'%§(this.§ T§,this.§ c§);
      }
      
      private function get §[l§() : §+Q§
      {
         return getChildAt(0) as §+Q§;
      }
      
      private function get §1>§() : §+Q§
      {
         return getChildAt(1) as §+Q§;
      }
      
      public function get § T§() : Number
      {
         return this.§[l§.x;
      }
      
      public function get § c§() : Number
      {
         return this.§[l§.y;
      }
      
      public function get §05§() : Number
      {
         return this.§1>§.x;
      }
      
      public function get §-!C§() : Number
      {
         return this.§1>§.y;
      }
   }
}
