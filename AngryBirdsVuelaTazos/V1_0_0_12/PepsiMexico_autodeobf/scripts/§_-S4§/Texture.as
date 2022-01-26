package §_-S4§
{
   import §_-0b§.§_-Bn§;
   import §_-0b§.getNextPowerOfTwo;
   import §_-nh§.§_-6J§;
   import §_-v3§.§_-G3§;
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
       
      
      private var §_-Wb§:Rectangle;
      
      private var §_-qt§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §_-6J§();
         }
         this.§_-qt§ = false;
      }
      
      public static function §_-DL§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-S4§.Texture
      {
         return §_-qw§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-qw§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-S4§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-6C§(param1,param2,param3);
         var _loc9_:§_-S4§.Texture = new §_-s-§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-HN§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-6C§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
      {
         var _loc10_:BitmapData = null;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:String = Context3DTextureFormat.BGRA;
         var _loc9_:flash.display3D.textures.Texture = §_-G3§.§_-FH§.createTexture(_loc6_,_loc7_,_loc8_,param3);
         if(_loc6_ > _loc4_ || _loc7_ > _loc5_)
         {
            (_loc10_ = new BitmapData(_loc6_,_loc7_,true,0)).copyPixels(param1,param1.rect,new Point(0,0));
            §_-0d§(_loc10_,_loc9_,param2);
            _loc10_.dispose();
         }
         else
         {
            §_-0d§(param1,_loc9_,param2);
         }
         return _loc9_;
      }
      
      public static function §_-Q1§(param1:ByteArray) : §_-S4§.Texture
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
         (_loc7_ = §_-G3§.§_-FH§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-s-§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-HN§(param1:§_-S4§.Texture, param2:Rectangle) : §_-S4§.Texture
      {
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            return param1;
         }
         return new §_-JQ§(param1,param2,true);
      }
      
      public static function §_-QE§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-S4§.Texture
      {
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-S4§.Texture = §_-qw§(_loc5_,false,param4);
         _loc5_.dispose();
         return _loc6_;
      }
      
      private static function §_-0d§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
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
               _loc7_ = §_-WI§(_loc7_,_loc6_ > 1);
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
      
      private static function §_-WI§(param1:BitmapData, param2:Boolean) : BitmapData
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
      
      public function adjustVertexData(param1:§_-Bn§) : §_-Bn§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-Bn§ = param1.clone();
         if(this.frame)
         {
            _loc3_ = this.§_-Wb§.width + this.§_-Wb§.x - this.width;
            _loc4_ = this.§_-Wb§.height + this.§_-Wb§.y - this.height;
            _loc2_.§_-Zc§(0,-this.§_-Wb§.x,-this.§_-Wb§.y);
            _loc2_.§_-Zc§(1,-_loc3_,-this.§_-Wb§.y);
            _loc2_.§_-Zc§(2,-this.§_-Wb§.x,-_loc4_);
            _loc2_.§_-Zc§(3,-_loc3_,-_loc4_);
         }
         return _loc2_;
      }
      
      public function get frame() : Rectangle
      {
         return this.§_-Wb§;
      }
      
      public function set frame(param1:Rectangle) : void
      {
         this.§_-Wb§ = !!param1 ? param1.clone() : null;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-qt§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§_-qt§ = param1;
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
