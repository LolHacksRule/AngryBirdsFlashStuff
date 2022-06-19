package §_-yp§
{
   import §_-V9§.§_-Ow§;
   import §_-Ye§.§_-cP§;
   import §_-mb§.§_-GZ§;
   import §_-mb§.getNextPowerOfTwo;
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
       
      
      private var §_-kW§:Rectangle;
      
      private var §_-wb§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §_-Ow§();
         }
         this.§_-wb§ = false;
      }
      
      public static function §_-E6§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-yp§.Texture
      {
         return §_-uW§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-uW§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-yp§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-S5§(param1,param2,param3);
         var _loc9_:§_-yp§.Texture = new §_-w1§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-ss§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-S5§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
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
         var nativeTexture:flash.display3D.textures.Texture = §_-cP§.§_-eZ§.createTexture(legalWidth,legalHeight,format,optimizeForRenderTexture);
         if(legalWidth > origWidth || legalHeight > origHeight)
         {
            try
            {
               potData = new BitmapData(legalWidth,legalHeight,true,0);
               potData.copyPixels(data,data.rect,new Point(0,0));
               §_-5t§(potData,nativeTexture,generateMipMaps);
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
            §_-5t§(data,nativeTexture,generateMipMaps);
         }
         return nativeTexture;
      }
      
      public static function §_-Tp§(param1:ByteArray) : §_-yp§.Texture
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
         (_loc7_ = §_-cP§.§_-eZ§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-w1§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-ss§(param1:§_-yp§.Texture, param2:Rectangle) : §_-yp§.Texture
      {
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            return param1;
         }
         return new §_-pq§(param1,param2,true);
      }
      
      public static function §_-UF§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-yp§.Texture
      {
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-yp§.Texture = §_-uW§(_loc5_,false,param4);
         _loc5_.dispose();
         return _loc6_;
      }
      
      private static function §_-5t§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
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
               _loc7_ = §_-uC§(_loc7_,_loc6_ > 1);
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
      
      private static function §_-uC§(param1:BitmapData, param2:Boolean) : BitmapData
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
      
      public function requestBaseTextureUpdate(param1:Object) : void
      {
      }
      
      public function adjustVertexData(param1:§_-GZ§) : §_-GZ§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-GZ§ = param1.clone();
         if(this.§_-3B§)
         {
            _loc3_ = this.§_-kW§.width + this.§_-kW§.x - this.width;
            _loc4_ = this.§_-kW§.height + this.§_-kW§.y - this.height;
            _loc2_.§_-Ca§(0,-this.§_-kW§.x,-this.§_-kW§.y);
            _loc2_.§_-Ca§(1,-_loc3_,-this.§_-kW§.y);
            _loc2_.§_-Ca§(2,-this.§_-kW§.x,-_loc4_);
            _loc2_.§_-Ca§(3,-_loc3_,-_loc4_);
         }
         return _loc2_;
      }
      
      public function get §_-3B§() : Rectangle
      {
         return this.§_-kW§;
      }
      
      public function set §_-3B§(param1:Rectangle) : void
      {
         this.§_-kW§ = !!param1 ? param1.clone() : null;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-wb§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§_-wb§ = param1;
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
      
      public function get parent() : §_-yp§.Texture
      {
         return this;
      }
   }
}
