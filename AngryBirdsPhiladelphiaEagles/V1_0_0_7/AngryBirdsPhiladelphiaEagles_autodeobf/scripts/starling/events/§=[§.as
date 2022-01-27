package starling.events
{
   import §"`§.Texture;
   import §4G§.Sprite;
   import §4G§.§`l§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §=[§ extends Sprite
   {
      
      private static var §=<§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §-x§:Point;
      
      private var §>a§:Texture;
      
      function §=[§(param1:Context3D)
      {
         var _loc3_:§`l§ = null;
         super();
         this.§-x§ = new Point();
         this.§>a§ = Texture.§^$§(param1,new §=<§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §`l§(this.§>a§);
            _loc3_.pivotX = this.§>a§.width / 2;
            _loc3_.pivotY = this.§>a§.height / 2;
            _loc3_.§]1§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§>a§.dispose();
         super.dispose();
      }
      
      public function dynamic(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§-x§.x += param1 - this.§<!$§.x;
            this.§-x§.y += param2 - this.§<!$§.y;
         }
         this.§<!$§.x = param1;
         this.§<!$§.y = param2;
         this.§+c§.x = 2 * this.§-x§.x - param1;
         this.§+c§.y = 2 * this.§-x§.y - param2;
      }
      
      public function §4§(param1:Number, param2:Number) : void
      {
         this.§-x§.x = param1;
         this.§-x§.y = param2;
         this.dynamic(this.§"V§,this.§;R§);
      }
      
      private function get §<!$§() : §`l§
      {
         return getChildAt(0) as §`l§;
      }
      
      private function get §+c§() : §`l§
      {
         return getChildAt(1) as §`l§;
      }
      
      public function get §"V§() : Number
      {
         return this.§<!$§.x;
      }
      
      public function get §;R§() : Number
      {
         return this.§<!$§.y;
      }
      
      public function get §=4§() : Number
      {
         return this.§+c§.x;
      }
      
      public function get §'Y§() : Number
      {
         return this.§+c§.y;
      }
   }
}
