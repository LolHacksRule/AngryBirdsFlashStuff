package starling.events
{
   import § 0§.Texture;
   import §#!f§.§9!,§;
   import §#!f§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §-!Z§ extends Sprite
   {
      
      private static var §3!5§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §1!5§:Point;
      
      private var §<;§:Texture;
      
      function §-!Z§(param1:Context3D)
      {
         var _loc3_:§9!,§ = null;
         super();
         this.§1!5§ = new Point();
         this.§<;§ = Texture.§&!W§(param1,new §3!5§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §9!,§(this.§<;§);
            _loc3_.pivotX = this.§<;§.width / 2;
            _loc3_.pivotY = this.§<;§.height / 2;
            _loc3_.§4!W§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§<;§.dispose();
         super.dispose();
      }
      
      public function §`!#§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§1!5§.x += param1 - this.§'!+§.x;
            this.§1!5§.y += param2 - this.§'!+§.y;
         }
         this.§'!+§.x = param1;
         this.§'!+§.y = param2;
         this.§ 7§.x = 2 * this.§1!5§.x - param1;
         this.§ 7§.y = 2 * this.§1!5§.y - param2;
      }
      
      public function §6!+§(param1:Number, param2:Number) : void
      {
         this.§1!5§.x = param1;
         this.§1!5§.y = param2;
         this.§`!#§(this.§@!0§,this.§0!J§);
      }
      
      private function get §'!+§() : §9!,§
      {
         return getChildAt(0) as §9!,§;
      }
      
      private function get § 7§() : §9!,§
      {
         return getChildAt(1) as §9!,§;
      }
      
      public function get §@!0§() : Number
      {
         return this.§'!+§.x;
      }
      
      public function get §0!J§() : Number
      {
         return this.§'!+§.y;
      }
      
      public function get §`%§() : Number
      {
         return this.§ 7§.x;
      }
      
      public function get §3D§() : Number
      {
         return this.§ 7§.y;
      }
   }
}
