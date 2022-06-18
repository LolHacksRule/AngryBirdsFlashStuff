package §,Y§
{
   import §&b§.§true§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!&§ extends Texture
   {
      
      private static var §8!8§:Point = new Point();
       
      
      private var §&n§:Texture;
      
      private var §?^§:Rectangle;
      
      private var §0!'§:Rectangle;
      
      private var §]!%§:Boolean;
      
      private var §&o§:BitmapData;
      
      public function §"!&§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§&n§ = param1;
         this.§]!%§ = param3;
         if(param2 == null)
         {
            this.§ else§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§ else§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§]!%§)
         {
            this.§&n§.dispose();
         }
         if(this.§&o§)
         {
            this.§&o§.dispose();
            this.§&o§ = null;
         }
         super.dispose();
      }
      
      private function § else§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§?^§ = param1;
         this.§0!'§ = param1.clone();
         var _loc2_:§"!&§ = this.§&n§ as §"!&§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§?^§;
            this.§0!'§.x = _loc3_.x + this.§0!'§.x * _loc3_.width;
            this.§0!'§.y = _loc3_.y + this.§0!'§.y * _loc3_.height;
            this.§0!'§.width *= _loc3_.width;
            this.§0!'§.height *= _loc3_.height;
            _loc2_ = _loc2_.§&n§ as §"!&§;
         }
      }
      
      override public function adjustVertexData(param1:§true§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§0!'§.x;
         var _loc5_:Number = this.§0!'§.y;
         var _loc6_:Number = this.§0!'§.width;
         var _loc7_:Number = this.§0!'§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§8!8§);
            param1.setTexCoords(_loc9_,_loc4_ + §8!8§.x * _loc6_,_loc5_ + §8!8§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&n§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&n§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§&o§)
         {
            return this.§&o§;
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
            this.§&o§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§&o§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§&o§;
      }
      
      public function get §="§() : Boolean
      {
         return this.§]!%§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§0!'§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&n§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§&n§.root;
      }
      
      override public function get width() : Number
      {
         return this.§&n§.width * this.§?^§.width;
      }
      
      override public function get height() : Number
      {
         return this.§&n§.height * this.§?^§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&n§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&n§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&n§.requestBaseTextureUpdate(param1);
      }
   }
}
