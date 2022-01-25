package starling.events
{
   import §#!a§.Texture;
   import §;t§.§=_§;
   import §;t§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §?§ extends Sprite
   {
      
      private static var § X§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §+!S§:Point;
      
      private var §]Z§:Texture;
      
      function §?§(param1:Context3D)
      {
         var _loc3_:§=_§ = null;
         super();
         this.§+!S§ = new Point();
         this.§]Z§ = Texture.§@8§(param1,new § X§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §=_§(this.§]Z§);
            _loc3_.pivotX = this.§]Z§.width / 2;
            _loc3_.pivotY = this.§]Z§.height / 2;
            _loc3_.§]U§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§]Z§.dispose();
         super.dispose();
      }
      
      public function §4!R§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§+!S§.x += param1 - this.§[!R§.x;
            this.§+!S§.y += param2 - this.§[!R§.y;
         }
         this.§[!R§.x = param1;
         this.§[!R§.y = param2;
         this.§4e§.x = 2 * this.§+!S§.x - param1;
         this.§4e§.y = 2 * this.§+!S§.y - param2;
      }
      
      public function §"o§(param1:Number, param2:Number) : void
      {
         this.§+!S§.x = param1;
         this.§+!S§.y = param2;
         this.§4!R§(this.§ j§,this.§4j§);
      }
      
      private function get §[!R§() : §=_§
      {
         return getChildAt(0) as §=_§;
      }
      
      private function get §4e§() : §=_§
      {
         return getChildAt(1) as §=_§;
      }
      
      public function get § j§() : Number
      {
         return this.§[!R§.x;
      }
      
      public function get §4j§() : Number
      {
         return this.§[!R§.y;
      }
      
      public function get §@$§() : Number
      {
         return this.§4e§.x;
      }
      
      public function get §&A§() : Number
      {
         return this.§4e§.y;
      }
   }
}
