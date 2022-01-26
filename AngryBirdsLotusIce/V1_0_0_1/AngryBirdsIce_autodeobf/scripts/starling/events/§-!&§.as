package starling.events
{
   import §%?§.Texture;
   import §@!=§.§"S§;
   import §@!=§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §-!&§ extends Sprite
   {
      
      private static var §"E§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §#o§:Point;
      
      private var §+F§:Texture;
      
      function §-!&§(param1:Context3D)
      {
         var _loc3_:§"S§ = null;
         super();
         this.§#o§ = new Point();
         this.§+F§ = Texture.§7U§(param1,new §"E§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §"S§(this.§+F§);
            _loc3_.pivotX = this.§+F§.width / 2;
            _loc3_.pivotY = this.§+F§.height / 2;
            _loc3_.§0D§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§+F§.dispose();
         super.dispose();
      }
      
      public function § >§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§#o§.x += param1 - this.§<§.x;
            this.§#o§.y += param2 - this.§<§.y;
         }
         this.§<§.x = param1;
         this.§<§.y = param2;
         this.§#!G§.x = 2 * this.§#o§.x - param1;
         this.§#!G§.y = 2 * this.§#o§.y - param2;
      }
      
      public function §%p§(param1:Number, param2:Number) : void
      {
         this.§#o§.x = param1;
         this.§#o§.y = param2;
         this.§ >§(this.§1P§,this.§'!&§);
      }
      
      private function get §<§() : §"S§
      {
         return getChildAt(0) as §"S§;
      }
      
      private function get §#!G§() : §"S§
      {
         return getChildAt(1) as §"S§;
      }
      
      public function get §1P§() : Number
      {
         return this.§<§.x;
      }
      
      public function get §'!&§() : Number
      {
         return this.§<§.y;
      }
      
      public function get §5P§() : Number
      {
         return this.§#!G§.x;
      }
      
      public function get §6[§() : Number
      {
         return this.§#!G§.y;
      }
   }
}
