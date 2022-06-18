package starling.events
{
   import §&!7§.Texture;
   import §->§.§2! §;
   import §->§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §6V§ extends Sprite
   {
      
      private static var §7!,§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §11§:Point;
      
      private var §3P§:Texture;
      
      function §6V§(param1:Context3D)
      {
         var _loc3_:§2! § = null;
         super();
         this.§11§ = new Point();
         this.§3P§ = Texture.§4?§(param1,new §7!,§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §2! §(this.§3P§);
            _loc3_.pivotX = this.§3P§.width / 2;
            _loc3_.pivotY = this.§3P§.height / 2;
            _loc3_.§'!D§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3P§.dispose();
         super.dispose();
      }
      
      public function §`!8§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§11§.x += param1 - this.§9d§.x;
            this.§11§.y += param2 - this.§9d§.y;
         }
         this.§9d§.x = param1;
         this.§9d§.y = param2;
         this.§1!#§.x = 2 * this.§11§.x - param1;
         this.§1!#§.y = 2 * this.§11§.y - param2;
      }
      
      public function §,>§(param1:Number, param2:Number) : void
      {
         this.§11§.x = param1;
         this.§11§.y = param2;
         this.§`!8§(this.§^D§,this.§07§);
      }
      
      private function get §9d§() : §2! §
      {
         return getChildAt(0) as §2! §;
      }
      
      private function get §1!#§() : §2! §
      {
         return getChildAt(1) as §2! §;
      }
      
      public function get §^D§() : Number
      {
         return this.§9d§.x;
      }
      
      public function get §07§() : Number
      {
         return this.§9d§.y;
      }
      
      public function get §7!7§() : Number
      {
         return this.§1!#§.x;
      }
      
      public function get §`!'§() : Number
      {
         return this.§1!#§.y;
      }
   }
}
