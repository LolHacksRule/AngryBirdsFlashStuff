package §_-jY§
{
   import §_-B2§.§_-H4§;
   import §_-Zq§.§_-8O§;
   import §_-Zq§.getNextPowerOfTwo;
   import §_-dQ§.§_-wO§;
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
       
      
      private var §_-l6§:Rectangle;
      
      private var §_-ee§:Boolean;
      
      public function Texture()
      {
         super();
         if(getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §_-wO§();
         }
         this.§_-ee§ = false;
      }
      
      public static function §_-ob§(param1:Bitmap, param2:Boolean = true, param3:Boolean = false) : §_-jY§.Texture
      {
         return §_-SK§(param1.bitmapData,param2,param3);
      }
      
      public static function §_-SK§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : §_-jY§.Texture
      {
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:flash.display3D.textures.Texture = §_-qT§(param1,param2,param3);
         var _loc9_:§_-jY§.Texture = new §_-Pq§(_loc8_,_loc6_,_loc7_,param2,true);
         return §_-Dq§(_loc9_,new Rectangle(0,0,_loc4_,_loc5_));
      }
      
      protected static function §_-qT§(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : flash.display3D.textures.Texture
      {
         var _loc10_:BitmapData = null;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = getNextPowerOfTwo(param1.width);
         var _loc7_:int = getNextPowerOfTwo(param1.height);
         var _loc8_:String = Context3DTextureFormat.BGRA;
         var _loc9_:flash.display3D.textures.Texture = §_-H4§.§_-Eu§.createTexture(_loc6_,_loc7_,_loc8_,param3);
         if(_loc6_ > _loc4_ || _loc7_ > _loc5_)
         {
            (_loc10_ = new BitmapData(_loc6_,_loc7_,true,0)).copyPixels(param1,param1.rect,new Point(0,0));
            §_-pT§(_loc10_,_loc9_,param2);
            _loc10_.dispose();
         }
         else
         {
            §_-pT§(param1,_loc9_,param2);
         }
         return _loc9_;
      }
      
      public static function §_-q§(param1:ByteArray) : §_-jY§.Texture
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
         (_loc7_ = §_-H4§.§_-Eu§.createTexture(_loc4_,_loc5_,_loc3_,false)).uploadCompressedTextureFromByteArray(param1,0);
         return new §_-Pq§(_loc7_,_loc4_,_loc5_,_loc6_ > 1,false);
      }
      
      private static function §_-Dq§(param1:§_-jY§.Texture, param2:Rectangle) : §_-jY§.Texture
      {
         if(param2.x == 0 && param2.y == 0 && param2.width == param1.width && param2.height == param1.height)
         {
            return param1;
         }
         return new §_-bn§(param1,param2,true);
      }
      
      public static function §_-jC§(param1:int = 64, param2:int = 64, param3:uint = 4.294967295E9, param4:Boolean = false) : §_-jY§.Texture
      {
         var _loc5_:BitmapData = new BitmapData(param1,param2,true,param3);
         var _loc6_:§_-jY§.Texture = §_-SK§(_loc5_,false,param4);
         _loc5_.dispose();
         return _loc6_;
      }
      
      private static function §_-pT§(param1:BitmapData, param2:flash.display3D.textures.Texture, param3:Boolean) : void
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
               _loc7_ = §_-9d§(_loc7_,_loc6_ > 1);
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
      
      private static function §_-9d§(param1:BitmapData, param2:Boolean) : BitmapData
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
      
      public function adjustVertexData(param1:§_-8O§) : §_-8O§
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc2_:§_-8O§ = param1.clone();
         if(this.frame)
         {
            _loc3_ = this.§_-l6§.width + this.§_-l6§.x - this.width;
            _loc4_ = this.§_-l6§.height + this.§_-l6§.y - this.height;
            _loc2_.§_-3§(0,-this.§_-l6§.x,-this.§_-l6§.y);
            _loc2_.§_-3§(1,-_loc3_,-this.§_-l6§.y);
            _loc2_.§_-3§(2,-this.§_-l6§.x,-_loc4_);
            _loc2_.§_-3§(3,-_loc3_,-_loc4_);
         }
         return _loc2_;
      }
      
      public function get frame() : Rectangle
      {
         return this.§_-l6§;
      }
      
      public function set frame(param1:Rectangle) : void
      {
         this.§_-l6§ = !!param1 ? param1.clone() : null;
      }
      
      public function get repeat() : Boolean
      {
         return this.§_-ee§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§_-ee§ = param1;
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
