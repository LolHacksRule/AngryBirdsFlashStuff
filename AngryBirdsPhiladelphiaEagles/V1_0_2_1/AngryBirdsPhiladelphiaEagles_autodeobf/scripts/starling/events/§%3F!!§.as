package starling.events
{
   import §<!N§.§&M§;
   import §<!N§.Sprite;
   import §@M§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!!§ extends Sprite
   {
      
      private static var §-P§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §]&§:Point;
      
      private var §#!9§:Texture;
      
      function §?!!§(param1:Context3D)
      {
         var _loc3_:§&M§ = null;
         super();
         this.§]&§ = new Point();
         this.§#!9§ = Texture.§6N§(param1,new §-P§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §&M§(this.§#!9§);
            _loc3_.pivotX = this.§#!9§.width / 2;
            _loc3_.pivotY = this.§#!9§.height / 2;
            _loc3_.§0!-§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§#!9§.dispose();
         super.dispose();
      }
      
      public function §`N§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§]&§.x += param1 - this.§=N§.x;
            this.§]&§.y += param2 - this.§=N§.y;
         }
         this.§=N§.x = param1;
         this.§=N§.y = param2;
         this.§^d§.x = 2 * this.§]&§.x - param1;
         this.§^d§.y = 2 * this.§]&§.y - param2;
      }
      
      public function §5!2§(param1:Number, param2:Number) : void
      {
         this.§]&§.x = param1;
         this.§]&§.y = param2;
         this.§`N§(this.§%z§,this.§`_§);
      }
      
      private function get §=N§() : §&M§
      {
         return getChildAt(0) as §&M§;
      }
      
      private function get §^d§() : §&M§
      {
         return getChildAt(1) as §&M§;
      }
      
      public function get §%z§() : Number
      {
         return this.§=N§.x;
      }
      
      public function get §`_§() : Number
      {
         return this.§=N§.y;
      }
      
      public function get §<!O§() : Number
      {
         return this.§^d§.x;
      }
      
      public function get §#>§() : Number
      {
         return this.§^d§.y;
      }
   }
}
