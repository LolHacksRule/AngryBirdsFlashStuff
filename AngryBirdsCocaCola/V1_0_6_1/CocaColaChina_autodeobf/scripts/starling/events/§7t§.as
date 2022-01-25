package starling.events
{
   import §<!$§.Sprite;
   import §<!$§.§[!5§;
   import §@'§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §7t§ extends Sprite
   {
      
      private static var §7!;§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@!J§:Point;
      
      private var §3!+§:Texture;
      
      function §7t§(param1:Context3D)
      {
         var _loc3_:§[!5§ = null;
         super();
         this.§@!J§ = new Point();
         this.§3!+§ = Texture.§"z§(param1,new §7!;§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §[!5§(this.§3!+§);
            _loc3_.pivotX = this.§3!+§.width / 2;
            _loc3_.pivotY = this.§3!+§.height / 2;
            _loc3_.§2!-§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3!+§.dispose();
         super.dispose();
      }
      
      public function §]Y§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@!J§.x += param1 - this.§ !0§.x;
            this.§@!J§.y += param2 - this.§ !0§.y;
         }
         this.§ !0§.x = param1;
         this.§ !0§.y = param2;
         this.§>%§.x = 2 * this.§@!J§.x - param1;
         this.§>%§.y = 2 * this.§@!J§.y - param2;
      }
      
      public function §1&§(param1:Number, param2:Number) : void
      {
         this.§@!J§.x = param1;
         this.§@!J§.y = param2;
         this.§]Y§(this.§>!7§,this.§2!Z§);
      }
      
      private function get § !0§() : §[!5§
      {
         return getChildAt(0) as §[!5§;
      }
      
      private function get §>%§() : §[!5§
      {
         return getChildAt(1) as §[!5§;
      }
      
      public function get §>!7§() : Number
      {
         return this.§ !0§.x;
      }
      
      public function get §2!Z§() : Number
      {
         return this.§ !0§.y;
      }
      
      public function get §<z§() : Number
      {
         return this.§>%§.x;
      }
      
      public function get §!!@§() : Number
      {
         return this.§>%§.y;
      }
   }
}
