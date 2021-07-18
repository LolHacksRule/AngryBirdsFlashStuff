package starling.events
{
   import §2!-§.Texture;
   import §`a§.§>?§;
   import §`a§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5!,§ extends Sprite
   {
      
      private static var §package§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §#9§:Point;
      
      private var §[!H§:Texture;
      
      function §5!,§(param1:Context3D)
      {
         var _loc3_:§>?§ = null;
         super();
         this.§#9§ = new Point();
         this.§[!H§ = Texture.§#v§(param1,new §package§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §>?§(this.§[!H§);
            _loc3_.pivotX = this.§[!H§.width / 2;
            _loc3_.pivotY = this.§[!H§.height / 2;
            _loc3_.§=!;§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§[!H§.dispose();
         super.dispose();
      }
      
      public function §`-§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§#9§.x += param1 - this.§1P§.x;
            this.§#9§.y += param2 - this.§1P§.y;
         }
         this.§1P§.x = param1;
         this.§1P§.y = param2;
         this.§27§.x = 2 * this.§#9§.x - param1;
         this.§27§.y = 2 * this.§#9§.y - param2;
      }
      
      public function §8y§(param1:Number, param2:Number) : void
      {
         this.§#9§.x = param1;
         this.§#9§.y = param2;
         this.§`-§(this.§=;§,this.§<>§);
      }
      
      private function get §1P§() : §>?§
      {
         return getChildAt(0) as §>?§;
      }
      
      private function get §27§() : §>?§
      {
         return getChildAt(1) as §>?§;
      }
      
      public function get §=;§() : Number
      {
         return this.§1P§.x;
      }
      
      public function get §<>§() : Number
      {
         return this.§1P§.y;
      }
      
      public function get §3u§() : Number
      {
         return this.§27§.x;
      }
      
      public function get §]o§() : Number
      {
         return this.§27§.y;
      }
   }
}
