package starling.events
{
   import §#!6§.Texture;
   import §=!E§.Sprite;
   import §=!E§.§try§;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §,x§ extends Sprite
   {
      
      private static var §;6§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §<?§:Point;
      
      private var §6!&§:Texture;
      
      function §,x§(param1:Context3D)
      {
         var _loc3_:§try§ = null;
         super();
         this.§<?§ = new Point();
         this.§6!&§ = Texture.§1;§(param1,new §;6§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §try§(this.§6!&§);
            _loc3_.pivotX = this.§6!&§.width / 2;
            _loc3_.pivotY = this.§6!&§.height / 2;
            _loc3_.§@N§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§6!&§.dispose();
         super.dispose();
      }
      
      public function §8!2§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§<?§.x += param1 - this.§7v§.x;
            this.§<?§.y += param2 - this.§7v§.y;
         }
         this.§7v§.x = param1;
         this.§7v§.y = param2;
         this.§-t§.x = 2 * this.§<?§.x - param1;
         this.§-t§.y = 2 * this.§<?§.y - param2;
      }
      
      public function §"9§(param1:Number, param2:Number) : void
      {
         this.§<?§.x = param1;
         this.§<?§.y = param2;
         this.§8!2§(this.§2v§,this.§7!"§);
      }
      
      private function get §7v§() : §try§
      {
         return getChildAt(0) as §try§;
      }
      
      private function get §-t§() : §try§
      {
         return getChildAt(1) as §try§;
      }
      
      public function get §2v§() : Number
      {
         return this.§7v§.x;
      }
      
      public function get §7!"§() : Number
      {
         return this.§7v§.y;
      }
      
      public function get §[e§() : Number
      {
         return this.§-t§.x;
      }
      
      public function get §6H§() : Number
      {
         return this.§-t§.y;
      }
   }
}
