package starling.events
{
   import § !K§.§5+§;
   import § !K§.Sprite;
   import §"![§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §`3§ extends Sprite
   {
      
      private static var §1w§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@Z§:Point;
      
      private var §<Y§:Texture;
      
      function §`3§(param1:Context3D)
      {
         var _loc3_:§5+§ = null;
         super();
         this.§@Z§ = new Point();
         this.§<Y§ = Texture.§^!1§(param1,new §1w§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §5+§(this.§<Y§);
            _loc3_.pivotX = this.§<Y§.width / 2;
            _loc3_.pivotY = this.§<Y§.height / 2;
            _loc3_.§^Y§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§<Y§.dispose();
         super.dispose();
      }
      
      public function §88§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@Z§.x += param1 - this.§[O§.x;
            this.§@Z§.y += param2 - this.§[O§.y;
         }
         this.§[O§.x = param1;
         this.§[O§.y = param2;
         this.§@!I§.x = 2 * this.§@Z§.x - param1;
         this.§@!I§.y = 2 * this.§@Z§.y - param2;
      }
      
      public function §&j§(param1:Number, param2:Number) : void
      {
         this.§@Z§.x = param1;
         this.§@Z§.y = param2;
         this.§88§(this.§"t§,this.§#a§);
      }
      
      private function get §[O§() : §5+§
      {
         return getChildAt(0) as §5+§;
      }
      
      private function get §@!I§() : §5+§
      {
         return getChildAt(1) as §5+§;
      }
      
      public function get §"t§() : Number
      {
         return this.§[O§.x;
      }
      
      public function get §#a§() : Number
      {
         return this.§[O§.y;
      }
      
      public function get §1! §() : Number
      {
         return this.§@!I§.x;
      }
      
      public function get §!g§() : Number
      {
         return this.§@!I§.y;
      }
   }
}
