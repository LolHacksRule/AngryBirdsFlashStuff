package starling.events
{
   import §&7§.Texture;
   import §`!n§.§+i§;
   import §`!n§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §5!F§ extends Sprite
   {
      
      private static var §'m§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §&!m§:Point;
      
      private var §!W§:Texture;
      
      function §5!F§(param1:Context3D)
      {
         var _loc3_:§+i§ = null;
         super();
         this.§&!m§ = new Point();
         this.§!W§ = Texture.§4_§(param1,new §'m§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §+i§(this.§!W§);
            _loc3_.pivotX = this.§!W§.width / 2;
            _loc3_.pivotY = this.§!W§.height / 2;
            _loc3_.§77§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§!W§.dispose();
         super.dispose();
      }
      
      public function §4!8§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§&!m§.x += param1 - this.§3k§.x;
            this.§&!m§.y += param2 - this.§3k§.y;
         }
         this.§3k§.x = param1;
         this.§3k§.y = param2;
         this.§"u§.x = 2 * this.§&!m§.x - param1;
         this.§"u§.y = 2 * this.§&!m§.y - param2;
      }
      
      public function §-!?§(param1:Number, param2:Number) : void
      {
         this.§&!m§.x = param1;
         this.§&!m§.y = param2;
         this.§4!8§(this.§,!&§,this.§'!V§);
      }
      
      private function get §3k§() : §+i§
      {
         return getChildAt(0) as §+i§;
      }
      
      private function get §"u§() : §+i§
      {
         return getChildAt(1) as §+i§;
      }
      
      public function get §,!&§() : Number
      {
         return this.§3k§.x;
      }
      
      public function get §'!V§() : Number
      {
         return this.§3k§.y;
      }
      
      public function get §0s§() : Number
      {
         return this.§"u§.x;
      }
      
      public function get §[!-§() : Number
      {
         return this.§"u§.y;
      }
   }
}
