package starling.events
{
   import §",§.Texture;
   import §5x§.§2!K§;
   import §5x§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §=! § extends Sprite
   {
      
      private static var §3§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §#!8§:Point;
      
      private var §%S§:Texture;
      
      function §=! §(param1:Context3D)
      {
         var _loc3_:§2!K§ = null;
         super();
         this.§#!8§ = new Point();
         this.§%S§ = Texture.§=!+§(param1,new §3§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §2!K§(this.§%S§);
            _loc3_.pivotX = this.§%S§.width / 2;
            _loc3_.pivotY = this.§%S§.height / 2;
            _loc3_.§^!7§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§%S§.dispose();
         super.dispose();
      }
      
      public function §1n§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§#!8§.x += param1 - this.§[!0§.x;
            this.§#!8§.y += param2 - this.§[!0§.y;
         }
         this.§[!0§.x = param1;
         this.§[!0§.y = param2;
         this.§=T§.x = 2 * this.§#!8§.x - param1;
         this.§=T§.y = 2 * this.§#!8§.y - param2;
      }
      
      public function §`<§(param1:Number, param2:Number) : void
      {
         this.§#!8§.x = param1;
         this.§#!8§.y = param2;
         this.§1n§(this.§#!5§,this.§&w§);
      }
      
      private function get §[!0§() : §2!K§
      {
         return getChildAt(0) as §2!K§;
      }
      
      private function get §=T§() : §2!K§
      {
         return getChildAt(1) as §2!K§;
      }
      
      public function get §#!5§() : Number
      {
         return this.§[!0§.x;
      }
      
      public function get §&w§() : Number
      {
         return this.§[!0§.y;
      }
      
      public function get §[!D§() : Number
      {
         return this.§=T§.x;
      }
      
      public function get §9§() : Number
      {
         return this.§=T§.y;
      }
   }
}
