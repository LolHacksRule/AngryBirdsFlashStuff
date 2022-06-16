package §9$;§
{
   import §+#B§.§'"V§;
   import §+#B§.§;$%§;
   import §5!D§.§`e§;
   import §5!D§.getNextPowerOfTwo;
   import §?"e§.Starling;
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
      
      private static var §"@§:Point = new Point();
       
      
      private var §'$>§:Rectangle;
      
      private var §,!-§:Boolean;
      
      public function Texture()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.textures::Texture")
         {
            throw new §'"V§();
         }
         this.§,!-§ = false;
      }
      
      public static function §%U§(param1:Context3D, param2:Bitmap, param3:Boolean = true, param4:Boolean = false, param5:Number = 1) : §9$;§.Texture
      {
         return §1!b§(param1,param2.bitmapData,param3,param4,param5);
      }
      
      public static function §1!b§(param1:Context3D, param2:BitmapData, param3:Boolean = true, param4:Boolean = false, param5:Number = 1) : §9$;§.Texture
      {
         var _loc10_:BitmapData = null;
         var _loc11_:§'!!§ = null;
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
               (_loc10_ = new BitmapData(_loc8_,_loc9_,true,0)).copyPixels(param2,param2.rect,§"@§);
               param2 = _loc10_;
            }
            uploadBitmapData(_loc12_,param2,param3);
         }
         _loc11_ = new §'!!§(_loc12_,Context3DTextureFormat.BGRA,_loc8_,_loc9_,param3,true,param4,param5);
         if(Starling.§7#'§)
         {
            _loc11_.§]#-§(param2);
         }
         else if(_loc10_)
         {
            _loc10_.dispose();
         }
         if(_loc6_ == _loc8_ && _loc7_ == _loc9_)
         {
            return _loc11_;
         }
         return new §5"i§(_loc11_,new Rectangle(0,0,_loc6_ / param5,_loc7_ / param5),true);
      }
      
      public static function §?"y§(param1:Context3D, param2:ByteArray, param3:Number = 1, param4:Boolean = true, param5:Function = null) : §9$;§.Texture
      {
         var eventType:String = null;
         var nativeTexture:flash.display3D.textures.Texture = null;
         var concreteTexture:§'!!§ = null;
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
            throw new §;$%§();
         }
         var async:Boolean = loadAsync != null;
         var atfData:§<"m§ = new §<"m§(data);
         nativeTexture = context.createTexture(atfData.width,atfData.height,atfData.format,false);
         uploadAtfData(nativeTexture,data,0,async);
         concreteTexture = new §'!!§(nativeTexture,atfData.format,atfData.width,atfData.height,useMipMaps && atfData.§]!I§ > 1,false,false,scale);
         if(Starling.§7#'§)
         {
            concreteTexture.§]#-§(atfData);
         }
         if(async)
         {
            nativeTexture.addEventListener(eventType,onTextureReady);
         }
         return concreteTexture;
      }
      
      public static function §]!A§(param1:Context3D, param2:int, param3:int, param4:uint = 4.294967295E9, param5:Boolean = false, param6:Number = -1) : §9$;§.Texture
      {
         if(param6 <= 0)
         {
            param6 = Starling.§8#i§;
         }
         var _loc7_:BitmapData = new BitmapData(param2 * param6,param3 * param6,true,param4);
         var _loc8_:§9$;§.Texture = §1!b§(param1,_loc7_,false,param5,param6);
         if(!Starling.§7#'§)
         {
            _loc7_.dispose();
         }
         return _loc8_;
      }
      
      public static function §""t§(param1:Context3D, param2:int = 64, param3:int = 64, param4:Boolean = false, param5:Boolean = true, param6:Number = -1) : §9$;§.Texture
      {
         if(param6 <= 0)
         {
            param6 = Starling.§8#i§;
         }
         var _loc7_:int = param2 * param6;
         var _loc8_:int = param3 * param6;
         var _loc9_:int = getNextPowerOfTwo(_loc7_);
         var _loc10_:int = getNextPowerOfTwo(_loc8_);
         var _loc11_:String = Context3DTextureFormat.BGRA;
         if(param1 == null)
         {
            throw new §;$%§();
         }
         var _loc12_:flash.display3D.textures.Texture = param1.createTexture(_loc9_,_loc10_,Context3DTextureFormat.BGRA,param5);
         var _loc13_:§'!!§ = new §'!!§(_loc12_,_loc11_,_loc9_,_loc10_,false,param4,param5,param6);
         if(_loc7_ == _loc9_ && _loc8_ == _loc10_)
         {
            return _loc13_;
         }
         return new §5"i§(_loc13_,new Rectangle(0,0,param2,param3),true);
      }
      
      public static function §8"j§(param1:§9$;§.Texture, param2:Rectangle = null, param3:Rectangle = null) : §9$;§.Texture
      {
         var _loc4_:§9$;§.Texture;
         (_loc4_ = new §5"i§(param1,param2)).§'$>§ = param3;
         return _loc4_;
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
         if(param3 && param2.width > 1 && param2.height > 1)
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
      
      static function uploadAtfData(param1:flash.display3D.textures.Texture, param2:ByteArray, param3:int = 0, param4:Boolean = false) : void
      {
         param1.uploadCompressedTextureFromByteArray(param2,param3,param4);
      }
      
      public function dispose() : void
      {
      }
      
      public function adjustVertexData(param1:§`e§, param2:int, param3:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(this.§'$>§)
         {
            if(param3 != 4)
            {
               throw new ArgumentError("Textures with a frame can only be used on quads");
            }
            _loc4_ = this.§'$>§.width + this.§'$>§.x - this.width;
            _loc5_ = this.§'$>§.height + this.§'$>§.y - this.height;
            param1.§&"X§(param2,-this.§'$>§.x,-this.§'$>§.y);
            param1.§&"X§(param2 + 1,-_loc4_,-this.§'$>§.y);
            param1.§&"X§(param2 + 2,-this.§'$>§.x,-_loc5_);
            param1.§&"X§(param2 + 3,-_loc4_,-_loc5_);
         }
      }
      
      public function get frame() : Rectangle
      {
         return !!this.§'$>§ ? this.§'$>§.clone() : new Rectangle(0,0,this.width,this.height);
      }
      
      public function get clipping() : Rectangle
      {
         return new Rectangle(0,0,this.width,this.height);
      }
      
      public function get repeat() : Boolean
      {
         return this.§,!-§;
      }
      
      public function set repeat(param1:Boolean) : void
      {
         this.§,!-§ = param1;
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
      
      public function get root() : §'!!§
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
      
      public function get parent() : §9$;§.Texture
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
