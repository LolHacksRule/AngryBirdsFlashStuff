package starling.events
{
   import §1!A§.§;a§;
   import §1!A§.Sprite;
   import §^n§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §!%§ extends Sprite
   {
      
      private static var §4=§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §98§:Point;
      
      private var §&q§:Texture;
      
      function §!%§(param1:Context3D)
      {
         var _loc3_:§;a§ = null;
         super();
         this.§98§ = new Point();
         this.§&q§ = Texture.§5!]§(param1,new §4=§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §;a§(this.§&q§);
            _loc3_.pivotX = this.§&q§.width / 2;
            _loc3_.pivotY = this.§&q§.height / 2;
            _loc3_.§6R§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§&q§.dispose();
         super.dispose();
      }
      
      public function §?;§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§98§.x += param1 - this.§^!2§.x;
            this.§98§.y += param2 - this.§^!2§.y;
         }
         this.§^!2§.x = param1;
         this.§^!2§.y = param2;
         this.§8<§.x = 2 * this.§98§.x - param1;
         this.§8<§.y = 2 * this.§98§.y - param2;
      }
      
      public function §?!-§(param1:Number, param2:Number) : void
      {
         this.§98§.x = param1;
         this.§98§.y = param2;
         this.§?;§(this.§%§,this.§+O§);
      }
      
      private function get §^!2§() : §;a§
      {
         return getChildAt(0) as §;a§;
      }
      
      private function get §8<§() : §;a§
      {
         return getChildAt(1) as §;a§;
      }
      
      public function get §%§() : Number
      {
         return this.§^!2§.x;
      }
      
      public function get §+O§() : Number
      {
         return this.§^!2§.y;
      }
      
      public function get §%!^§() : Number
      {
         return this.§8<§.x;
      }
      
      public function get §^!0§() : Number
      {
         return this.§8<§.y;
      }
   }
}
