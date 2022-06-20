package starling.textures
{
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import starling.core.Starling;
   import starling.events.Event;
   
   public class ConcreteTexture extends starling.textures.Texture
   {
       
      
      private var mBase:TextureBase;
      
      private var mFormat:String;
      
      private var mWidth:int;
      
      private var mHeight:int;
      
      private var mMipMapping:Boolean;
      
      private var mPremultipliedAlpha:Boolean;
      
      private var mOptimizedForRenderTexture:Boolean;
      
      private var mData:Object;
      
      private var mScale:Number;
      
      public function ConcreteTexture(base:TextureBase, format:String, width:int, height:int, mipMapping:Boolean, premultipliedAlpha:Boolean, optimizedForRenderTexture:Boolean = false, scale:Number = 1)
      {
         super();
         this.mScale = scale <= 0 ? Number(1) : Number(scale);
         this.mBase = base;
         this.mFormat = format;
         this.mWidth = width;
         this.mHeight = height;
         this.mMipMapping = mipMapping;
         this.mPremultipliedAlpha = premultipliedAlpha;
         this.mOptimizedForRenderTexture = optimizedForRenderTexture;
      }
      
      override public function dispose() : void
      {
         if(this.mBase)
         {
            this.mBase.dispose();
         }
         this.restoreOnLostContext(null);
         super.dispose();
      }
      
      public function restoreOnLostContext(data:Object) : void
      {
         if(this.mData == null && data != null)
         {
            Starling.current.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         }
         else if(data == null)
         {
            Starling.current.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         }
         this.mData = data;
      }
      
      private function onContextCreated(event:Event) : void
      {
         var nativeTexture:flash.display3D.textures.Texture = null;
         var context:Context3D = Starling.context;
         var bitmapData:BitmapData = this.mData as BitmapData;
         var atfData:AtfData = this.mData as AtfData;
         if(bitmapData)
         {
            nativeTexture = context.createTexture(this.mWidth,this.mHeight,Context3DTextureFormat.BGRA,this.mOptimizedForRenderTexture);
            starling.textures.Texture.uploadBitmapData(nativeTexture,bitmapData,this.mMipMapping);
         }
         else if(atfData)
         {
            nativeTexture = context.createTexture(atfData.width,atfData.height,atfData.format,this.mOptimizedForRenderTexture);
            starling.textures.Texture.uploadAtfData(nativeTexture,atfData.data);
         }
         this.mBase = nativeTexture;
      }
      
      public function get optimizedForRenderTexture() : Boolean
      {
         return this.mOptimizedForRenderTexture;
      }
      
      override public function getBase(context:Context3D) : TextureBase
      {
         return this.mBase;
      }
      
      override public function get root() : ConcreteTexture
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.mFormat;
      }
      
      override public function get width() : Number
      {
         return this.mWidth / this.mScale;
      }
      
      override public function get height() : Number
      {
         return this.mHeight / this.mScale;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.mWidth;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.mHeight;
      }
      
      override public function get scale() : Number
      {
         return this.mScale;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.mMipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.mPremultipliedAlpha;
      }
   }
}
