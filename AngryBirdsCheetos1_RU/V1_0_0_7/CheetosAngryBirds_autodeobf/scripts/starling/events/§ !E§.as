package starling.events
{
   import §;!Q§.§%o§;
   import §;!Q§.Sprite;
   import §]p§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § !E§ extends Sprite
   {
      
      private static var §&!,§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §@`§:Point;
      
      private var §`h§:Texture;
      
      function § !E§(param1:Context3D)
      {
         var _loc3_:§%o§ = null;
         super();
         this.§@`§ = new Point();
         this.§`h§ = Texture.§+P§(param1,new §&!,§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §%o§(this.§`h§);
            _loc3_.pivotX = this.§`h§.width / 2;
            _loc3_.pivotY = this.§`h§.height / 2;
            _loc3_.§+!T§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§`h§.dispose();
         super.dispose();
      }
      
      public function §@!8§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§@`§.x += param1 - this.§,!U§.x;
            this.§@`§.y += param2 - this.§,!U§.y;
         }
         this.§,!U§.x = param1;
         this.§,!U§.y = param2;
         this.§<!J§.x = 2 * this.§@`§.x - param1;
         this.§<!J§.y = 2 * this.§@`§.y - param2;
      }
      
      public function §0!3§(param1:Number, param2:Number) : void
      {
         this.§@`§.x = param1;
         this.§@`§.y = param2;
         this.§@!8§(this.§7!S§,this.§8!<§);
      }
      
      private function get §,!U§() : §%o§
      {
         return getChildAt(0) as §%o§;
      }
      
      private function get §<!J§() : §%o§
      {
         return getChildAt(1) as §%o§;
      }
      
      public function get §7!S§() : Number
      {
         return this.§,!U§.x;
      }
      
      public function get §8!<§() : Number
      {
         return this.§,!U§.y;
      }
      
      public function get §,!%§() : Number
      {
         return this.§<!J§.x;
      }
      
      public function get §#t§() : Number
      {
         return this.§<!J§.y;
      }
   }
}
