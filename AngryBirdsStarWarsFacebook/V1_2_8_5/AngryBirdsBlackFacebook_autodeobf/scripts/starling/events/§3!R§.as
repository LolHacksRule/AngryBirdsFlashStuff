package starling.events
{
   import §&"s§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   import §use§.§,!u§;
   import §use§.Sprite;
   
   class §3!R§ extends Sprite
   {
      
      private static var §4i§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §3!_§:Point;
      
      private var §'"C§:Texture;
      
      function §3!R§(param1:Context3D)
      {
         var _loc3_:§,!u§ = null;
         super();
         this.§3!_§ = new Point();
         this.§'"C§ = Texture.§43§(param1,new §4i§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §,!u§(this.§'"C§);
            _loc3_.pivotX = this.§'"C§.width / 2;
            _loc3_.pivotY = this.§'"C§.height / 2;
            _loc3_.§^!G§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§'"C§.dispose();
         super.dispose();
      }
      
      public function §-3§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§3!_§.x += param1 - this.§>!h§.x;
            this.§3!_§.y += param2 - this.§>!h§.y;
         }
         this.§>!h§.x = param1;
         this.§>!h§.y = param2;
         this.§8!m§.x = 2 * this.§3!_§.x - param1;
         this.§8!m§.y = 2 * this.§3!_§.y - param2;
      }
      
      public function §8"L§(param1:Number, param2:Number) : void
      {
         this.§3!_§.x = param1;
         this.§3!_§.y = param2;
         this.§-3§(this.§1"s§,this.§<!l§);
      }
      
      private function get §>!h§() : §,!u§
      {
         return getChildAt(0) as §,!u§;
      }
      
      private function get §8!m§() : §,!u§
      {
         return getChildAt(1) as §,!u§;
      }
      
      public function get §1"s§() : Number
      {
         return this.§>!h§.x;
      }
      
      public function get §<!l§() : Number
      {
         return this.§>!h§.y;
      }
      
      public function get §1"x§() : Number
      {
         return this.§8!m§.x;
      }
      
      public function get §;=§() : Number
      {
         return this.§8!m§.y;
      }
   }
}
