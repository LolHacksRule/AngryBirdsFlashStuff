package starling.events
{
   import § !9§.Texture;
   import §[=§.§@!#§;
   import §[=§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § "§ extends Sprite
   {
      
      private static var §>!A§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §]!9§:Point;
      
      private var §4! §:Texture;
      
      function § "§(param1:Context3D)
      {
         var _loc3_:§@!#§ = null;
         super();
         this.§]!9§ = new Point();
         this.§4! § = Texture.§22§(param1,new §>!A§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §@!#§(this.§4! §);
            _loc3_.pivotX = this.§4! §.width / 2;
            _loc3_.pivotY = this.§4! §.height / 2;
            _loc3_.§^!]§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§4! §.dispose();
         super.dispose();
      }
      
      public function §-!A§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§]!9§.x += param1 - this.§set §.x;
            this.§]!9§.y += param2 - this.§set §.y;
         }
         this.§set §.x = param1;
         this.§set §.y = param2;
         this.§;g§.x = 2 * this.§]!9§.x - param1;
         this.§;g§.y = 2 * this.§]!9§.y - param2;
      }
      
      public function §1x§(param1:Number, param2:Number) : void
      {
         this.§]!9§.x = param1;
         this.§]!9§.y = param2;
         this.§-!A§(this.§2!?§,this.§?§);
      }
      
      private function get §set §() : §@!#§
      {
         return getChildAt(0) as §@!#§;
      }
      
      private function get §;g§() : §@!#§
      {
         return getChildAt(1) as §@!#§;
      }
      
      public function get §2!?§() : Number
      {
         return this.§set §.x;
      }
      
      public function get §?§() : Number
      {
         return this.§set §.y;
      }
      
      public function get §^O§() : Number
      {
         return this.§;g§.x;
      }
      
      public function get §3!#§() : Number
      {
         return this.§;g§.y;
      }
   }
}
