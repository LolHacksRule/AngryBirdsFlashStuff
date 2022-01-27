package § 0§
{
   import §1y§.§&!B§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §^!A§ extends § 0§.Texture
   {
       
      
      private var §>!#§:TextureBase;
      
      private var §>5§:int;
      
      private var §`!I§:int;
      
      private var § !R§:Boolean;
      
      private var §;g§:Boolean;
      
      private var §1r§:Boolean;
      
      private var §]!B§:Object;
      
      private var §+u§:Boolean = false;
      
      public function §^!A§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§>!#§ = param1;
         this.§>5§ = param2;
         this.§`!I§ = param3;
         this.§ !R§ = param4;
         this.§;g§ = param5;
         this.§1r§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§>!#§)
         {
            this.§>!#§.dispose();
         }
         this.§!%§(null);
         super.dispose();
      }
      
      public function §!%§(param1:Object) : void
      {
         if(this.§]!B§ == null && param1 != null)
         {
            §&!B§.§^8§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!1§);
         }
         if(param1 == null)
         {
            §&!B§.§^8§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!1§);
         }
         this.§]!B§ = param1;
      }
      
      private function §#!1§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+u§ = true;
         if(param1 != null)
         {
            this.§!%§(param1);
         }
      }
      
      public function get §8!>§() : Boolean
      {
         return this.§1r§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§%!V§(param1);
         return this.§>!#§;
      }
      
      override public function get root() : § 0§.Texture
      {
         return this;
      }
      
      private function §%!V§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§+u§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§]!B§ as BitmapData;
         var _loc3_:ByteArray = this.§]!B§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§>5§,this.§`!I§,Context3DTextureFormat.BGRA,this.§1r§);
            § 0§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§ !R§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§>5§,this.§`!I§,_loc5_,this.§1r§);
            § 0§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§>!#§ = _loc4_;
         this.§+u§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§>5§;
      }
      
      override public function get height() : Number
      {
         return this.§`!I§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§ !R§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;g§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]!B§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
