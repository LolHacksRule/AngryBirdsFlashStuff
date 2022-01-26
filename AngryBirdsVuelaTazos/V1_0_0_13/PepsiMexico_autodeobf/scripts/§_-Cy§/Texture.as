package §_-Cy§
{
   import §_-JR§.§_-yh§;
   import §_-kX§.§_-hW§;
   import §_-kX§.getNextPowerOfTwo;
   import §_-ls§.§_-zF§;
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
       
      
      private var §_-Cn§:Rectangle;
      
      private var §_-fK§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §_-zF§();
         }
         this.§_-fK§ = false;
      }
      
      public static function §_-WB§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-Cy§.Texture
      {
         return §_-qj§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-qj§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-Cy§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-6b§(param1,param2,param3);
         var _loc9_:§_-Cy§.Texture = new §_-eH§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-ra§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-6b§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
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
         var nativeTexture:flash.display3D.textures.Texture = §_-yh§.§_-gS§.createTexture(legalWidth,legalHeight,format,optimizeForRenderTexture);
         if(legalWidth > origWidth || legalHeight > origHeight)
         {
            try
            {
               potData = new BitmapData(legalWidth,legalHeight,true,0);
               potData.copyPixels(data,data.rect,new Point(0,0));
               §_-sU§(potData,nativeTexture,generateMipMaps);
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
            §_-sU§(data,nativeTexture,generateMipMaps);
         }
         return nativeTexture;
      }
      
      public static function §_-N3§(param1:ByteArray) : §_-Cy§.Texture
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
         (_loc7_ = §_-yh§.§_-gS§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-eH§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-ra§(param1:§_-Cy§.Texture, param2:Rectangle) : §_-Cy§.Texture
      {
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            return param1;
         }
         return new §_-s0§(param1,param2,true);
      }
      
      public static function §_-Ee§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-Cy§.Texture
      {
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-Cy§.Texture = §_-qj§(_loc5_,false,param4);
         _loc5_.dispose();
         return _loc6_;
      }
      
      private static function §_-sU§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
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
               _loc7_ = §_-i0§(_loc7_,_loc6_ > 1);
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
      
      private static function §_-i0§(param1:BitmapData, param2:Boolean) : BitmapData
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
      
      public function adjustVertexData(param1:§_-hW§) : §_-hW§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-hW§ = param1.clone();
         if(this.frame)
         {
            _loc3_ = this.§_-Cn§.width + this.§_-Cn§.x - this.width;
            _loc4_ = this.§_-Cn§.height + this.§_-Cn§.y - this.height;
            _loc2_.§_-jg§(0,-this.§_-Cn§.x,-this.§_-Cn§.y);
            _loc2_.§_-jg§(1,-_loc3_,-this.§_-Cn§.y);
            _loc2_.§_-jg§(2,-this.§_-Cn§.x,-_loc4_);
            _loc2_.§_-jg§(3,-_loc3_,-_loc4_);
         }
         return _loc2_;
      }
      
      public function get frame() : Rectangle
      {
         return this.§_-Cn§;
      }
      
      public function set frame(param1:Rectangle) : void
      {
         this.§_-Cn§ = !!param1 ? param1.clone() : null;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-fK§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§_-fK§ = param1;
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
