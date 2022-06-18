package §]"P§
{
   import §!6§.Image;
   import §!6§.Sprite;
   import §""'§.Texture;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §4"'§ extends Sprite
   {
       
      
      private var §7"?§:Point;
      
      private var §;Z§:Texture;
      
      function §4"'§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§7"?§ = new Point();
         this.§;Z§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§;Z§);
            _loc3_.pivotX = this.§;Z§.width / 2;
            _loc3_.pivotY = this.§;Z§.height / 2;
            _loc3_.§7!w§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§;Z§.dispose();
         super.dispose();
      }
      
      public function §3#G§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§7"?§.x += param1 - this.§=$,§.x;
            this.§7"?§.y += param2 - this.§=$,§.y;
         }
         this.§=$,§.x = param1;
         this.§=$,§.y = param2;
         this.§-!9§.x = 2 * this.§7"?§.x - param1;
         this.§-!9§.y = 2 * this.§7"?§.y - param2;
      }
      
      public function §!#2§(param1:Number, param2:Number) : void
      {
         this.§7"?§.x = param1;
         this.§7"?§.y = param2;
         this.§3#G§(this.§8"]§,this.§6$§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§<y§;
         var _loc3_:Number = 12 * _loc2_;
         var _loc4_:int = 32 * _loc2_;
         var _loc5_:int = 32 * _loc2_;
         var _loc6_:Number = 1.5 * _loc2_;
         var _loc7_:Shape;
         (_loc7_ = new Shape()).graphics.lineStyle(_loc6_,0,0.3);
         _loc7_.graphics.drawCircle(_loc4_ / 2,_loc5_ / 2,_loc3_ + _loc6_);
         _loc7_.graphics.beginFill(16777215,0.4);
         _loc7_.graphics.lineStyle(_loc6_,16777215);
         _loc7_.graphics.drawCircle(_loc4_ / 2,_loc5_ / 2,_loc3_);
         _loc7_.graphics.endFill();
         var _loc8_:BitmapData;
         (_loc8_ = new BitmapData(_loc4_,_loc5_,true,0)).draw(_loc7_);
         return Texture.§;$3§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get §=$,§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get §-!9§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §8"]§() : Number
      {
         return this.§=$,§.x;
      }
      
      public function get §6$§() : Number
      {
         return this.§=$,§.y;
      }
      
      public function get §1$?§() : Number
      {
         return this.§-!9§.x;
      }
      
      public function get §>!C§() : Number
      {
         return this.§-!9§.y;
      }
   }
}
