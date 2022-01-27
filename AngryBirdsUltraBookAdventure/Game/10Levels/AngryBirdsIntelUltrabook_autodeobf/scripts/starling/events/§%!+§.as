package starling.events
{
   import §#!,§.§0!b§;
   import §#!,§.Sprite;
   import §6!J§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §%!+§ extends Sprite
   {
      
      private static var §5!4§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §`'§:Point;
      
      private var §>!S§:Texture;
      
      function §%!+§(param1:Context3D)
      {
         var _loc3_:§0!b§ = null;
         super();
         this.§`'§ = new Point();
         this.§>!S§ = Texture.§'o§(param1,new §5!4§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §0!b§(this.§>!S§);
            _loc3_.pivotX = this.§>!S§.width / 2;
            _loc3_.pivotY = this.§>!S§.height / 2;
            _loc3_.§<@§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§>!S§.dispose();
         super.dispose();
      }
      
      public function §<!T§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§`'§.x += param1 - this.§#0§.x;
            this.§`'§.y += param2 - this.§#0§.y;
         }
         this.§#0§.x = param1;
         this.§#0§.y = param2;
         this.§90§.x = 2 * this.§`'§.x - param1;
         this.§90§.y = 2 * this.§`'§.y - param2;
      }
      
      public function §;!Z§(param1:Number, param2:Number) : void
      {
         this.§`'§.x = param1;
         this.§`'§.y = param2;
         this.§<!T§(this.§1y§,this.§"I§);
      }
      
      private function get §#0§() : §0!b§
      {
         return getChildAt(0) as §0!b§;
      }
      
      private function get §90§() : §0!b§
      {
         return getChildAt(1) as §0!b§;
      }
      
      public function get §1y§() : Number
      {
         return this.§#0§.x;
      }
      
      public function get §"I§() : Number
      {
         return this.§#0§.y;
      }
      
      public function get §%!^§() : Number
      {
         return this.§90§.x;
      }
      
      public function get §`b§() : Number
      {
         return this.§90§.y;
      }
   }
}
