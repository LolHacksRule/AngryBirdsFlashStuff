package starling.events
{
   import §"!<§.Texture;
   import §<!-§.Sprite;
   import §<!-§.§^B§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §"k§ extends Sprite
   {
      
      private static var §'!5§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §=Y§:Point;
      
      private var §]m§:Texture;
      
      function §"k§(param1:Context3D)
      {
         var _loc3_:§^B§ = null;
         super();
         this.§=Y§ = new Point();
         this.§]m§ = Texture.§93§(param1,new §'!5§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §^B§(this.§]m§);
            _loc3_.pivotX = this.§]m§.width / 2;
            _loc3_.pivotY = this.§]m§.height / 2;
            _loc3_.§3S§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§]m§.dispose();
         super.dispose();
      }
      
      public function §`!;§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§=Y§.x += param1 - this.§%x§.x;
            this.§=Y§.y += param2 - this.§%x§.y;
         }
         this.§%x§.x = param1;
         this.§%x§.y = param2;
         this.§1l§.x = 2 * this.§=Y§.x - param1;
         this.§1l§.y = 2 * this.§=Y§.y - param2;
      }
      
      public function §5!I§(param1:Number, param2:Number) : void
      {
         this.§=Y§.x = param1;
         this.§=Y§.y = param2;
         this.§`!;§(this.§#w§,this.§2^§);
      }
      
      private function get §%x§() : §^B§
      {
         return getChildAt(0) as §^B§;
      }
      
      private function get §1l§() : §^B§
      {
         return getChildAt(1) as §^B§;
      }
      
      public function get §#w§() : Number
      {
         return this.§%x§.x;
      }
      
      public function get §2^§() : Number
      {
         return this.§%x§.y;
      }
      
      public function get §;!,§() : Number
      {
         return this.§1l§.x;
      }
      
      public function get §&!+§() : Number
      {
         return this.§1l§.y;
      }
   }
}
