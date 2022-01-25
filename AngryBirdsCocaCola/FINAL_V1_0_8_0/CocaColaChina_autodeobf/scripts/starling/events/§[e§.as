package starling.events
{
   import §&!9§.§,,§;
   import §&!9§.Sprite;
   import §6!4§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §[e§ extends Sprite
   {
      
      private static var §<!%§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@!$§:Point;
      
      private var §38§:Texture;
      
      function §[e§(param1:Context3D)
      {
         var _loc3_:§,,§ = null;
         super();
         this.§@!$§ = new Point();
         this.§38§ = Texture.§+!E§(param1,new §<!%§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §,,§(this.§38§);
            _loc3_.pivotX = this.§38§.width / 2;
            _loc3_.pivotY = this.§38§.height / 2;
            _loc3_.§2!2§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§38§.dispose();
         super.dispose();
      }
      
      public function §9W§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@!$§.x += param1 - this.§=x§.x;
            this.§@!$§.y += param2 - this.§=x§.y;
         }
         this.§=x§.x = param1;
         this.§=x§.y = param2;
         this.§=?§.x = 2 * this.§@!$§.x - param1;
         this.§=?§.y = 2 * this.§@!$§.y - param2;
      }
      
      public function §>!E§(param1:Number, param2:Number) : void
      {
         this.§@!$§.x = param1;
         this.§@!$§.y = param2;
         this.§9W§(this.§!!=§,this.§4l§);
      }
      
      private function get §=x§() : §,,§
      {
         return getChildAt(0) as §,,§;
      }
      
      private function get §=?§() : §,,§
      {
         return getChildAt(1) as §,,§;
      }
      
      public function get §!!=§() : Number
      {
         return this.§=x§.x;
      }
      
      public function get §4l§() : Number
      {
         return this.§=x§.y;
      }
      
      public function get §'!§() : Number
      {
         return this.§=?§.x;
      }
      
      public function get §4!"§() : Number
      {
         return this.§=?§.y;
      }
   }
}
