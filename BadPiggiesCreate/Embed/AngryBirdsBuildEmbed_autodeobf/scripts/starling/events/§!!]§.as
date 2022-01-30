package starling.events
{
   import §-!`§.§7!J§;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §!!]§ extends Sprite
   {
      
      private static var §6H§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §#-§:Point;
      
      private var §8w§:Texture;
      
      function §!!]§(param1:Context3D)
      {
         var _loc3_:§7!J§ = null;
         super();
         this.§#-§ = new Point();
         this.§8w§ = Texture.§&B§(param1,new §6H§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §7!J§(this.§8w§);
            _loc3_.pivotX = this.§8w§.width / 2;
            _loc3_.pivotY = this.§8w§.height / 2;
            _loc3_.§[,§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§8w§.dispose();
         super.dispose();
      }
      
      public function §9!l§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§#-§.x += param1 - this.§@"§.x;
            this.§#-§.y += param2 - this.§@"§.y;
         }
         this.§@"§.x = param1;
         this.§@"§.y = param2;
         this.§%5§.x = 2 * this.§#-§.x - param1;
         this.§%5§.y = 2 * this.§#-§.y - param2;
      }
      
      public function §!!'§(param1:Number, param2:Number) : void
      {
         this.§#-§.x = param1;
         this.§#-§.y = param2;
         this.§9!l§(this.§&R§,this.§0U§);
      }
      
      private function get §@"§() : §7!J§
      {
         return getChildAt(0) as §7!J§;
      }
      
      private function get §%5§() : §7!J§
      {
         return getChildAt(1) as §7!J§;
      }
      
      public function get §&R§() : Number
      {
         return this.§@"§.x;
      }
      
      public function get §0U§() : Number
      {
         return this.§@"§.y;
      }
      
      public function get §[g§() : Number
      {
         return this.§%5§.x;
      }
      
      public function get §2!b§() : Number
      {
         return this.§%5§.y;
      }
   }
}
