package starling.events
{
   import §21§.Texture;
   import §90§.§8S§;
   import §90§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §1!4§ extends Sprite
   {
      
      private static var §<$§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@l§:Point;
      
      private var §!r§:Texture;
      
      function §1!4§(param1:Context3D)
      {
         var _loc3_:§8S§ = null;
         super();
         this.§@l§ = new Point();
         this.§!r§ = Texture.§ !M§(param1,new §<$§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §8S§(this.§!r§);
            _loc3_.pivotX = this.§!r§.width / 2;
            _loc3_.pivotY = this.§!r§.height / 2;
            _loc3_.§]u§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!r§.dispose();
         super.dispose();
      }
      
      public function §55§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@l§.x += param1 - this.§4!6§.x;
            this.§@l§.y += param2 - this.§4!6§.y;
         }
         this.§4!6§.x = param1;
         this.§4!6§.y = param2;
         this.§5C§.x = 2 * this.§@l§.x - param1;
         this.§5C§.y = 2 * this.§@l§.y - param2;
      }
      
      public function §[!6§(param1:Number, param2:Number) : void
      {
         this.§@l§.x = param1;
         this.§@l§.y = param2;
         this.§55§(this.§>!F§,this.§'M§);
      }
      
      private function get §4!6§() : §8S§
      {
         return getChildAt(0) as §8S§;
      }
      
      private function get §5C§() : §8S§
      {
         return getChildAt(1) as §8S§;
      }
      
      public function get §>!F§() : Number
      {
         return this.§4!6§.x;
      }
      
      public function get §'M§() : Number
      {
         return this.§4!6§.y;
      }
      
      public function get § D§() : Number
      {
         return this.§5C§.x;
      }
      
      public function get §0!<§() : Number
      {
         return this.§5C§.y;
      }
   }
}
