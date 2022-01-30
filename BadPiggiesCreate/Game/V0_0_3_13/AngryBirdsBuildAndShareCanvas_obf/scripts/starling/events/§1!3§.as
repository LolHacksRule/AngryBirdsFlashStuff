package starling.events
{
   import §@!#§.Texture;
   import §`L§.§-;§;
   import §`L§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §1!3§ extends Sprite
   {
      
      private static var §="8§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §,!O§:Point;
      
      private var §!"§:Texture;
      
      function §1!3§(param1:Context3D)
      {
         var _loc3_:§-;§ = null;
         super();
         this.§,!O§ = new Point();
         this.§!"§ = Texture.§&_§(param1,new §="8§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §-;§(this.§!"§);
            _loc3_.pivotX = this.§!"§.width / 2;
            _loc3_.pivotY = this.§!"§.height / 2;
            _loc3_.§9!!§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!"§.dispose();
         super.dispose();
      }
      
      public function §&^§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§,!O§.x += param1 - this.§#H§.x;
            this.§,!O§.y += param2 - this.§#H§.y;
         }
         this.§#H§.x = param1;
         this.§#H§.y = param2;
         this.§8m§.x = 2 * this.§,!O§.x - param1;
         this.§8m§.y = 2 * this.§,!O§.y - param2;
      }
      
      public function §?"?§(param1:Number, param2:Number) : void
      {
         this.§,!O§.x = param1;
         this.§,!O§.y = param2;
         this.§&^§(this.§&!_§,this.§'?§);
      }
      
      private function get §#H§() : §-;§
      {
         return getChildAt(0) as §-;§;
      }
      
      private function get §8m§() : §-;§
      {
         return getChildAt(1) as §-;§;
      }
      
      public function get §&!_§() : Number
      {
         return this.§#H§.x;
      }
      
      public function get §'?§() : Number
      {
         return this.§#H§.y;
      }
      
      public function get §2?§() : Number
      {
         return this.§8m§.x;
      }
      
      public function get §7!_§() : Number
      {
         return this.§8m§.y;
      }
   }
}
