package §?V§
{
   import §-!Y§.§%!%§;
   import §-$§.§6"5§;
   import §-$§.getNextPowerOfTwo;
   import §]"1§.§1"-§;
   import §]"1§.§`n§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
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
       
      
      private var §1!P§:Rectangle;
      
      private var §^!w§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §1"-§();
         }
         this.§^!w§ = false;
      }
      
      public static function §#`§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false) : §?V§.Texture
      {
         return §"c§(param1,param2.bitmapData,param3,param4);
      }
      
      public static function §"c§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false) : §?V§.Texture
      {
         var _loc9_:BitmapData = null;
         var _loc10_:§`s§ = null;
         var _loc11_:flash.display3D.textures.Texture = null;
         var _loc5_:int = param2.width;
         var _loc6_:int = param2.height;
         var _loc7_:int = _loc5_;
         var _loc8_:int = _loc6_;
         if(param1 != null)
         {
            _loc7_ = getNextPowerOfTwo(param2.width);
            _loc8_ = getNextPowerOfTwo(param2.height);
            _loc11_ = param1.createTexture(_loc7_,_loc8_,Context3DTextureFormat.BGRA,param4);
            if(_loc7_ > _loc5_ || _loc8_ > _loc6_)
            {
               (_loc9_ = new BitmapData(_loc7_,_loc8_,true,0)).copyPixels(param2,param2.rect,new Point(0,0));
               param2 = _loc9_;
            }
            uploadBitmapData(_loc11_,param2,param3);
         }
         _loc10_ = new §`s§(_loc11_,_loc7_,_loc8_,param3,true,param4);
         if(§%!%§.§4G§)
         {
            _loc10_.§'!h§(param2);
         }
         else if(_loc9_)
         {
            _loc9_.dispose();
         }
         if(_loc5_ == _loc7_ && _loc6_ == _loc8_)
         {
            return _loc10_;
         }
         return new §3k§(_loc10_,new Rectangle(0,0,_loc5_,_loc6_),true);
      }
      
      public static function §`"0§(param1:Context3D, param2:ByteArray) : §?V§.Texture
      {
         if(param1 == null)
         {
            throw new §`n§();
         }
         var _loc3_:String = String.fromCharCode(param2[0],param2[1],param2[2]);
         if(_loc3_ != "ATF")
         {
            throw new ArgumentError("Invalid ATF data");
         }
         var _loc4_:String = param2[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
         var _loc5_:int = Math.pow(2,param2[7]);
         var _loc6_:int = Math.pow(2,param2[8]);
         var _loc7_:int = param2[9];
         var _loc8_:flash.display3D.textures.Texture = param1.createTexture(_loc5_,_loc6_,_loc4_,false);
         uploadAtfData(_loc8_,param2);
         var _loc9_:§`s§ = new §`s§(_loc8_,_loc5_,_loc6_,_loc7_ > 1,false);
         if(§%!%§.§4G§)
         {
            _loc9_.§'!h§(param2);
         }
         return _loc9_;
      }
      
      public static function §40§(param1:§?V§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §?V§.Texture
      {
         var _loc4_:§?V§.Texture;
         (_loc4_ = new §3k§(param1,param2)).§1!P§ = param3;
         return _loc4_;
      }
      
      public static function §!!f§(param1:Context3D, param2:int = 64, param3:int = 64, param4:uint = 4.294967295E9, param5:Boolean = false) : §?V§.Texture
      {
         var _loc6_:BitmapData = new BitmapData(param2,param3,true,param4);
         var _loc7_:§?V§.Texture = §"c§(param1,_loc6_,false,param5);
         if(!§%!%§.§4G§)
         {
            _loc6_.dispose();
         }
         return _loc7_;
      }
      
      static function uploadBitmapData(param1:flash.display3D.textures.Texture, param2:BitmapData, param3:Boolean) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = 0;
         var _loc7_:BitmapData = null;
         var _loc8_:Matrix = null;
         var _loc9_:Rectangle = null;
         param1.uploadFromBitmapData(param2);
         if(param3)
         {
            _loc4_ = param2.width >> 1;
            _loc5_ = param2.height >> 1;
            _loc6_ = 1;
            _loc7_ = new BitmapData(_loc4_,_loc5_,true,0);
            _loc8_ = new Matrix(0.5,0,0,0.5);
            _loc9_ = new Rectangle();
            while(_loc4_ >= 1 || _loc5_ >= 1)
            {
               _loc9_.width = _loc4_;
               _loc9_.height = _loc5_;
               _loc7_.fillRect(_loc9_,0);
               _loc7_.draw(param2,_loc8_,null,null,null,true);
               param1.uploadFromBitmapData(_loc7_,_loc6_++);
               _loc8_.scale(0.5,0.5);
               _loc4_ >>= 1;
               _loc5_ >>= 1;
            }
            _loc7_.dispose();
         }
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0) : void
      {
         param1.uploadCompressedTextureFromByteArray(param2,param3);
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§6"5§, param2:int, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§1!P§)
         {
            if(param3 != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            _loc4_ = this.§1!P§.width + this.§1!P§.x - this.width;
            _loc5_ = this.§1!P§.height + this.§1!P§.y - this.height;
            param1.§"F§(param2,-this.§1!P§.x,-this.§1!P§.y);
            param1.§"F§(param2 + 1,-_loc4_,-this.§1!P§.y);
            param1.§"F§(param2 + 2,-this.§1!P§.x,-_loc5_);
            param1.§"F§(param2 + 3,-_loc4_,-_loc5_);
         }
      }
      
      public function get § "0§() : Rectangle
      {
         return !!this.§1!P§ ? this.§1!P§.clone() : new Rectangle(0,0,this.width,this.height);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§^!w§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§^!w§ = param1;
      }
      
      public function get width() : Number
      {
         return 0;
      }
      
      public function get height() : Number
      {
         return 0;
      }
      
      public function getBase(param1:Context3D) : TextureBase
      {
         return null;
      }
      
      public function get root() : §?V§.Texture
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
      
      public function get parent() : §?V§.Texture
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
      
      public function requestBaseTextureUpdate(param1:Object) : void
      {
      }
   }
}
