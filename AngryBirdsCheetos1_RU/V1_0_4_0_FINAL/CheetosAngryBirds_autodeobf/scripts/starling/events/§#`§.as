package starling.events
{
   import §+![§.Texture;
   import §3§.§4!!§;
   import §3§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#`§ extends Sprite
   {
      
      private static var §4y§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §4!Y§:Point;
      
      private var §>b§:Texture;
      
      function §#`§(param1:Context3D)
      {
         var _loc3_:§4!!§ = null;
         super();
         this.§4!Y§ = new Point();
         this.§>b§ = Texture.§,C§(param1,new §4y§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §4!!§(this.§>b§);
            _loc3_.pivotX = this.§>b§.width / 2;
            _loc3_.pivotY = this.§>b§.height / 2;
            _loc3_.§#U§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§>b§.dispose();
         super.dispose();
      }
      
      public function §?!Y§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§4!Y§.x += param1 - this.§for §.x;
            this.§4!Y§.y += param2 - this.§for §.y;
         }
         this.§for §.x = param1;
         this.§for §.y = param2;
         this.§do§.x = 2 * this.§4!Y§.x - param1;
         this.§do§.y = 2 * this.§4!Y§.y - param2;
      }
      
      public function §66§(param1:Number, param2:Number) : void
      {
         this.§4!Y§.x = param1;
         this.§4!Y§.y = param2;
         this.§?!Y§(this.§2=§,this.§<k§);
      }
      
      private function get §for §() : §4!!§
      {
         return getChildAt(0) as §4!!§;
      }
      
      private function get §do§() : §4!!§
      {
         return getChildAt(1) as §4!!§;
      }
      
      public function get §2=§() : Number
      {
         return this.§for §.x;
      }
      
      public function get §<k§() : Number
      {
         return this.§for §.y;
      }
      
      public function get §+b§() : Number
      {
         return this.§do§.x;
      }
      
      public function get §'!C§() : Number
      {
         return this.§do§.y;
      }
   }
}
