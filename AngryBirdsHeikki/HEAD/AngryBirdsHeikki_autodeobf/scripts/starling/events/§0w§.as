package starling.events
{
   import §!!S§.Texture;
   import §6!;§.§!>§;
   import §6!;§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §0w§ extends Sprite
   {
      
      private static var §]7§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §!c§:Point;
      
      private var §`!-§:Texture;
      
      function §0w§(param1:Context3D)
      {
         var _loc3_:§!>§ = null;
         super();
         this.§!c§ = new Point();
         this.§`!-§ = Texture.§^D§(param1,new §]7§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §!>§(this.§`!-§);
            _loc3_.pivotX = this.§`!-§.width / 2;
            _loc3_.pivotY = this.§`!-§.height / 2;
            _loc3_.§`T§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§`!-§.dispose();
         super.dispose();
      }
      
      public function §?<§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§!c§.x += param1 - this.§9e§.x;
            this.§!c§.y += param2 - this.§9e§.y;
         }
         this.§9e§.x = param1;
         this.§9e§.y = param2;
         this.§4l§.x = 2 * this.§!c§.x - param1;
         this.§4l§.y = 2 * this.§!c§.y - param2;
      }
      
      public function §>!8§(param1:Number, param2:Number) : void
      {
         this.§!c§.x = param1;
         this.§!c§.y = param2;
         this.§?<§(this.§<_§,this.§3!a§);
      }
      
      private function get §9e§() : §!>§
      {
         return getChildAt(0) as §!>§;
      }
      
      private function get §4l§() : §!>§
      {
         return getChildAt(1) as §!>§;
      }
      
      public function get §<_§() : Number
      {
         return this.§9e§.x;
      }
      
      public function get §3!a§() : Number
      {
         return this.§9e§.y;
      }
      
      public function get §1=§() : Number
      {
         return this.§4l§.x;
      }
      
      public function get §+!3§() : Number
      {
         return this.§4l§.y;
      }
   }
}
