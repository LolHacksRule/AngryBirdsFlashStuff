package §^a§
{
   import §1&§.Texture;
   import §9$§.Image;
   import §9$§.Sprite;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §`$'§ extends Sprite
   {
       
      
      private var §`#O§:Point;
      
      private var §3!L§:Texture;
      
      function §`$'§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§`#O§ = new Point();
         this.§3!L§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§3!L§);
            _loc3_.pivotX = this.§3!L§.width / 2;
            _loc3_.pivotY = this.§3!L§.height / 2;
            _loc3_.§0$6§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§3!L§.dispose();
         super.dispose();
      }
      
      public function §23§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§`#O§.x += param1 - this.§+"w§.x;
            this.§`#O§.y += param2 - this.§+"w§.y;
         }
         this.§+"w§.x = param1;
         this.§+"w§.y = param2;
         this.§ #6§.x = 2 * this.§`#O§.x - param1;
         this.§ #6§.y = 2 * this.§`#O§.y - param2;
      }
      
      public function §,!d§(param1:Number, param2:Number) : void
      {
         this.§`#O§.x = param1;
         this.§`#O§.y = param2;
         this.§23§(this.§;"I§,this.§&#9§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§0h§;
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
         return Texture.§@"c§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get §+"w§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get § #6§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §;"I§() : Number
      {
         return this.§+"w§.x;
      }
      
      public function get §&#9§() : Number
      {
         return this.§+"w§.y;
      }
      
      public function get §%"@§() : Number
      {
         return this.§ #6§.x;
      }
      
      public function get §8r§() : Number
      {
         return this.§ #6§.y;
      }
   }
}
