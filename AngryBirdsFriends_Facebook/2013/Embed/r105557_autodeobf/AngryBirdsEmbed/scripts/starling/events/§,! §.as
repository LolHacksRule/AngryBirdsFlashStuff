package starling.events
{
   import §"X§.Texture;
   import §;^§.§ @§;
   import §;^§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §,! § extends Sprite
   {
      
      private static var §%e§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@l§:Point;
      
      private var §`!G§:Texture;
      
      function §,! §(param1:Context3D)
      {
         var _loc3_:§ @§ = null;
         super();
         this.§@l§ = new Point();
         this.§`!G§ = Texture.§-!4§(param1,new §%e§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new § @§(this.§`!G§);
            _loc3_.pivotX = this.§`!G§.width / 2;
            _loc3_.pivotY = this.§`!G§.height / 2;
            _loc3_.§3_§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§`!G§.dispose();
         super.dispose();
      }
      
      public function §31§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@l§.x += param1 - this.§ S§.x;
            this.§@l§.y += param2 - this.§ S§.y;
         }
         this.§ S§.x = param1;
         this.§ S§.y = param2;
         this.§7!;§.x = 2 * this.§@l§.x - param1;
         this.§7!;§.y = 2 * this.§@l§.y - param2;
      }
      
      public function §,!H§(param1:Number, param2:Number) : void
      {
         this.§@l§.x = param1;
         this.§@l§.y = param2;
         this.§31§(this.§@C§,this.§?!%§);
      }
      
      private function get § S§() : § @§
      {
         return getChildAt(0) as § @§;
      }
      
      private function get §7!;§() : § @§
      {
         return getChildAt(1) as § @§;
      }
      
      public function get §@C§() : Number
      {
         return this.§ S§.x;
      }
      
      public function get §?!%§() : Number
      {
         return this.§ S§.y;
      }
      
      public function get §^f§() : Number
      {
         return this.§7!;§.x;
      }
      
      public function get §%f§() : Number
      {
         return this.§7!;§.y;
      }
   }
}
