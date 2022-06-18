package starling.events
{
   import §<-§.Texture;
   import §<k§.§"!=§;
   import §<k§.Sprite;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §0i§ extends Sprite
   {
      
      private static var §;u§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §3T§:Point;
      
      private var §[d§:Texture;
      
      function §0i§(param1:Context3D)
      {
         var _loc3_:§"!=§ = null;
         super();
         this.§3T§ = new Point();
         this.§[d§ = Texture.§]`§(param1,new §;u§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §"!=§(this.§[d§);
            _loc3_.pivotX = this.§[d§.width / 2;
            _loc3_.pivotY = this.§[d§.height / 2;
            _loc3_.§>!'§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§[d§.dispose();
         super.dispose();
      }
      
      public function §'<§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§3T§.x += param1 - this.§6[§.x;
            this.§3T§.y += param2 - this.§6[§.y;
         }
         this.§6[§.x = param1;
         this.§6[§.y = param2;
         this.§@b§.x = 2 * this.§3T§.x - param1;
         this.§@b§.y = 2 * this.§3T§.y - param2;
      }
      
      public function §^7§(param1:Number, param2:Number) : void
      {
         this.§3T§.x = param1;
         this.§3T§.y = param2;
         this.§'<§(this.§8M§,this.§"@§);
      }
      
      private function get §6[§() : §"!=§
      {
         return getChildAt(0) as §"!=§;
      }
      
      private function get §@b§() : §"!=§
      {
         return getChildAt(1) as §"!=§;
      }
      
      public function get §8M§() : Number
      {
         return this.§6[§.x;
      }
      
      public function get §"@§() : Number
      {
         return this.§6[§.y;
      }
      
      public function get §,_§() : Number
      {
         return this.§@b§.x;
      }
      
      public function get §#!9§() : Number
      {
         return this.§@b§.y;
      }
   }
}
