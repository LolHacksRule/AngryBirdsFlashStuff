package starling.events
{
   import §!!R§.§#q§;
   import §!!R§.Sprite;
   import §2k§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §^x§ extends Sprite
   {
      
      private static var §]o§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §5!,§:Point;
      
      private var §>c§:Texture;
      
      function §^x§(param1:Context3D)
      {
         var _loc3_:§#q§ = null;
         super();
         this.§5!,§ = new Point();
         this.§>c§ = Texture.§"!1§(param1,new §]o§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §#q§(this.§>c§);
            _loc3_.pivotX = this.§>c§.width / 2;
            _loc3_.pivotY = this.§>c§.height / 2;
            _loc3_.§],§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§>c§.dispose();
         super.dispose();
      }
      
      public function §#9§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§5!,§.x += param1 - this.§8y§.x;
            this.§5!,§.y += param2 - this.§8y§.y;
         }
         this.§8y§.x = param1;
         this.§8y§.y = param2;
         this.§1P§.x = 2 * this.§5!,§.x - param1;
         this.§1P§.y = 2 * this.§5!,§.y - param2;
      }
      
      public function §`-§(param1:Number, param2:Number) : void
      {
         this.§5!,§.x = param1;
         this.§5!,§.y = param2;
         this.§#9§(this.§27§,this.§=;§);
      }
      
      private function get §8y§() : §#q§
      {
         return getChildAt(0) as §#q§;
      }
      
      private function get §1P§() : §#q§
      {
         return getChildAt(1) as §#q§;
      }
      
      public function get §27§() : Number
      {
         return this.§8y§.x;
      }
      
      public function get §=;§() : Number
      {
         return this.§8y§.y;
      }
      
      public function get §<>§() : Number
      {
         return this.§1P§.x;
      }
      
      public function get §3u§() : Number
      {
         return this.§1P§.y;
      }
   }
}
