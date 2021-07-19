package starling.events
{
   import §%q§.Texture;
   import §6![§.§1!J§;
   import §6![§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § !k§ extends Sprite
   {
      
      private static var §%!1§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §!!]§:Point;
      
      private var §'!t§:Texture;
      
      function § !k§(param1:Context3D)
      {
         var _loc3_:§1!J§ = null;
         super();
         this.§!!]§ = new Point();
         this.§'!t§ = Texture.§1o§(param1,new §%!1§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §1!J§(this.§'!t§);
            _loc3_.pivotX = this.§'!t§.width / 2;
            _loc3_.pivotY = this.§'!t§.height / 2;
            _loc3_.§!!9§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§'!t§.dispose();
         super.dispose();
      }
      
      public function §#-§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§!!]§.x += param1 - this.§7!M§.x;
            this.§!!]§.y += param2 - this.§7!M§.y;
         }
         this.§7!M§.x = param1;
         this.§7!M§.y = param2;
         this.§@!P§.x = 2 * this.§!!]§.x - param1;
         this.§@!P§.y = 2 * this.§!!]§.y - param2;
      }
      
      public function §@!M§(param1:Number, param2:Number) : void
      {
         this.§!!]§.x = param1;
         this.§!!]§.y = param2;
         this.§#-§(this.§+'§,this.§[Q§);
      }
      
      private function get §7!M§() : §1!J§
      {
         return getChildAt(0) as §1!J§;
      }
      
      private function get §@!P§() : §1!J§
      {
         return getChildAt(1) as §1!J§;
      }
      
      public function get §+'§() : Number
      {
         return this.§7!M§.x;
      }
      
      public function get §[Q§() : Number
      {
         return this.§7!M§.y;
      }
      
      public function get §?!O§() : Number
      {
         return this.§@!P§.x;
      }
      
      public function get §4!s§() : Number
      {
         return this.§@!P§.y;
      }
   }
}
