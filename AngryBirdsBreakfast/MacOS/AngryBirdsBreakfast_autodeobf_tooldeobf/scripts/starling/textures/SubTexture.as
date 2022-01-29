package starling.textures
{
   import starling.utils.VertexData;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class SubTexture extends Texture
   {
      
      private static var sTexCoords:Point = new Point();
       
      
      private var mParent:Texture;
      
      private var mClipping:Rectangle;
      
      private var mRootClipping:Rectangle;
      
      private var mOwnsParent:Boolean;
      
      private var mClippedBitmapData:BitmapData;
      
      public function SubTexture(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.mParent = param1;
         this.mOwnsParent = param3;
         if(param2 == null)
         {
            this.setClipping(new Rectangle(0,0,1,1));
         }
         else
         {
            this.setClipping(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.mOwnsParent)
         {
            this.mParent.dispose();
         }
         if(this.mClippedBitmapData)
         {
            this.mClippedBitmapData.dispose();
            this.mClippedBitmapData = null;
         }
         super.dispose();
      }
      
      private function setClipping(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.mClipping = param1;
         this.mRootClipping = param1.clone();
         var _loc2_:SubTexture = this.mParent as SubTexture;
         while(_loc2_)
         {
            _loc3_ = _loc2_.mClipping;
            this.mRootClipping.x = _loc3_.x + this.mRootClipping.x * _loc3_.width;
            this.mRootClipping.y = _loc3_.y + this.mRootClipping.y * _loc3_.height;
            this.mRootClipping.width *= _loc3_.width;
            this.mRootClipping.height *= _loc3_.height;
            _loc2_ = _loc2_.mParent as SubTexture;
         }
      }
      
      override public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.mRootClipping.x;
         var _loc5_:Number = this.mRootClipping.y;
         var _loc6_:Number = this.mRootClipping.width;
         var _loc7_:Number = this.mRootClipping.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,sTexCoords);
            param1.setTexCoords(_loc9_,_loc4_ + sTexCoords.x * _loc6_,_loc5_ + sTexCoords.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.mParent;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.mParent.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.mClippedBitmapData)
         {
            return this.mClippedBitmapData;
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
            this.mClippedBitmapData = new BitmapData(_loc3_,_loc4_,true,0);
            this.mClippedBitmapData.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.mClippedBitmapData;
      }
      
      public function get ownsParent() : Boolean
      {
         return this.mOwnsParent;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.mRootClipping.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.mParent.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.mParent.root;
      }
      
      override public function get width() : Number
      {
         return this.mParent.width * this.mClipping.width;
      }
      
      override public function get height() : Number
      {
         return this.mParent.height * this.mClipping.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.mParent.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.mParent.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.mParent.requestBaseTextureUpdate(param1);
      }
   }
}
