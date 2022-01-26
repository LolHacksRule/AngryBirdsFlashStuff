package §_-DQ§
{
   import §_-1y§.§_-3T§;
   import §_-CG§.§_-gk§;
   import §_-CG§.getNextPowerOfTwo;
   import §_-fI§.§_-BI§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.ByteArray;
   import flash.utils.getQualifiedClassName;
   
   public class Texture
   {
       
      
      private var §_-fw§:Rectangle;
      
      private var §_-Sp§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §_-3T§();
         }
         this.§_-Sp§ = false;
      }
      
      public static function §_-NP§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-DQ§.Texture
      {
         return §_-BJ§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-BJ§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-DQ§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-ok§(param1,param2,param3);
         var _loc9_:§_-DQ§.Texture = new §_-Pc§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-At§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-ok§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
      {
         var legalWidth:int = 0;
         var legalHeight:int = 0;
         var potData:BitmapData = null;
         var data:BitmapData = param1;
         var generateMipMaps:Boolean = param2;
         var optimizeForRenderTexture:Boolean = param3;
         var origWidth:int = data.width;
         var origHeight:int = data.height;
         legalWidth = getNextPowerOfTwo(data.width);
         legalHeight = getNextPowerOfTwo(data.height);
         var format:String = Context3DTextureFormat.BGRA;
         var nativeTexture:flash.display3D.textures.Texture = §_-BI§.§_-Pw§.createTexture(legalWidth,legalHeight,format,optimizeForRenderTexture);
         if(legalWidth > origWidth || legalHeight > origHeight)
         {
            try
            {
               potData = new BitmapData(legalWidth,legalHeight,true,0);
               potData.copyPixels(data,data.rect,new Point(0,0));
               §_-gC§(potData,nativeTexture,generateMipMaps);
               potData.dispose();
            }
            catch(e:Error)
            {
               e.message += " bitmap size (" + legalWidth + "*" + legalHeight + ")";
               throw e;
            }
         }
         else
         {
            §_-gC§(data,nativeTexture,generateMipMaps);
         }
         return nativeTexture;
      }
      
      public static function §_-VC§(param1:ByteArray) : §_-DQ§.Texture
      {
         var _loc2_:String = String.fromCharCode(param1[0],param1[1],param1[2]);
         if(_loc2_ != "ATF")
         {
            throw new ArgumentError("Invalid ATF data");
         }
         var _loc3_:String = param1[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
         var _loc4_:int = Math.pow(2,param1[7]);
         var _loc5_:int = Math.pow(2,param1[8]);
         var _loc6_:int = param1[9];
         var _loc7_:flash.display3D.textures.Texture;
         (_loc7_ = §_-BI§.§_-Pw§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-Pc§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-At§(param1:§_-DQ§.Texture, param2:Rectangle) : §_-DQ§.Texture
      {
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            return param1;
         }
         return new §_-Ln§(param1,param2,true);
      }
      
      public static function §_-Av§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-DQ§.Texture
      {
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-DQ§.Texture = §_-BJ§(_loc5_,false,param4);
         _loc5_.dispose();
         return _loc6_;
      }
      
      private static function §_-gC§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         param2.uploadFromBitmapData(param1);
         if(param3)
         {
            _loc4_ = param1.width >> 1;
            _loc5_ = param1.height >> 1;
            _loc6_ = 1;
            _loc7_ = param1;
            while(_loc4_ >= 1 || _loc5_ >= 1)
            {
               _loc7_ = §_-iN§(_loc7_,_loc6_ > 1);
               param2.uploadFromBitmapData(_loc7_,_loc6_++);
               _loc4_ >>= 1;
               _loc5_ >>= 1;
            }
            if(_loc7_ != param1)
            {
               _loc7_.dispose();
            }
         }
      }
      
      private static function §_-iN§(param1:BitmapData, param2:Boolean) : BitmapData
      {
         var _loc3_:BitmapData = new BitmapData(Math.max(1,param1.width >> 1),Math.max(1,param1.height >> 1),true,0);
         var _loc4_:Matrix;
         (_loc4_ = new Matrix()).scale(0.5,0.5);
         _loc3_.draw(param1,_loc4_,null,null,null,true);
         if(param2)
         {
            param1.dispose();
         }
         return _loc3_;
      }
      
      public function dispose() : void
      {
      }
      
      public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
      }
      
      public function adjustVertexData(param1:§_-gk§) : §_-gk§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-gk§ = param1.clone();
         if(this.frame)
         {
            _loc3_ = this.§_-fw§.width + this.§_-fw§.x - this.width;
            _loc4_ = this.§_-fw§.height + this.§_-fw§.y - this.height;
            _loc2_.§_-tD§(0,-this.§_-fw§.x,-this.§_-fw§.y);
            _loc2_.§_-tD§(1,-_loc3_,-this.§_-fw§.y);
            _loc2_.§_-tD§(2,-this.§_-fw§.x,-_loc4_);
            _loc2_.§_-tD§(3,-_loc3_,-_loc4_);
         }
         return _loc2_;
      }
      
      public function get frame() : Rectangle
      {
         return this.§_-fw§;
      }
      
      public function set frame(param1:Rectangle) : void
      {
         this.§_-fw§ = !!param1 ? param1.clone() : null;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-Sp§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§_-Sp§ = param1;
      }
      
      public function get width() : Number
      {
         return 0;
      }
      
      public function get height() : Number
      {
         return 0;
      }
      
      public function get base() : TextureBase
      {
         return null;
      }
      
      public function get mipMapping() : Boolean
      {
         return false;
      }
      
      public function get premultipliedAlpha() : Boolean
      {
         return false;
      }
   }
}
