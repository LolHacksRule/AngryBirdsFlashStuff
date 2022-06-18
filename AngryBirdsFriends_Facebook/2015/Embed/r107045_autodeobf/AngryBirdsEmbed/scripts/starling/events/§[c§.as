package starling.events
{
   import §#!@§.§0V§;
   import §#!@§.Sprite;
   import §1#§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §[c§ extends Sprite
   {
      
      private static var §3`§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §+d§:Point;
      
      private var §"<§:Texture;
      
      function §[c§(param1:Context3D)
      {
         var _loc3_:§0V§ = null;
         super();
         this.§+d§ = new Point();
         this.§"<§ = Texture.§1!@§(param1,new §3`§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §0V§(this.§"<§);
            _loc3_.pivotX = this.§"<§.width / 2;
            _loc3_.pivotY = this.§"<§.height / 2;
            _loc3_.§2@§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§"<§.dispose();
         super.dispose();
      }
      
      public function §2!D§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§+d§.x += param1 - this.§"-§.x;
            this.§+d§.y += param2 - this.§"-§.y;
         }
         this.§"-§.x = param1;
         this.§"-§.y = param2;
         this.§?M§.x = 2 * this.§+d§.x - param1;
         this.§?M§.y = 2 * this.§+d§.y - param2;
      }
      
      public function §>S§(param1:Number, param2:Number) : void
      {
         this.§+d§.x = param1;
         this.§+d§.y = param2;
         this.§2!D§(this.§9X§,this.§""§);
      }
      
      private function get §"-§() : §0V§
      {
         return getChildAt(0) as §0V§;
      }
      
      private function get §?M§() : §0V§
      {
         return getChildAt(1) as §0V§;
      }
      
      public function get §9X§() : Number
      {
         return this.§"-§.x;
      }
      
      public function get §""§() : Number
      {
         return this.§"-§.y;
      }
      
      public function get §?!A§() : Number
      {
         return this.§?M§.x;
      }
      
      public function get §!!7§() : Number
      {
         return this.§?M§.y;
      }
   }
}
