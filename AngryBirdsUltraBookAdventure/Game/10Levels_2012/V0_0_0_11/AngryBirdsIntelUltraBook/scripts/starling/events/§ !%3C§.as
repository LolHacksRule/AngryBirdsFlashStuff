package starling.events
{
   import §6!7§.§-m§;
   import §6!7§.Sprite;
   import §7i§.Texture;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class § !<§ extends Sprite
   {
      
      private static var §'!9§:Class = TouchMarker_TouchMarkerBmp;
       
      
      private var §8&§:Point;
      
      private var §5@§:Texture;
      
      function § !<§(param1:Context3D)
      {
         var _loc3_:§-m§ = null;
         super();
         this.§8&§ = new Point();
         this.§5@§ = Texture.§8;§(param1,new §'!9§());
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new §-m§(this.§5@§);
            _loc3_.pivotX = this.§5@§.width / 2;
            _loc3_.pivotY = this.§5@§.height / 2;
            _loc3_.§<!4§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§5@§.dispose();
         super.dispose();
      }
      
      public function §8n§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§8&§.x += param1 - this.§``§.x;
            this.§8&§.y += param2 - this.§``§.y;
         }
         this.§``§.x = param1;
         this.§``§.y = param2;
         this.§4[§.x = 2 * this.§8&§.x - param1;
         this.§4[§.y = 2 * this.§8&§.y - param2;
      }
      
      public function §,V§(param1:Number, param2:Number) : void
      {
         this.§8&§.x = param1;
         this.§8&§.y = param2;
         this.§8n§(this.§"!3§,this.§!!9§);
      }
      
      private function get §``§() : §-m§
      {
         return getChildAt(0) as §-m§;
      }
      
      private function get §4[§() : §-m§
      {
         return getChildAt(1) as §-m§;
      }
      
      public function get §"!3§() : Number
      {
         return this.§``§.x;
      }
      
      public function get §!!9§() : Number
      {
         return this.§``§.y;
      }
      
      public function get §]!X§() : Number
      {
         return this.§4[§.x;
      }
      
      public function get §,g§() : Number
      {
         return this.§4[§.y;
      }
   }
}
