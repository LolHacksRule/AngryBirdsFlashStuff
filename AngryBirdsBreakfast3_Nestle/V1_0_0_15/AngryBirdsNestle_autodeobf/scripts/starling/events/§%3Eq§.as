package starling.events
{
   import §3!J§.§4!2§;
   import §3!J§.Sprite;
   import §=!4§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §>q§ extends Sprite
   {
      
      private static var § ?§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var § %§:Point;
      
      private var §>"5§:Texture;
      
      function §>q§(param1:Context3D)
      {
         var _loc3_:§4!2§ = null;
         super();
         this.§ %§ = new Point();
         this.§>"5§ = Texture.§83§(param1,new § ?§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §4!2§(this.§>"5§);
            _loc3_.pivotX = this.§>"5§.width / 2;
            _loc3_.pivotY = this.§>"5§.height / 2;
            _loc3_.§6!U§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§>"5§.dispose();
         super.dispose();
      }
      
      public function §]!3§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§ %§.x += param1 - this.§`C§.x;
            this.§ %§.y += param2 - this.§`C§.y;
         }
         this.§`C§.x = param1;
         this.§`C§.y = param2;
         this.§9!=§.x = 2 * this.§ %§.x - param1;
         this.§9!=§.y = 2 * this.§ %§.y - param2;
      }
      
      public function §=]§(param1:Number, param2:Number) : void
      {
         this.§ %§.x = param1;
         this.§ %§.y = param2;
         this.§]!3§(this.§"",§,this.§>u§);
      }
      
      private function get §`C§() : §4!2§
      {
         return getChildAt(0) as §4!2§;
      }
      
      private function get §9!=§() : §4!2§
      {
         return getChildAt(1) as §4!2§;
      }
      
      public function get §"",§() : Number
      {
         return this.§`C§.x;
      }
      
      public function get §>u§() : Number
      {
         return this.§`C§.y;
      }
      
      public function get §@!_§() : Number
      {
         return this.§9!=§.x;
      }
      
      public function get §%a§() : Number
      {
         return this.§9!=§.y;
      }
   }
}
