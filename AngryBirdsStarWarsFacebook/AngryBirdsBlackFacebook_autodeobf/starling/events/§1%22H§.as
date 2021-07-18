package starling.events
{
   import §!!U§.§#"t§;
   import §!!U§.Sprite;
   import §&v§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §1"H§ extends Sprite
   {
      
      private static var §"! §:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §?"f§:Point;
      
      private var §^"R§:Texture;
      
      function §1"H§(param1:Context3D)
      {
         var _loc3_:§#"t§ = null;
         super();
         this.§?"f§ = new Point();
         this.§^"R§ = Texture.§`"J§(param1,new §"! §());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §#"t§(this.§^"R§);
            _loc3_.pivotX = this.§^"R§.width / 2;
            _loc3_.pivotY = this.§^"R§.height / 2;
            _loc3_.§3'§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§^"R§.dispose();
         super.dispose();
      }
      
      public function §[=§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§?"f§.x += param1 - this.§7"q§.x;
            this.§?"f§.y += param2 - this.§7"q§.y;
         }
         this.§7"q§.x = param1;
         this.§7"q§.y = param2;
         this.§;"X§.x = 2 * this.§?"f§.x - param1;
         this.§;"X§.y = 2 * this.§?"f§.y - param2;
      }
      
      public function §8!=§(param1:Number, param2:Number) : void
      {
         this.§?"f§.x = param1;
         this.§?"f§.y = param2;
         this.§[=§(this.§,§,this.§3#&§);
      }
      
      private function get §7"q§() : §#"t§
      {
         return getChildAt(0) as §#"t§;
      }
      
      private function get §;"X§() : §#"t§
      {
         return getChildAt(1) as §#"t§;
      }
      
      public function get §,§() : Number
      {
         return this.§7"q§.x;
      }
      
      public function get §3#&§() : Number
      {
         return this.§7"q§.y;
      }
      
      public function get §,"'§() : Number
      {
         return this.§;"X§.x;
      }
      
      public function get §="P§() : Number
      {
         return this.§;"X§.y;
      }
   }
}
