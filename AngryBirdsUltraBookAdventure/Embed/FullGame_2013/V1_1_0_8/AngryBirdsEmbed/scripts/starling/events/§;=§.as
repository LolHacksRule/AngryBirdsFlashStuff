package starling.events
{
   import §&o§.§?T§;
   import §&o§.Sprite;
   import §0! §.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §;=§ extends Sprite
   {
      
      private static var §-E§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §,+§:Point;
      
      private var §;p§:Texture;
      
      function §;=§(param1:Context3D)
      {
         var _loc3_:§?T§ = null;
         super();
         this.§,+§ = new Point();
         this.§;p§ = Texture.§>! §(param1,new §-E§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §?T§(this.§;p§);
            _loc3_.pivotX = this.§;p§.width / 2;
            _loc3_.pivotY = this.§;p§.height / 2;
            _loc3_.§3!D§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§;p§.dispose();
         super.dispose();
      }
      
      public function §%!$§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§,+§.x += param1 - this.§^!-§.x;
            this.§,+§.y += param2 - this.§^!-§.y;
         }
         this.§^!-§.x = param1;
         this.§^!-§.y = param2;
         this.§1!5§.x = 2 * this.§,+§.x - param1;
         this.§1!5§.y = 2 * this.§,+§.y - param2;
      }
      
      public function §#q§(param1:Number, param2:Number) : void
      {
         this.§,+§.x = param1;
         this.§,+§.y = param2;
         this.§%!$§(this.§<Y§,this.§ !5§);
      }
      
      private function get §^!-§() : §?T§
      {
         return getChildAt(0) as §?T§;
      }
      
      private function get §1!5§() : §?T§
      {
         return getChildAt(1) as §?T§;
      }
      
      public function get §<Y§() : Number
      {
         return this.§^!-§.x;
      }
      
      public function get § !5§() : Number
      {
         return this.§^!-§.y;
      }
      
      public function get §-!3§() : Number
      {
         return this.§1!5§.x;
      }
      
      public function get §7k§() : Number
      {
         return this.§1!5§.y;
      }
   }
}
