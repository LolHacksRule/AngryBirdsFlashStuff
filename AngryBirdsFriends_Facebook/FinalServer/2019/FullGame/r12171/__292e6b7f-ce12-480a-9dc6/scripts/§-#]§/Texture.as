package §-#]§
{
   import §"#k§.Starling;
   import §'"T§.§^G§;
   import §'"T§.§`#y§;
   import §8#p§.§>!B§;
   import §8#p§.getNextPowerOfTwo;
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
      
      private static var §]$C§:Point = new Point();
       
      
      private var §&"0§:Rectangle;
      
      private var §!"%§:Boolean;
      
      public function Texture()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §`#y§();
         }
         this.§!"%§ = false;
      }
      
      public static function §6#^§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false, param5:Number = 1) : §-#]§.Texture
      {
         return §4"§(param1,param2.bitmapData,param3,param4,param5);
      }
      
      public static function §4"§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false, param5:Number = 1) : §-#]§.Texture
      {
         var _loc10_:BitmapData = null;
         var _loc11_:§7"z§ = null;
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
               (_loc10_ = new BitmapData(_loc8_,_loc9_,true,0)).copyPixels(param2,param2.rect,§]$C§);
               param2 = _loc10_;
            }
            uploadBitmapData(_loc12_,param2,param3);
         }
         _loc11_ = new §7"z§(_loc12_,Context3DTextureFormat.BGRA,_loc8_,_loc9_,param3,true,param4,param5);
         if(Starling.§'"K§)
         {
            _loc11_.§!#R§(param2);
         }
         else if(_loc10_)
         {
            _loc10_.dispose();
         }
         if(_loc6_ == _loc8_ && _loc7_ == _loc9_)
         {
            return _loc11_;
         }
         return new §'!1§(_loc11_,new Rectangle(0,0,_loc6_ / param5,_loc7_ / param5),true);
      }
      
      public static function §<#L§(param1:Context3D, param2:ByteArray, param3:Number = 1, param4:Boolean = true, param5:Function = null) : §-#]§.Texture
      {
         var eventType:String = null;
         var nativeTexture:flash.display3D.textures.Texture = null;
         var concreteTexture:§7"z§ = null;
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
            throw new §^G§();
         }
         var async:Boolean = loadAsync != null;
         var atfData:§ #<§ = new § #<§(data);
         nativeTexture = context.createTexture(atfData.width,atfData.height,atfData.format,false);
         uploadAtfData(nativeTexture,data,0,async);
         concreteTexture = new §7"z§(nativeTexture,atfData.format,atfData.width,atfData.height,useMipMaps && atfData.§,!Z§ > 1,false,false,scale);
         if(Starling.§'"K§)
         {
            concreteTexture.§!#R§(atfData);
         }
         if(async)
         {
            nativeTexture.addEventListener(eventType,onTextureReady);
         }
         return concreteTexture;
      }
      
      public static function §2"Q§(param1:Context3D, param2:int, param3:int, param4:uint = 4.294967295E9, param5:Boolean = false, param6:Number = -1) : §-#]§.Texture
      {
         if(param6 <= 0)
         {
            param6 = Starling.§3!F§;
         }
         var _loc7_:BitmapData = new BitmapData(param2 * param6,param3 * param6,true,param4);
         var _loc8_:§-#]§.Texture = §4"§(param1,_loc7_,false,param5,param6);
         if(!Starling.§'"K§)
         {
            _loc7_.dispose();
         }
         return _loc8_;
      }
      
      public static function §1!_§(param1:Context3D, param2:int = 64, param3:int = 64, param4:Boolean = false, param5:Boolean = true, param6:Number = -1) : §-#]§.Texture
      {
         if(param6 <= 0)
         {
            param6 = Starling.§3!F§;
         }
         var _loc7_:int = param2 * param6;
         var _loc8_:int = param3 * param6;
         var _loc9_:int = getNextPowerOfTwo(_loc7_);
         var _loc10_:int = getNextPowerOfTwo(_loc8_);
         var _loc11_:String = Context3DTextureFormat.BGRA;
         if(param1 == null)
         {
            throw new §^G§();
         }
         var _loc12_:flash.display3D.textures.Texture = param1.createTexture(_loc9_,_loc10_,Context3DTextureFormat.BGRA,param5);
         var _loc13_:§7"z§ = new §7"z§(_loc12_,_loc11_,_loc9_,_loc10_,false,param4,param5,param6);
         if(_loc7_ == _loc9_ && _loc8_ == _loc10_)
         {
            return _loc13_;
         }
         return new §'!1§(_loc13_,new Rectangle(0,0,param2,param3),true);
      }
      
      public static function §;<§(param1:§-#]§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §-#]§.Texture
      {
         var _loc4_:§-#]§.Texture;
         (_loc4_ = new §'!1§(param1,param2)).§&"0§ = param3;
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
      
      public function adjustVertexData(param1:§>!B§, param2:int, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§&"0§)
         {
            if(param3 != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            _loc4_ = this.§&"0§.width + this.§&"0§.x - this.width;
            _loc5_ = this.§&"0§.height + this.§&"0§.y - this.height;
            param1.§,!q§(param2,-this.§&"0§.x,-this.§&"0§.y);
            param1.§,!q§(param2 + 1,-_loc4_,-this.§&"0§.y);
            param1.§,!q§(param2 + 2,-this.§&"0§.x,-_loc5_);
            param1.§,!q§(param2 + 3,-_loc4_,-_loc5_);
         }
      }
      
      public function get frame() : Rectangle
      {
         return !!this.§&"0§ ? this.§&"0§.clone() : new Rectangle(0,0,this.width,this.height);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§!"%§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§!"%§ = param1;
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
      
      public function get root() : §7"z§
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
      
      public function get parent() : §-#]§.Texture
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
