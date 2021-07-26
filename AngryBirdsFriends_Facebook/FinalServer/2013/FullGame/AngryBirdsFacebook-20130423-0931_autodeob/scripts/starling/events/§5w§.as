package starling.events
{
   import §'!6§.§ "E§;
   import §'!6§.Sprite;
   import §<5§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5w§ extends Sprite
   {
      
      private static var §`!!§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §#!I§:Point;
      
      private var §,b§:Texture;
      
      function §5w§(param1:Context3D)
      {
         var _loc3_:§ "E§ = null;
         super();
         this.§#!I§ = new Point();
         this.§,b§ = Texture.§[f§(param1,new §`!!§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new § "E§(this.§,b§);
            _loc3_.pivotX = this.§,b§.width / 2;
            _loc3_.pivotY = this.§,b§.height / 2;
            _loc3_.§^]§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§,b§.dispose();
         super.dispose();
      }
      
      public function §+v§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§#!I§.x += param1 - this.§,"+§.x;
            this.§#!I§.y += param2 - this.§,"+§.y;
         }
         this.§,"+§.x = param1;
         this.§,"+§.y = param2;
         this.§9$§.x = 2 * this.§#!I§.x - param1;
         this.§9$§.y = 2 * this.§#!I§.y - param2;
      }
      
      public function §],§(param1:Number, param2:Number) : void
      {
         this.§#!I§.x = param1;
         this.§#!I§.y = param2;
         this.§+v§(this.§"!h§,this.§"!W§);
      }
      
      private function get §,"+§() : § "E§
      {
         return getChildAt(0) as § "E§;
      }
      
      private function get §9$§() : § "E§
      {
         return getChildAt(1) as § "E§;
      }
      
      public function get §"!h§() : Number
      {
         return this.§,"+§.x;
      }
      
      public function get §"!W§() : Number
      {
         return this.§,"+§.y;
      }
      
      public function get §+9§() : Number
      {
         return this.§9$§.x;
      }
      
      public function get §<!Q§() : Number
      {
         return this.§9$§.y;
      }
   }
}
