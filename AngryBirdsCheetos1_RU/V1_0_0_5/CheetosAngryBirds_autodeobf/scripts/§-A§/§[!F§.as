package §-A§
{
   import §;!,§.§20§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!F§ extends Texture
   {
      
      private static var §4^§:Point = new Point();
       
      
      private var §9!&§:Texture;
      
      private var §^S§:Rectangle;
      
      private var §;K§:Rectangle;
      
      private var §#r§:Boolean;
      
      private var §!8§:BitmapData;
      
      public function §[!F§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9!&§ = param1;
         this.§#r§ = param3;
         if(param2 == null)
         {
            this.§1k§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§1k§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#r§)
         {
            this.§9!&§.dispose();
         }
         if(this.§!8§)
         {
            this.§!8§.dispose();
            this.§!8§ = null;
         }
         super.dispose();
      }
      
      private function §1k§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§^S§ = param1;
         this.§;K§ = param1.clone();
         var _loc2_:§[!F§ = this.§9!&§ as §[!F§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^S§;
            this.§;K§.x = _loc3_.x + this.§;K§.x * _loc3_.width;
            this.§;K§.y = _loc3_.y + this.§;K§.y * _loc3_.height;
            this.§;K§.width *= _loc3_.width;
            this.§;K§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9!&§ as §[!F§;
         }
      }
      
      override public function adjustVertexData(param1:§20§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§;K§.x;
         var _loc5_:Number = this.§;K§.y;
         var _loc6_:Number = this.§;K§.width;
         var _loc7_:Number = this.§;K§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§4^§);
            param1.setTexCoords(_loc9_,_loc4_ + §4^§.x * _loc6_,_loc5_ + §4^§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9!&§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9!&§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!8§)
         {
            return this.§!8§;
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
            this.§!8§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§!8§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§!8§;
      }
      
      public function get §-y§() : Boolean
      {
         return this.§#r§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§;K§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9!&§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§9!&§.root;
      }
      
      override public function get width() : Number
      {
         return this.§9!&§.width * this.§^S§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9!&§.height * this.§^S§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9!&§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9!&§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9!&§.requestBaseTextureUpdate(param1);
      }
   }
}
