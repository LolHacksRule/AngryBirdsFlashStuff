package starling.events
{
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §_-LK§ extends Sprite
   {
      
      private static var §_-Ot§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §_-Y-§:Point;
      
      private var §_-7u§:Texture;
      
      function §_-LK§(param1:Context3D)
      {
         var _loc3_:§_-09b§ = null;
         super();
         this.§_-Y-§ = new Point();
         this.§_-7u§ = Texture.§_-Qi§(param1,new §_-Ot§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §_-09b§(this.§_-7u§);
            _loc3_.pivotX = this.§_-7u§.width / 2;
            _loc3_.pivotY = this.§_-7u§.height / 2;
            _loc3_.§_-xd§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§_-7u§.dispose();
         super.dispose();
      }
      
      public function §_-Ze§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§_-Y-§.x += param1 - this.§_-VX§.x;
            this.§_-Y-§.y += param2 - this.§_-VX§.y;
         }
         this.§_-VX§.x = param1;
         this.§_-VX§.y = param2;
         this.§_-3e§.x = 2 * this.§_-Y-§.x - param1;
         this.§_-3e§.y = 2 * this.§_-Y-§.y - param2;
      }
      
      public function §_-0AV§(param1:Number, param2:Number) : void
      {
         this.§_-Y-§.x = param1;
         this.§_-Y-§.y = param2;
         this.§_-Ze§(this.§_-1m§,this.§_-0Ap§);
      }
      
      private function get §_-VX§() : §_-09b§
      {
         return getChildAt(0) as §_-09b§;
      }
      
      private function get §_-3e§() : §_-09b§
      {
         return getChildAt(1) as §_-09b§;
      }
      
      public function get §_-1m§() : Number
      {
         return this.§_-VX§.x;
      }
      
      public function get §_-0Ap§() : Number
      {
         return this.§_-VX§.y;
      }
      
      public function get §_-gI§() : Number
      {
         return this.§_-3e§.x;
      }
      
      public function get §_-68§() : Number
      {
         return this.§_-3e§.y;
      }
   }
}
