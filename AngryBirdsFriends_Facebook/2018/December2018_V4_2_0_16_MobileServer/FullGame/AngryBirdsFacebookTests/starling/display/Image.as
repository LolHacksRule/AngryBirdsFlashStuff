package starling.display
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import starling.core.RenderSupport;
   import starling.core.Starling;
   import starling.textures.Texture;
   import starling.utils.VertexData;
   
   public class Image extends Quad
   {
      
      public static const TEXTURE_SMOOTHING_NONE:int = 0;
      
      public static const TEXTURE_SMOOTHING_BILINEAR:int = 1;
      
      public static const TEXTURE_SMOOTHING_TRILINEAR:int = 2;
       
      
      private var mTexture:Texture;
      
      private var mSmoothing:int;
      
      private var mTinted:Boolean;
      
      private var mVertexDataCache:VertexData;
      
      protected var mTextureChanged:Boolean = true;
      
      private var mHighQuality:Boolean;
      
      public function Image(texture:Texture, tinted:Boolean = false, highQuality:Boolean = true)
      {
         var frame:Rectangle = !!texture ? texture.frame : null;
         var width:Number = !!frame ? Number(frame.width) : (!!texture ? Number(texture.width) : Number(0));
         var height:Number = !!frame ? Number(frame.height) : (!!texture ? Number(texture.height) : Number(0));
         var pma:Boolean = !!texture ? Boolean(texture.premultipliedAlpha) : true;
         super(width,height,16777215,pma);
         this.mTinted = tinted;
         this.mTexture = texture;
         if(!highQuality)
         {
            this.mSmoothing = !!Starling.isSoftware ? int(TEXTURE_SMOOTHING_NONE) : int(TEXTURE_SMOOTHING_BILINEAR);
         }
         else
         {
            this.mSmoothing = !!Starling.isSoftware ? int(TEXTURE_SMOOTHING_BILINEAR) : int(TEXTURE_SMOOTHING_TRILINEAR);
            this.mHighQuality = true;
         }
         this.mVertexDataCache = new VertexData(vertexCount,pma);
      }
      
      public static function fromBitmap(context:Context3D, bitmap:Bitmap, generateMipMaps:Boolean = true, scale:Number = 1) : Image
      {
         return new Image(Texture.fromBitmap(context,bitmap,generateMipMaps,false,scale));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.mHighQuality;
      }
      
      override protected function initializeVertexData(width:Number, height:Number) : void
      {
         super.initializeVertexData(width,height);
         mVertexData.setTexCoords(0,0,0);
         mVertexData.setTexCoords(1,1,0);
         mVertexData.setTexCoords(2,0,1);
         mVertexData.setTexCoords(3,1,1);
      }
      
      public function readjustSize() : void
      {
         if(!this.mTextureChanged)
         {
            return;
         }
         var frame:Rectangle = !!this.texture ? this.texture.frame : null;
         var width:Number = !!frame ? Number(frame.width) : (!!this.texture ? Number(this.texture.width) : Number(0));
         var height:Number = !!frame ? Number(frame.height) : (!!this.texture ? Number(this.texture.height) : Number(0));
         this.initializeVertexData(width,height);
         mVertexChanged = true;
      }
      
      public function setTexCoords(vertexID:int, coords:Point) : void
      {
         mVertexData.setTexCoords(vertexID,coords.x,coords.y);
         this.mTextureChanged = true;
      }
      
      public function getTexCoords(vertexID:int, resultPoint:Point = null) : Point
      {
         if(resultPoint == null)
         {
            resultPoint = new Point();
         }
         mVertexData.getTexCoords(vertexID,resultPoint);
         return resultPoint;
      }
      
      override public function copyVertexDataTo(targetData:VertexData, targetVertexID:int, copyColor:Boolean, matrix:Matrix = null) : void
      {
         var vertexCount:int = mVertexData.numVertices;
         if(mVertexChanged || this.mTextureChanged || mColorChanged)
         {
            mVertexData.copyTo(this.mVertexDataCache,0,0,-1,mVertexChanged,copyColor,this.mTextureChanged);
            if(this.mTextureChanged)
            {
               if(this.mTexture)
               {
                  this.mTexture.adjustVertexData(this.mVertexDataCache,0,vertexCount);
               }
            }
            this.mTextureChanged = false;
            mColorChanged = false;
            mVertexChanged = false;
         }
         this.mVertexDataCache.copyTo(targetData,targetVertexID,0,vertexCount,true,copyColor,true,matrix);
      }
      
      public function get texture() : Texture
      {
         return this.mTexture;
      }
      
      public function set texture(value:Texture) : void
      {
         if(value != this.mTexture)
         {
            if(this.mTexture && value)
            {
               if(this.mTexture.premultipliedAlpha != value.premultipliedAlpha)
               {
                  mColorChanged = true;
               }
            }
            this.mTexture = value;
            mVertexData.setPremultipliedAlpha(!!this.mTexture ? Boolean(this.mTexture.premultipliedAlpha) : true);
            this.mTextureChanged = true;
            this.readjustSize();
         }
      }
      
      public function get smoothing() : int
      {
         return this.mSmoothing;
      }
      
      public function set smoothing(value:int) : void
      {
         if(value >= TEXTURE_SMOOTHING_NONE && value <= TEXTURE_SMOOTHING_TRILINEAR)
         {
            this.mSmoothing = value;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + value);
      }
      
      override public function render(support:RenderSupport, parentAlpha:Number) : void
      {
         support.batchQuad(this,parentAlpha,this.mTexture,this.mSmoothing);
      }
      
      override public function set color(color:uint) : void
      {
         super.color = color;
      }
      
      override public function set alpha(value:Number) : void
      {
         super.alpha = value;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         if(this.mTexture)
         {
            return this.mTexture.clippedBitmapData;
         }
         return null;
      }
      
      override public function get visible() : Boolean
      {
         return super.visible && this.mTexture != null;
      }
      
      override public function get tinted() : Boolean
      {
         return this.mTinted || super.tinted;
      }
   }
}
