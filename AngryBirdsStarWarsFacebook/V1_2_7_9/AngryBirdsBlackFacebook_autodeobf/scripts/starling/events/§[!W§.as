package starling.events
{
   import §1"s§.§-i§;
   import §1"s§.Sprite;
   import §<"L§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §[!W§ extends Sprite
   {
      
      private static var §&!#§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §7!3§:Point;
      
      private var §!!Z§:Texture;
      
      function §[!W§(param1:Context3D)
      {
         var _loc3_:§-i§ = null;
         super();
         this.§7!3§ = new Point();
         this.§!!Z§ = Texture.§-2§(param1,new §&!#§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §-i§(this.§!!Z§);
            _loc3_.pivotX = this.§!!Z§.width / 2;
            _loc3_.pivotY = this.§!!Z§.height / 2;
            _loc3_.§#C§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!!Z§.dispose();
         super.dispose();
      }
      
      public function §`C§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§7!3§.x += param1 - this.§@"%§.x;
            this.§7!3§.y += param2 - this.§@"%§.y;
         }
         this.§@"%§.x = param1;
         this.§@"%§.y = param2;
         this.§##%§.x = 2 * this.§7!3§.x - param1;
         this.§##%§.y = 2 * this.§7!3§.y - param2;
      }
      
      public function §["n§(param1:Number, param2:Number) : void
      {
         this.§7!3§.x = param1;
         this.§7!3§.y = param2;
         this.§`C§(this.§]D§,this.§>!b§);
      }
      
      private function get §@"%§() : §-i§
      {
         return getChildAt(0) as §-i§;
      }
      
      private function get §##%§() : §-i§
      {
         return getChildAt(1) as §-i§;
      }
      
      public function get §]D§() : Number
      {
         return this.§@"%§.x;
      }
      
      public function get §>!b§() : Number
      {
         return this.§@"%§.y;
      }
      
      public function get §`H§() : Number
      {
         return this.§##%§.x;
      }
      
      public function get § Y§() : Number
      {
         return this.§##%§.y;
      }
   }
}
