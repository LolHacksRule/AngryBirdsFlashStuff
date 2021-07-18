package starling.events
{
   import §[P§.Texture;
   import §^V§.§1!,§;
   import §^V§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §6p§ extends Sprite
   {
      
      private static var §8f§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §%M§:Point;
      
      private var §<i§:Texture;
      
      function §6p§(param1:Context3D)
      {
         var _loc3_:§1!,§ = null;
         super();
         this.§%M§ = new Point();
         this.§<i§ = Texture.§%U§(param1,new §8f§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §1!,§(this.§<i§);
            _loc3_.pivotX = this.§<i§.width / 2;
            _loc3_.pivotY = this.§<i§.height / 2;
            _loc3_.§<!<§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§<i§.dispose();
         super.dispose();
      }
      
      public function §?G§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§%M§.x += param1 - this.§^!9§.x;
            this.§%M§.y += param2 - this.§^!9§.y;
         }
         this.§^!9§.x = param1;
         this.§^!9§.y = param2;
         this.§!_§.x = 2 * this.§%M§.x - param1;
         this.§!_§.y = 2 * this.§%M§.y - param2;
      }
      
      public function §!=§(param1:Number, param2:Number) : void
      {
         this.§%M§.x = param1;
         this.§%M§.y = param2;
         this.§?G§(this.§3&§,this.§4]§);
      }
      
      private function get §^!9§() : §1!,§
      {
         return getChildAt(0) as §1!,§;
      }
      
      private function get §!_§() : §1!,§
      {
         return getChildAt(1) as §1!,§;
      }
      
      public function get §3&§() : Number
      {
         return this.§^!9§.x;
      }
      
      public function get §4]§() : Number
      {
         return this.§^!9§.y;
      }
      
      public function get §-!<§() : Number
      {
         return this.§!_§.x;
      }
      
      public function get § [§() : Number
      {
         return this.§!_§.y;
      }
   }
}
