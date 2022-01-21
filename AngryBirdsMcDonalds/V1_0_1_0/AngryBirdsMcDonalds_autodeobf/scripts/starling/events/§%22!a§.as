package starling.events
{
   import §2!g§.§<7§;
   import §2!g§.Sprite;
   import §@j§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §"!a§ extends Sprite
   {
      
      private static var §0k§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §3]§:Point;
      
      private var §6l§:Texture;
      
      function §"!a§(param1:Context3D)
      {
         var _loc3_:§<7§ = null;
         super();
         this.§3]§ = new Point();
         this.§6l§ = Texture.§;e§(param1,new §0k§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §<7§(this.§6l§);
            _loc3_.pivotX = this.§6l§.width / 2;
            _loc3_.pivotY = this.§6l§.height / 2;
            _loc3_.§=e§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§6l§.dispose();
         super.dispose();
      }
      
      public function §&!]§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§3]§.x += param1 - this.§-g§.x;
            this.§3]§.y += param2 - this.§-g§.y;
         }
         this.§-g§.x = param1;
         this.§-g§.y = param2;
         this.§>%§.x = 2 * this.§3]§.x - param1;
         this.§>%§.y = 2 * this.§3]§.y - param2;
      }
      
      public function §]<§(param1:Number, param2:Number) : void
      {
         this.§3]§.x = param1;
         this.§3]§.y = param2;
         this.§&!]§(this.§?![§,this.§,!4§);
      }
      
      private function get §-g§() : §<7§
      {
         return getChildAt(0) as §<7§;
      }
      
      private function get §>%§() : §<7§
      {
         return getChildAt(1) as §<7§;
      }
      
      public function get §?![§() : Number
      {
         return this.§-g§.x;
      }
      
      public function get §,!4§() : Number
      {
         return this.§-g§.y;
      }
      
      public function get §=!$§() : Number
      {
         return this.§>%§.x;
      }
      
      public function get §&r§() : Number
      {
         return this.§>%§.y;
      }
   }
}
