package §"#z§
{
   import §'!j§.Starling;
   import §,#=§.§0C§;
   import §,#=§.getNextPowerOfTwo;
   import §]#a§.§;L§;
   import §]#a§.§]$5§;
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
   
   public class Texture
   {
      
      private static var §5k§:Point = new Point();
       
      
      private var §9!>§:Rectangle;
      
      private var §["Y§:Boolean;
      
      public function Texture()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §]$5§();
         }
         this.§["Y§ = false;
      }
      
      public static function §3E§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false, param5:Number = 1) : §"#z§.Texture
      {
         return §0#B§(param1,param2.bitmapData,param3,param4,param5);
      }
      
      public static function §0#B§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false, param5:Number = 1) : §"#z§.Texture
      {
         var _loc10_:BitmapData = null;
         var _loc11_:§]#i§ = null;
         var _loc12_:flash.display3D.textures.Texture = null;
         var _loc6_:int = param2.width;
         var _loc7_:int = param2.height;
         var _loc8_:int = _loc6_;
         var _loc9_:int = _loc7_;
         if(param1 != null && param1.driverInfo != "Disposed")
         {
            _loc8_ = getNextPowerOfTwo(_loc6_);
            _loc9_ = getNextPowerOfTwo(_loc7_);
            _loc12_ = param1.createTexture(_loc8_,_loc9_,Context3DTextureFormat.BGRA,param4);
            if(_loc8_ > _loc6_ || _loc9_ > _loc7_)
            {
               (_loc10_ = new BitmapData(_loc8_,_loc9_,true,0)).copyPixels(param2,param2.rect,§5k§);
               param2 = _loc10_;
            }
            uploadBitmapData(_loc12_,param2,param3);
         }
         _loc11_ = new §]#i§(_loc12_,Context3DTextureFormat.BGRA,_loc8_,_loc9_,param3,true,param4,param5);
         if(Starling.§ $A§)
         {
            _loc11_.§]!6§(param2);
         }
         else if(_loc10_)
         {
            _loc10_.dispose();
         }
         if(_loc6_ == _loc8_ && _loc7_ == _loc9_)
         {
            return _loc11_;
         }
         return new §2"G§(_loc11_,new Rectangle(0,0,_loc6_ / param5,_loc7_ / param5),true);
      }
      
      public static function §>I§(param1:Context3D, param2:ByteArray, param3:Number = 1, param4:Boolean = true, param5:Function = null) : §"#z§.Texture
      {
         var eventType:String = null;
         var nativeTexture:flash.display3D.textures.Texture = null;
         var concreteTexture:§]#i§ = null;
         var onTextureReady:Function = null;
         var context:Context3D = param1;
         var data:ByteArray = param2;
         var scale:Number = param3;
         var useMipMaps:Boolean = param4;
         var loadAsync:Function = param5;
         onTextureReady = function(param1:Event):void
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
            throw new §;L§();
         }
         var async:Boolean = loadAsync != null;
         var atfData:§`?§ = new §`?§(data);
         nativeTexture = context.createTexture(atfData.width,atfData.height,atfData.format,false);
         uploadAtfData(nativeTexture,data,0,async);
         concreteTexture = new §]#i§(nativeTexture,atfData.format,atfData.width,atfData.height,useMipMaps && atfData.§#$5§ > 1,false,false,scale);
         if(Starling.§ $A§)
         {
            concreteTexture.§]!6§(atfData);
         }
         if(async)
         {
            nativeTexture.addEventListener(eventType,onTextureReady);
         }
         return concreteTexture;
      }
      
      public static function §-!j§(param1:Context3D, param2:int, param3:int, param4:uint = 4.294967295E9, param5:Boolean = false, param6:Number = -1) : §"#z§.Texture
      {
         if(param6 <= 0)
         {
            param6 = Starling.§&C§;
         }
         var _loc7_:BitmapData = new BitmapData(param2 * param6,param3 * param6,true,param4);
         var _loc8_:§"#z§.Texture = §0#B§(param1,_loc7_,false,param5,param6);
         if(!Starling.§ $A§)
         {
            _loc7_.dispose();
         }
         return _loc8_;
      }
      
      public static function §-R§(param1:Context3D, param2:int = 64, param3:int = 64, param4:Boolean = false, param5:Boolean = true, param6:Number = -1) : §"#z§.Texture
      {
         if(param6 <= 0)
         {
            param6 = Starling.§&C§;
         }
         var _loc7_:int = param2 * param6;
         var _loc8_:int = param3 * param6;
         var _loc9_:int = getNextPowerOfTwo(_loc7_);
         var _loc10_:int = getNextPowerOfTwo(_loc8_);
         var _loc11_:String = Context3DTextureFormat.BGRA;
         if(param1 == null)
         {
            throw new §;L§();
         }
         var _loc12_:flash.display3D.textures.Texture = param1.createTexture(_loc9_,_loc10_,Context3DTextureFormat.BGRA,param5);
         var _loc13_:§]#i§ = new §]#i§(_loc12_,_loc11_,_loc9_,_loc10_,false,param4,param5,param6);
         if(_loc7_ == _loc9_ && _loc8_ == _loc10_)
         {
            return _loc13_;
         }
         return new §2"G§(_loc13_,new Rectangle(0,0,param2,param3),true);
      }
      
      public static function §,a§(param1:§"#z§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §"#z§.Texture
      {
         var _loc4_:§"#z§.Texture;
         (_loc4_ = new §2"G§(param1,param2)).§9!>§ = param3;
         return _loc4_;
      }
      
      static function uploadBitmapData(param1:flash.display3D.textures.Texture, param2:BitmapData, param3:Boolean) : void
      {
         var currentWidth:int = 0;
         var currentHeight:int = 0;
         var level:int = 0;
         var canvas:BitmapData = null;
         var transform:Matrix = null;
         var bounds:Rectangle = null;
         var nativeTexture:flash.display3D.textures.Texture = param1;
         var data:BitmapData = param2;
         var generateMipmaps:Boolean = param3;
         try
         {
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
         catch(e:ArgumentError)
         {
         }
      }
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0, param4:Boolean = false) : void
      {
         param1.uploadCompressedTextureFromByteArray(param2,param3,param4);
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§0C§, param2:int, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§9!>§)
         {
            if(param3 != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            _loc4_ = this.§9!>§.width + this.§9!>§.x - this.width;
            _loc5_ = this.§9!>§.height + this.§9!>§.y - this.height;
            param1.§"!O§(param2,-this.§9!>§.x,-this.§9!>§.y);
            param1.§"!O§(param2 + 1,-_loc4_,-this.§9!>§.y);
            param1.§"!O§(param2 + 2,-this.§9!>§.x,-_loc5_);
            param1.§"!O§(param2 + 3,-_loc4_,-_loc5_);
         }
      }
      
      public function get frame() : Rectangle
      {
         return !!this.§9!>§ ? this.§9!>§.clone() : new Rectangle(0,0,this.width,this.height);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§["Y§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§["Y§ = param1;
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
      
      public function getBase(param1:Context3D) : TextureBase
      {
         return null;
      }
      
      public function get root() : §]#i§
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
      
      public function get parent() : §"#z§.Texture
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
