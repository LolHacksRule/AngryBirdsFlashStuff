package §'!j§
{
   import §"#z§.Texture;
   import §6#H§.Image;
   import §6#H§.Sprite;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §]$@§ extends Sprite
   {
       
      
      private var §7#$§:Point;
      
      private var §;!D§:Texture;
      
      function §]$@§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§7#$§ = new Point();
         this.§;!D§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§;!D§);
            _loc3_.pivotX = this.§;!D§.width / 2;
            _loc3_.pivotY = this.§;!D§.height / 2;
            _loc3_.§?#N§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§;!D§.dispose();
         super.dispose();
      }
      
      public function §<"j§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§7#$§.x += param1 - this.§+y§.x;
            this.§7#$§.y += param2 - this.§+y§.y;
         }
         this.§+y§.x = param1;
         this.§+y§.y = param2;
         this.§[#9§.x = 2 * this.§7#$§.x - param1;
         this.§[#9§.y = 2 * this.§7#$§.y - param2;
      }
      
      public function §+#g§(param1:Number, param2:Number) : void
      {
         this.§7#$§.x = param1;
         this.§7#$§.y = param2;
         this.§<"j§(this.§2$%§,this.§^"w§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§&C§;
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
         return Texture.§0#B§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get §+y§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get §[#9§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §2$%§() : Number
      {
         return this.§+y§.x;
      }
      
      public function get §^"w§() : Number
      {
         return this.§+y§.y;
      }
      
      public function get §;"V§() : Number
      {
         return this.§[#9§.x;
      }
      
      public function get §8#A§() : Number
      {
         return this.§[#9§.y;
      }
   }
}
