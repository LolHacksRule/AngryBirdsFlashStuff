package starling.events
{
   import §?^§.§8!?§;
   import §?^§.Sprite;
   import each.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §='§ extends Sprite
   {
      
      private static var §!c§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §'l§:Point;
      
      private var §]s§:Texture;
      
      function §='§(param1:Context3D)
      {
         var _loc3_:§8!?§ = null;
         super();
         this.§'l§ = new Point();
         this.§]s§ = Texture.§ !3§(param1,new §!c§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §8!?§(this.§]s§);
            _loc3_.pivotX = this.§]s§.width / 2;
            _loc3_.pivotY = this.§]s§.height / 2;
            _loc3_.§-j§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§]s§.dispose();
         super.dispose();
      }
      
      public function §08§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§'l§.x += param1 - this.§'!%§.x;
            this.§'l§.y += param2 - this.§'!%§.y;
         }
         this.§'!%§.x = param1;
         this.§'!%§.y = param2;
         this.§47§.x = 2 * this.§'l§.x - param1;
         this.§47§.y = 2 * this.§'l§.y - param2;
      }
      
      public function §[n§(param1:Number, param2:Number) : void
      {
         this.§'l§.x = param1;
         this.§'l§.y = param2;
         this.§08§(this.§7I§,this.§>>§);
      }
      
      private function get §'!%§() : §8!?§
      {
         return getChildAt(0) as §8!?§;
      }
      
      private function get §47§() : §8!?§
      {
         return getChildAt(1) as §8!?§;
      }
      
      public function get §7I§() : Number
      {
         return this.§'!%§.x;
      }
      
      public function get §>>§() : Number
      {
         return this.§'!%§.y;
      }
      
      public function get §1!;§() : Number
      {
         return this.§47§.x;
      }
      
      public function get §3$§() : Number
      {
         return this.§47§.y;
      }
   }
}
