package starling.events
{
   import §'!9§.§?!U§;
   import §'!9§.Sprite;
   import §^!+§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#a§ extends Sprite
   {
      
      private static var §!!Q§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §&!l§:Point;
      
      private var §[!5§:Texture;
      
      function §#a§(param1:Context3D)
      {
         var _loc3_:§?!U§ = null;
         super();
         this.§&!l§ = new Point();
         this.§[!5§ = Texture.§@#§(param1,new §!!Q§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §?!U§(this.§[!5§);
            _loc3_.pivotX = this.§[!5§.width / 2;
            _loc3_.pivotY = this.§[!5§.height / 2;
            _loc3_.§@!U§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§[!5§.dispose();
         super.dispose();
      }
      
      public function §?>§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§&!l§.x += param1 - this.§^!^§.x;
            this.§&!l§.y += param2 - this.§^!^§.y;
         }
         this.§^!^§.x = param1;
         this.§^!^§.y = param2;
         this.§5n§.x = 2 * this.§&!l§.x - param1;
         this.§5n§.y = 2 * this.§&!l§.y - param2;
      }
      
      public function §'e§(param1:Number, param2:Number) : void
      {
         this.§&!l§.x = param1;
         this.§&!l§.y = param2;
         this.§?>§(this.§;P§,this.§0w§);
      }
      
      private function get §^!^§() : §?!U§
      {
         return getChildAt(0) as §?!U§;
      }
      
      private function get §5n§() : §?!U§
      {
         return getChildAt(1) as §?!U§;
      }
      
      public function get §;P§() : Number
      {
         return this.§^!^§.x;
      }
      
      public function get §0w§() : Number
      {
         return this.§^!^§.y;
      }
      
      public function get §;d§() : Number
      {
         return this.§5n§.x;
      }
      
      public function get §6!=§() : Number
      {
         return this.§5n§.y;
      }
   }
}
