package starling.events
{
   import §>u§.Texture;
   import §]!6§.§>T§;
   import §]!6§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §=!9§ extends Sprite
   {
      
      private static var §#p§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var § b§:Point;
      
      private var §,=§:Texture;
      
      function §=!9§(param1:Context3D)
      {
         var _loc3_:§>T§ = null;
         super();
         this.§ b§ = new Point();
         this.§,=§ = Texture.§`P§(param1,new §#p§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §>T§(this.§,=§);
            _loc3_.pivotX = this.§,=§.width / 2;
            _loc3_.pivotY = this.§,=§.height / 2;
            _loc3_.§]M§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§,=§.dispose();
         super.dispose();
      }
      
      public function §8!?§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§ b§.x += param1 - this.§[f§.x;
            this.§ b§.y += param2 - this.§[f§.y;
         }
         this.§[f§.x = param1;
         this.§[f§.y = param2;
         this.§#!4§.x = 2 * this.§ b§.x - param1;
         this.§#!4§.y = 2 * this.§ b§.y - param2;
      }
      
      public function §0!F§(param1:Number, param2:Number) : void
      {
         this.§ b§.x = param1;
         this.§ b§.y = param2;
         this.§8!?§(this.§3!E§,this.§]l§);
      }
      
      private function get §[f§() : §>T§
      {
         return getChildAt(0) as §>T§;
      }
      
      private function get §#!4§() : §>T§
      {
         return getChildAt(1) as §>T§;
      }
      
      public function get §3!E§() : Number
      {
         return this.§[f§.x;
      }
      
      public function get §]l§() : Number
      {
         return this.§[f§.y;
      }
      
      public function get §1!G§() : Number
      {
         return this.§#!4§.x;
      }
      
      public function get §#P§() : Number
      {
         return this.§#!4§.y;
      }
   }
}
