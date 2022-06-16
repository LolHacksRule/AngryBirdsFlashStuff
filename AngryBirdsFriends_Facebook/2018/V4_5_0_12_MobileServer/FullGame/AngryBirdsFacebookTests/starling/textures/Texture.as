package starling.textures
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   import starling.core.Starling;
   import starling.errors.AbstractClassError;
   import starling.errors.MissingContextError;
   import starling.utils.VertexData;
   import starling.utils.getNextPowerOfTwo;
   
   public class Texture
   {
      
      private static var sOrigin:Point = new Point();
       
      
      private var mFrame:Rectangle;
      
      private var mRepeat:Boolean;
      
      public function Texture()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new AbstractClassError();
         }
         this.mRepeat = false;
      }
      
      public static function fromBitmap(context:Context3D, data:Bitmap, generateMipMaps:Boolean = true, optimizeForRenderToTexture:Boolean = false, scale:Number = 1) : starling.textures.Texture
      {
         return fromBitmapData(context,data.bitmapData,generateMipMaps,optimizeForRenderToTexture,scale);
      }
      
      public static function fromBitmapData(context:Context3D, data:BitmapData, generateMipMaps:Boolean = true, optimizeForRenderToTexture:Boolean = false, scale:Number = 1) : starling.textures.Texture
      {
         var potData:BitmapData = null;
         var concreteTexture:ConcreteTexture = null;
         var nativeTexture:flash.display3D.textures.Texture = null;
         var origWidth:int = data.width;
         var origHeight:int = data.height;
         var legalWidth:int = origWidth;
         var legalHeight:int = origHeight;
         if(context != null && context.driverInfo != "Disposed")
         {
            legalWidth = getNextPowerOfTwo(origWidth);
            legalHeight = getNextPowerOfTwo(origHeight);
            nativeTexture = context.createTexture(legalWidth,legalHeight,Context3DTextureFormat.BGRA,optimizeForRenderToTexture);
            if(legalWidth > origWidth || legalHeight > origHeight)
            {
               potData = new BitmapData(legalWidth,legalHeight,true,0);
               potData.copyPixels(data,data.rect,sOrigin);
               data = potData;
            }
            uploadBitmapData(nativeTexture,data,generateMipMaps);
         }
         concreteTexture = new ConcreteTexture(nativeTexture,Context3DTextureFormat.BGRA,legalWidth,legalHeight,generateMipMaps,true,optimizeForRenderToTexture,scale);
         if(Starling.handleLostContext)
         {
            concreteTexture.restoreOnLostContext(data);
         }
         else if(potData)
         {
            potData.dispose();
         }
         if(origWidth == legalWidth && origHeight == legalHeight)
         {
            return concreteTexture;
         }
         return new SubTexture(concreteTexture,new Rectangle(0,0,origWidth / scale,origHeight / scale),true);
      }
      
      public static function fromAtfData(context:Context3D, data:ByteArray, scale:Number = 1, useMipMaps:Boolean = true, loadAsync:Function = null) : starling.textures.Texture
      {
         var eventType:String = null;
         var nativeTexture:flash.display3D.textures.Texture = null;
         var concreteTexture:ConcreteTexture = null;
         var onTextureReady:Function = null;
         onTextureReady = function(event:Event):void
         {
            nativeTexture.removeEventListener(eventType,onTextureReady);
            if(loadAsync.length == 1)
            {
               loadAsync(concreteTexture);
            }
            else
            {
               loadAsync();
            }
         };
         eventType = "textureReady";
         if(context == null)
         {
            throw new MissingContextError();
         }
         var async:Boolean = loadAsync != null;
         var atfData:AtfData = new AtfData(data);
         nativeTexture = context.createTexture(atfData.width,atfData.height,atfData.format,false);
         uploadAtfData(nativeTexture,data,0,async);
         concreteTexture = new ConcreteTexture(nativeTexture,atfData.format,atfData.width,atfData.height,useMipMaps && atfData.numTextures > 1,false,false,scale);
         if(Starling.handleLostContext)
         {
            concreteTexture.restoreOnLostContext(atfData);
         }
         if(async)
         {
            nativeTexture.addEventListener(eventType,onTextureReady);
         }
         return concreteTexture;
      }
      
      public static function fromColor(context:Context3D, width:int, height:int, color:uint = 4.294967295E9, optimizeForRenderToTexture:Boolean = false, scale:Number = -1) : starling.textures.Texture
      {
         if(scale <= 0)
         {
            scale = Starling.contentScaleFactor;
         }
         var bitmapData:BitmapData = new BitmapData(width * scale,height * scale,true,color);
         var texture:starling.textures.Texture = fromBitmapData(context,bitmapData,false,optimizeForRenderToTexture,scale);
         if(!Starling.handleLostContext)
         {
            bitmapData.dispose();
         }
         return texture;
      }
      
      public static function empty(context:Context3D, width:int = 64, height:int = 64, premultipliedAlpha:Boolean = false, optimizeForRenderToTexture:Boolean = true, scale:Number = -1) : starling.textures.Texture
      {
         if(scale <= 0)
         {
            scale = Starling.contentScaleFactor;
         }
         var origWidth:int = width * scale;
         var origHeight:int = height * scale;
         var legalWidth:int = getNextPowerOfTwo(origWidth);
         var legalHeight:int = getNextPowerOfTwo(origHeight);
         var format:String = Context3DTextureFormat.BGRA;
         if(context == null)
         {
            throw new MissingContextError();
         }
         var nativeTexture:flash.display3D.textures.Texture = context.createTexture(legalWidth,legalHeight,Context3DTextureFormat.BGRA,optimizeForRenderToTexture);
         var concreteTexture:ConcreteTexture = new ConcreteTexture(nativeTexture,format,legalWidth,legalHeight,false,premultipliedAlpha,optimizeForRenderToTexture,scale);
         if(origWidth == legalWidth && origHeight == legalHeight)
         {
            return concreteTexture;
         }
         return new SubTexture(concreteTexture,new Rectangle(0,0,width,height),true);
      }
      
      public static function fromTexture(texture:starling.textures.Texture, region:Rectangle = null, frame:Rectangle = null) : starling.textures.Texture
      {
         var subTexture:starling.textures.Texture = new SubTexture(texture,region);
         subTexture.mFrame = frame;
         return subTexture;
      }
      
      static function uploadBitmapData(nativeTexture:flash.display3D.textures.Texture, data:BitmapData, generateMipmaps:Boolean) : void
      {
         var currentWidth:* = 0;
         var currentHeight:* = 0;
         var level:int = 0;
         var canvas:BitmapData = null;
         var transform:Matrix = null;
         var bounds:Rectangle = null;
         nativeTexture.uploadFromBitmapData(data);
         if(generateMipmaps && data.width > 1 && data.height > 1)
         {
            currentWidth = data.width >> 1;
            currentHeight = data.height >> 1;
            level = 1;
            canvas = new BitmapData(currentWidth,currentHeight,true,0);
            transform = new Matrix(0.5,0,0,0.5);
            bounds = new Rectangle();
            while(currentWidth >= 1 || currentHeight >= 1)
            {
               bounds.width = currentWidth;
               bounds.height = currentHeight;
               canvas.fillRect(bounds,0);
               canvas.draw(data,transform,null,null,null,true);
               nativeTexture.uploadFromBitmapData(canvas,level++);
               transform.scale(0.5,0.5);
               currentWidth >>= 1;
               currentHeight >>= 1;
            }
            canvas.dispose();
         }
      }
      
      static function uploadAtfData(nativeTexture:flash.display3D.textures.Texture, data:ByteArray, offset:int = 0, async:Boolean = false) : void
      {
         nativeTexture.uploadCompressedTextureFromByteArray(data,offset,async);
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(vertexData:VertexData, vertexID:int, count:int) : void
      {
         var deltaRight:Number = NaN;
         var deltaBottom:Number = NaN;
         if(this.mFrame)
         {
            if(count != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            deltaRight = this.mFrame.width + this.mFrame.x - this.width;
            deltaBottom = this.mFrame.height + this.mFrame.y - this.height;
            vertexData.translateVertex(vertexID,-this.mFrame.x,-this.mFrame.y);
            vertexData.translateVertex(vertexID + 1,-deltaRight,-this.mFrame.y);
            vertexData.translateVertex(vertexID + 2,-this.mFrame.x,-deltaBottom);
            vertexData.translateVertex(vertexID + 3,-deltaRight,-deltaBottom);
         }
      }
      
      public function get frame() : Rectangle
      {
         return !!this.mFrame ? this.mFrame.clone() : new Rectangle(0,0,this.width,this.height);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.mRepeat;
      }
      
      public function set repeat(value:Boolean) : void
      {
         this.mRepeat = value;
      }
      
      public function get width() : Number
      {
         return 0;
      }
      
      public function get height() : Number
      {
         return 0;
      }
      
      public function get nativeWidth() : Number
      {
         return 0;
      }
      
      public function get nativeHeight() : Number
      {
         return 0;
      }
      
      public function get scale() : Number
      {
         return 1;
      }
      
      public function getBase(context:Context3D) : TextureBase
      {
         return null;
      }
      
      public function get root() : ConcreteTexture
      {
         return null;
      }
      
      public function get format() : String
      {
         return Context3DTextureFormat.BGRA;
      }
      
      public function get mipMapping() : Boolean
      {
         return false;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return false;
      }
      
      public function get parent() : starling.textures.Texture
      {
         return this;
      }
      
      public function get bitmapData() : BitmapData
      {
         return null;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function requestBaseTextureUpdate(data:Object) : void
      {
      }
   }
}
