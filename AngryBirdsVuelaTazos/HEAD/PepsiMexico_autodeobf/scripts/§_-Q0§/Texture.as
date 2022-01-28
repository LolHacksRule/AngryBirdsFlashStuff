package §_-Q0§
{
   import §_-Ku§.§_-Ha§;
   import §_-OP§.§_-fW§;
   import §_-OP§.getNextPowerOfTwo;
   import §_-QR§.§_-dN§;
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
       
      
      private var §_-aI§:Rectangle;
      
      private var §_-fq§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §_-dN§();
         }
         this.§_-fq§ = false;
      }
      
      public static function §_-mr§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-Q0§.Texture
      {
         return §_-M0§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-M0§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-Q0§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-wu§(param1,param2,param3);
         var _loc9_:§_-Q0§.Texture = new §_-JQ§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-1a§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-wu§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
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
         var nativeTexture:flash.display3D.textures.Texture = §_-Ha§.§_-8o§.createTexture(legalWidth,legalHeight,format,optimizeForRenderTexture);
         if(legalWidth > origWidth || legalHeight > origHeight)
         {
            try
            {
               potData = new BitmapData(legalWidth,legalHeight,true,0);
               potData.copyPixels(data,data.rect,new Point(0,0));
               §_-dm§(potData,nativeTexture,generateMipMaps);
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
            §_-dm§(data,nativeTexture,generateMipMaps);
         }
         return nativeTexture;
      }
      
      public static function §_-fX§(param1:ByteArray) : §_-Q0§.Texture
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
         (_loc7_ = §_-Ha§.§_-8o§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-JQ§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-1a§(param1:§_-Q0§.Texture, param2:Rectangle) : §_-Q0§.Texture
      {
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            return param1;
         }
         return new §_-23§(param1,param2,true);
      }
      
      public static function §_-On§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-Q0§.Texture
      {
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-Q0§.Texture = §_-M0§(_loc5_,false,param4);
         _loc5_.dispose();
         return _loc6_;
      }
      
      private static function §_-dm§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
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
               _loc7_ = §_-2-§(_loc7_,_loc6_ > 1);
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
      
      private static function §_-2-§(param1:BitmapData, param2:Boolean) : BitmapData
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
      
      public function adjustVertexData(param1:§_-fW§) : §_-fW§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-fW§ = param1.clone();
         if(this.§_-kg§)
         {
            _loc3_ = this.§_-aI§.width + this.§_-aI§.x - this.width;
            _loc4_ = this.§_-aI§.height + this.§_-aI§.y - this.height;
            _loc2_.§_-Ou§(0,-this.§_-aI§.x,-this.§_-aI§.y);
            _loc2_.§_-Ou§(1,-_loc3_,-this.§_-aI§.y);
            _loc2_.§_-Ou§(2,-this.§_-aI§.x,-_loc4_);
            _loc2_.§_-Ou§(3,-_loc3_,-_loc4_);
         }
         return _loc2_;
      }
      
      public function get §_-kg§() : Rectangle
      {
         return this.§_-aI§;
      }
      
      public function set §_-kg§(param1:Rectangle) : void
      {
         this.§_-aI§ = !!param1 ? param1.clone() : null;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-fq§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§_-fq§ = param1;
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
      
      public function get parent() : §_-Q0§.Texture
      {
         return this;
      }
   }
}
