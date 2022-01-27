package starling.events
{
   import §0l§.Texture;
   import §3H§.Sprite;
   import §3H§.§`!@§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?!E§ extends Sprite
   {
      
      private static var §!!9§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §6M§:Point;
      
      private var §+3§:Texture;
      
      function §?!E§(param1:Context3D)
      {
         var _loc3_:§`!@§ = null;
         super();
         this.§6M§ = new Point();
         this.§+3§ = Texture.§8Q§(param1,new §!!9§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §`!@§(this.§+3§);
            _loc3_.pivotX = this.§+3§.width / 2;
            _loc3_.pivotY = this.§+3§.height / 2;
            _loc3_.§6c§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§+3§.dispose();
         super.dispose();
      }
      
      public function §8u§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§6M§.x += param1 - this.§67§.x;
            this.§6M§.y += param2 - this.§67§.y;
         }
         this.§67§.x = param1;
         this.§67§.y = param2;
         this.§#1§.x = 2 * this.§6M§.x - param1;
         this.§#1§.y = 2 * this.§6M§.y - param2;
      }
      
      public function §9`§(param1:Number, param2:Number) : void
      {
         this.§6M§.x = param1;
         this.§6M§.y = param2;
         this.§8u§(this.§^]§,this.§1U§);
      }
      
      private function get §67§() : §`!@§
      {
         return getChildAt(0) as §`!@§;
      }
      
      private function get §#1§() : §`!@§
      {
         return getChildAt(1) as §`!@§;
      }
      
      public function get §^]§() : Number
      {
         return this.§67§.x;
      }
      
      public function get §1U§() : Number
      {
         return this.§67§.y;
      }
      
      public function get §^B§() : Number
      {
         return this.§#1§.x;
      }
      
      public function get §]M§() : Number
      {
         return this.§#1§.y;
      }
   }
}
