package starling.events
{
   import §7R§.Texture;
   import §default§.§=!Z§;
   import §default§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §<E§ extends Sprite
   {
      
      private static var §?"!§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §,!S§:Point;
      
      private var §+!m§:Texture;
      
      function §<E§(param1:Context3D)
      {
         var _loc3_:§=!Z§ = null;
         super();
         this.§,!S§ = new Point();
         this.§+!m§ = Texture.§5s§(param1,new §?"!§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §=!Z§(this.§+!m§);
            _loc3_.pivotX = this.§+!m§.width / 2;
            _loc3_.pivotY = this.§+!m§.height / 2;
            _loc3_.§#!1§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§+!m§.dispose();
         super.dispose();
      }
      
      public function §8!k§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§,!S§.x += param1 - this.§,§.x;
            this.§,!S§.y += param2 - this.§,§.y;
         }
         this.§,§.x = param1;
         this.§,§.y = param2;
         this.§+q§.x = 2 * this.§,!S§.x - param1;
         this.§+q§.y = 2 * this.§,!S§.y - param2;
      }
      
      public function §='§(param1:Number, param2:Number) : void
      {
         this.§,!S§.x = param1;
         this.§,!S§.y = param2;
         this.§8!k§(this.§7!$§,this.§3!6§);
      }
      
      private function get §,§() : §=!Z§
      {
         return getChildAt(0) as §=!Z§;
      }
      
      private function get §+q§() : §=!Z§
      {
         return getChildAt(1) as §=!Z§;
      }
      
      public function get §7!$§() : Number
      {
         return this.§,§.x;
      }
      
      public function get §3!6§() : Number
      {
         return this.§,§.y;
      }
      
      public function get § ^§() : Number
      {
         return this.§+q§.x;
      }
      
      public function get §'c§() : Number
      {
         return this.§+q§.y;
      }
   }
}
