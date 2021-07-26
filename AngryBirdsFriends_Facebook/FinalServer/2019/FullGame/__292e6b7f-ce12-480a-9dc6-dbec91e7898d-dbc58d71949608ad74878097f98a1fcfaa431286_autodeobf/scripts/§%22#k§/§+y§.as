package §"#k§
{
   import §,#e§.Image;
   import §,#e§.Sprite;
   import §-#]§.Texture;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §+y§ extends Sprite
   {
       
      
      private var §+2§:Point;
      
      private var §[!-§:Texture;
      
      function §+y§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§+2§ = new Point();
         this.§[!-§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§[!-§);
            _loc3_.pivotX = this.§[!-§.width / 2;
            _loc3_.pivotY = this.§[!-§.height / 2;
            _loc3_.§4"e§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§[!-§.dispose();
         super.dispose();
      }
      
      public function §4#2§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§+2§.x += param1 - this.§`#-§.x;
            this.§+2§.y += param2 - this.§`#-§.y;
         }
         this.§`#-§.x = param1;
         this.§`#-§.y = param2;
         this.§ !l§.x = 2 * this.§+2§.x - param1;
         this.§ !l§.y = 2 * this.§+2§.y - param2;
      }
      
      public function §5#N§(param1:Number, param2:Number) : void
      {
         this.§+2§.x = param1;
         this.§+2§.y = param2;
         this.§4#2§(this.§+"U§,this.§ $4§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§3!F§;
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
         return Texture.§4"§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get §`#-§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get § !l§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §+"U§() : Number
      {
         return this.§`#-§.x;
      }
      
      public function get § $4§() : Number
      {
         return this.§`#-§.y;
      }
      
      public function get §%!A§() : Number
      {
         return this.§ !l§.x;
      }
      
      public function get §1#d§() : Number
      {
         return this.§ !l§.y;
      }
   }
}
