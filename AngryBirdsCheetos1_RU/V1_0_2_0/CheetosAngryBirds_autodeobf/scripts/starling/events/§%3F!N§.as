package starling.events
{
   import §,H§.§;!9§;
   import §,H§.Sprite;
   import §,Y§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!N§ extends Sprite
   {
      
      private static var §+N§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@2§:Point;
      
      private var §&%§:Texture;
      
      function §?!N§(param1:Context3D)
      {
         var _loc3_:§;!9§ = null;
         super();
         this.§@2§ = new Point();
         this.§&%§ = Texture.§@![§(param1,new §+N§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §;!9§(this.§&%§);
            _loc3_.pivotX = this.§&%§.width / 2;
            _loc3_.pivotY = this.§&%§.height / 2;
            _loc3_.§09§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§&%§.dispose();
         super.dispose();
      }
      
      public function §!l§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@2§.x += param1 - this.§<&§.x;
            this.§@2§.y += param2 - this.§<&§.y;
         }
         this.§<&§.x = param1;
         this.§<&§.y = param2;
         this.§!B§.x = 2 * this.§@2§.x - param1;
         this.§!B§.y = 2 * this.§@2§.y - param2;
      }
      
      public function §%0§(param1:Number, param2:Number) : void
      {
         this.§@2§.x = param1;
         this.§@2§.y = param2;
         this.§!l§(this.§`d§,this.§3l§);
      }
      
      private function get §<&§() : §;!9§
      {
         return getChildAt(0) as §;!9§;
      }
      
      private function get §!B§() : §;!9§
      {
         return getChildAt(1) as §;!9§;
      }
      
      public function get §`d§() : Number
      {
         return this.§<&§.x;
      }
      
      public function get §3l§() : Number
      {
         return this.§<&§.y;
      }
      
      public function get §4f§() : Number
      {
         return this.§!B§.x;
      }
      
      public function get §4!9§() : Number
      {
         return this.§!B§.y;
      }
   }
}
