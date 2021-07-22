package §"#z§
{
   import §,#=§.§0C§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2"G§ extends Texture
   {
      
      private static var §="B§:Point = new Point();
       
      
      private var §0!^§:Texture;
      
      private var §5V§:§]#i§;
      
      private var §56§:Rectangle;
      
      private var §=#^§:Rectangle;
      
      private var §=!e§:Boolean;
      
      private var §,"=§:BitmapData;
      
      public function §2"G§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§0!^§ = param1;
         this.§=!e§ = param3;
         this.§5V§ = this.§0!^§.root;
         if(param2 == null)
         {
            this.§?!=§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§?!=§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§=!e§)
         {
            this.§0!^§.dispose();
         }
         if(this.§,"=§)
         {
            this.§,"=§.dispose();
            this.§,"=§ = null;
         }
         super.dispose();
      }
      
      private function §?!=§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§56§ = param1;
         this.§=#^§ = param1.clone();
         var _loc2_:§2"G§ = this.§0!^§ as §2"G§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§56§;
            this.§=#^§.x = _loc3_.x + this.§=#^§.x * _loc3_.width;
            this.§=#^§.y = _loc3_.y + this.§=#^§.y * _loc3_.height;
            this.§=#^§.width *= _loc3_.width;
            this.§=#^§.height *= _loc3_.height;
            _loc2_ = _loc2_.§0!^§ as §2"G§;
         }
      }
      
      override public function adjustVertexData(param1:§0C§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§=#^§.x;
         var _loc5_:Number = this.§=#^§.y;
         var _loc6_:Number = this.§=#^§.width;
         var _loc7_:Number = this.§=#^§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§="B§);
            param1.setTexCoords(_loc9_,_loc4_ + §="B§.x * _loc6_,_loc5_ + §="B§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§0!^§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0!^§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,"=§)
         {
            return this.§,"=§;
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc1_)
         {
            _loc2_ = this.clipping;
            _loc2_.x *= this.bitmapData.width;
            _loc2_.y *= this.bitmapData.height;
            _loc2_.width *= this.bitmapData.width;
            _loc2_.height *= this.bitmapData.height;
            _loc3_ = Math.max(2,_loc2_.width);
            _loc4_ = Math.max(2,_loc2_.height);
            this.§,"=§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§,"=§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§,"=§;
      }
      
      public function get §%"=§() : Boolean
      {
         return this.§=!e§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§56§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§0!^§.getBase(param1);
      }
      
      override public function get root() : §]#i§
      {
         return this.§5V§;
      }
      
      override public function get format() : String
      {
         return this.§0!^§.format;
      }
      
      override public function get width() : Number
      {
         return this.§0!^§.width * this.§56§.width;
      }
      
      override public function get height() : Number
      {
         return this.§0!^§.height * this.§56§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§0!^§.nativeWidth * this.§56§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§0!^§.nativeHeight * this.§56§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§0!^§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§0!^§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§0!^§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§0!^§.requestBaseTextureUpdate(param1);
      }
   }
}
