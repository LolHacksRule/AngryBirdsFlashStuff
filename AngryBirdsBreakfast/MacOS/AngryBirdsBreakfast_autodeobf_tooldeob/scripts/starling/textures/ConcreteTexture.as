package starling.textures
{
   import starling.core.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class ConcreteTexture extends starling.textures.Texture
   {
       
      
      private var mBase:TextureBase;
      
      private var mWidth:int;
      
      private var mHeight:int;
      
      private var mMipMapping:Boolean;
      
      private var mPremultipliedAlpha:Boolean;
      
      private var mOptimizedForRenderTexture:Boolean;
      
      private var mData:Object;
      
      private var mBaseUpdatePending:Boolean = false;
      
      public function ConcreteTexture(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.mBase = param1;
         this.mWidth = param2;
         this.mHeight = param3;
         this.mMipMapping = param4;
         this.mPremultipliedAlpha = param5;
         this.mOptimizedForRenderTexture = param6;
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
      
      public function restoreOnLostContext(param1:Object) : void
      {
         if(this.mData == null && param1 != null)
         {
            Starling.current.addEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         }
         if(param1 == null)
         {
            Starling.current.removeEventListener(Event.CONTEXT3D_CREATE,this.onContextCreated);
         }
         this.mData = param1;
      }
      
      private function onContextCreated(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.mBaseUpdatePending = true;
         if(param1 != null)
         {
            this.restoreOnLostContext(param1);
         }
      }
      
      public function get optimizedForRenderTexture() : Boolean
      {
         return this.mOptimizedForRenderTexture;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.updateBaseTexture(param1);
         return this.mBase;
      }
      
      override public function get root() : starling.textures.Texture
      {
         return this;
      }
      
      private function updateBaseTexture(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.mBaseUpdatePending)
         {
            return;
         }
         var _loc2_:BitmapData = this.mData as BitmapData;
         var _loc3_:ByteArray = this.mData as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.mWidth,this.mHeight,Context3DTextureFormat.BGRA,this.mOptimizedForRenderTexture);
            starling.textures.Texture.uploadBitmapData(_loc4_,_loc2_,this.mMipMapping);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.mWidth,this.mHeight,_loc5_,this.mOptimizedForRenderTexture);
            starling.textures.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.mBase = _loc4_;
         this.mBaseUpdatePending = false;
      }
      
      override public function get width() : Number
      {
         return this.mWidth;
      }
      
      override public function get height() : Number
      {
         return this.mHeight;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.mMipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.mPremultipliedAlpha;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.mData as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
