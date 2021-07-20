package starling.display
{
   import starling.textures.TextureSmoothing;
   import starling.textures.Texture;
   import starling.utils.VertexData;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Image extends Quad
   {
       
      
      private var mTexture:Texture;
      
      private var mSmoothing:String;
      
      private var mUseColor:Boolean;
      
      private var mUseColorInitial:Boolean;
      
      private var mVertexDataCache:VertexData;
      
      private var mHighQuality:Boolean;
      
      public function Image(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.mTexture = param1;
         if(!param3)
         {
            this.mSmoothing = !!Starling.isSoftware ? TextureSmoothing.NONE : TextureSmoothing.BILINEAR;
         }
         else
         {
            this.mSmoothing = !!Starling.isSoftware ? TextureSmoothing.BILINEAR : TextureSmoothing.TRILINEAR;
            this.mHighQuality = true;
         }
         this.mUseColor = param2;
         this.mUseColorInitial = this.mUseColor;
         this.mVertexDataCache = new VertexData(4,_loc7_);
         this.updateVertexDataCache(true);
      }
      
      public static function fromBitmap(param1:Context3D, param2:Bitmap) : Image
      {
         return new Image(Texture.fromBitmap(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.mHighQuality;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         mVertexData.setTexCoords(0,0,0);
         mVertexData.setTexCoords(1,1,0);
         mVertexData.setTexCoords(2,0,1);
         mVertexData.setTexCoords(3,1,1);
      }
      
      private function updateVertexDataCache(param1:Boolean = false) : void
      {
         mVertexData.copyTo(this.mVertexDataCache,0,1,this.mUseColor || param1,null);
         this.mTexture.adjustVertexData(this.mVertexDataCache,0,4);
      }
      
      public function setVertexCoords(param1:Vector.<Point>) : void
      {
         mVertexData.setPosition(0,param1[0].x,param1[0].y);
         mVertexData.setPosition(1,param1[1].x,param1[1].y);
         mVertexData.setPosition(2,param1[2].x,param1[2].y);
         mVertexData.setPosition(3,param1[3].x,param1[3].y);
         this.updateVertexDataCache();
      }
      
      public function readjustSize() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         mVertexData.setPosition(0,0,0);
         mVertexData.setPosition(1,_loc2_,0);
         mVertexData.setPosition(2,0,_loc3_);
         mVertexData.setPosition(3,_loc2_,_loc3_);
         this.updateVertexDataCache();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         mVertexData.setTexCoords(param1,param2.x,param2.y);
         this.updateVertexDataCache();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         mVertexData.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.mVertexDataCache.copyTo(param1,param2,param3,this.mUseColor,param4);
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.mTexture)
         {
            this.mTexture = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.mTexture.premultipliedAlpha);
            this.updateVertexDataCache();
         }
      }
      
      public function get smoothing() : String
      {
         return this.mSmoothing;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(TextureSmoothing.isValid(param1))
         {
            this.mSmoothing = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.updateVertexDataCache();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.updateVertexDataCache();
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.mTexture,this.mSmoothing);
      }
      
      override public function get useColor() : Boolean
      {
         return this.mUseColor;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.mUseColor = this.mUseColorInitial;
         }
         else
         {
            this.mUseColor = true;
         }
         super.color = param1;
         this.updateVertexDataCache();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.mUseColor = this.mUseColorInitial;
         }
         else
         {
            this.mUseColor = true;
         }
         this.updateVertexDataCache();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.mTexture.clippedBitmapData;
      }
   }
}
