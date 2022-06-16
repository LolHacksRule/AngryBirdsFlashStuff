package §?"e§
{
   import §9$;§.Texture;
   import §^"S§.Image;
   import §^"S§.Sprite;
   import flash.display.BitmapData;
   import flash.display.Shape;
   import flash.display3D.Context3D;
   import flash.geom.Point;
   
   class §!!R§ extends Sprite
   {
       
      
      private var §,L§:Point;
      
      private var §6!4§:Texture;
      
      function §!!R§(param1:Context3D)
      {
         var _loc3_:Image = null;
         super();
         this.§,L§ = new Point();
         this.§6!4§ = this.createTexture(param1);
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            _loc3_ = new Image(this.§6!4§);
            _loc3_.pivotX = this.§6!4§.width / 2;
            _loc3_.pivotY = this.§6!4§.height / 2;
            _loc3_.§?C§ = false;
            addChild(_loc3_);
            _loc2_++;
         }
      }
      
      override public function dispose() : void
      {
         this.§6!4§.dispose();
         super.dispose();
      }
      
      public function §;"y§(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         if(param3)
         {
            this.§,L§.x += param1 - this.§"!N§.x;
            this.§,L§.y += param2 - this.§"!N§.y;
         }
         this.§"!N§.x = param1;
         this.§"!N§.y = param2;
         this.§<"&§.x = 2 * this.§,L§.x - param1;
         this.§<"&§.y = 2 * this.§,L§.y - param2;
      }
      
      public function §'!p§(param1:Number, param2:Number) : void
      {
         this.§,L§.x = param1;
         this.§,L§.y = param2;
         this.§;"y§(this.§^$#§,this.§!#w§);
      }
      
      private function createTexture(param1:Context3D) : Texture
      {
         var _loc2_:Number = Starling.§8#i§;
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
         return Texture.§1!b§(param1,_loc8_,false,false,_loc2_);
      }
      
      private function get §"!N§() : Image
      {
         return getChildAt(0) as Image;
      }
      
      private function get §<"&§() : Image
      {
         return getChildAt(1) as Image;
      }
      
      public function get §^$#§() : Number
      {
         return this.§"!N§.x;
      }
      
      public function get §!#w§() : Number
      {
         return this.§"!N§.y;
      }
      
      public function get §@"1§() : Number
      {
         return this.§<"&§.x;
      }
      
      public function get §'"Y§() : Number
      {
         return this.§<"&§.y;
      }
   }
}
