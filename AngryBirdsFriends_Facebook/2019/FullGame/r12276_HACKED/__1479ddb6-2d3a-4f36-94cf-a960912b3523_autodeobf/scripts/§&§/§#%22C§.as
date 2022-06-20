package §&§#8
{
   import §""4§.Texture;
   import §#Z§.Image;
   import §#Z§.Sprite;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §#"C§ extends Sprite
   {
       
      
      private var §`";§:Point;
      
      private var §+!E§:Texture;
      
      function §#"C§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§`";§ = new Point();
         this.§+!E§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§+!E§);
            _loc3_.pivotX = this.§+!E§.width / 2;
            _loc3_.pivotY = this.§+!E§.height / 2;
            _loc3_.§^"$§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§+!E§.dispose();
         super.dispose();
      }
      
      public function §0#U§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§`";§.x += param1 - this.§ w§.x;
            this.§`";§.y += param2 - this.§ w§.y;
         }
         this.§ w§.x = param1;
         this.§ w§.y = param2;
         this.§%#T§.x = 2 * this.§`";§.x - param1;
         this.§%#T§.y = 2 * this.§`";§.y - param2;
      }
      
      public function §9q§(param1:Number, param2:Number) : void
      {
         this.§`";§.x = param1;
         this.§`";§.y = param2;
         this.§0#U§(this.§5!9§,this.§&",§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§!"&§;
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
         return Texture.§&#<§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get § w§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get §%#T§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §5!9§() : Number
      {
         return this.§ w§.x;
      }
      
      public function get §&",§() : Number
      {
         return this.§ w§.y;
      }
      
      public function get §3#j§() : Number
      {
         return this.§%#T§.x;
      }
      
      public function get §&"j§() : Number
      {
         return this.§%#T§.y;
      }
   }
}
