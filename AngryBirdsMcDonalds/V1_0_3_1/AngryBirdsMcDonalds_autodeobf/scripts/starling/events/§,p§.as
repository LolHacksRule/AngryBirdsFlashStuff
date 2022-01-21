package starling.events
{
   import §&Y§.Texture;
   import §&c§.§%!a§;
   import §&c§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §,p§ extends Sprite
   {
      
      private static var § !0§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §1x§:Point;
      
      private var §'C§:Texture;
      
      function §,p§(param1:Context3D)
      {
         var _loc3_:§%!a§ = null;
         super();
         this.§1x§ = new Point();
         this.§'C§ = Texture.§'!l§(param1,new § !0§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §%!a§(this.§'C§);
            _loc3_.pivotX = this.§'C§.width / 2;
            _loc3_.pivotY = this.§'C§.height / 2;
            _loc3_.§8m§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§'C§.dispose();
         super.dispose();
      }
      
      public function §0E§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§1x§.x += param1 - this.§4q§.x;
            this.§1x§.y += param2 - this.§4q§.y;
         }
         this.§4q§.x = param1;
         this.§4q§.y = param2;
         this.§@Z§.x = 2 * this.§1x§.x - param1;
         this.§@Z§.y = 2 * this.§1x§.y - param2;
      }
      
      public function §3!6§(param1:Number, param2:Number) : void
      {
         this.§1x§.x = param1;
         this.§1x§.y = param2;
         this.§0E§(this.§&!o§,this.§>$§);
      }
      
      private function get §4q§() : §%!a§
      {
         return getChildAt(0) as §%!a§;
      }
      
      private function get §@Z§() : §%!a§
      {
         return getChildAt(1) as §%!a§;
      }
      
      public function get §&!o§() : Number
      {
         return this.§4q§.x;
      }
      
      public function get §>$§() : Number
      {
         return this.§4q§.y;
      }
      
      public function get §'!8§() : Number
      {
         return this.§@Z§.x;
      }
      
      public function get §+!Y§() : Number
      {
         return this.§@Z§.y;
      }
   }
}
