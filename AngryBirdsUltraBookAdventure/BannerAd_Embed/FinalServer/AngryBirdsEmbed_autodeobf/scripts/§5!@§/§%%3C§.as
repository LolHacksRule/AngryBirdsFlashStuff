package §5!@§
{
   import §#!;§.§;T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §%<§ extends §5!@§.Texture
   {
       
      
      private var §^!,§:TextureBase;
      
      private var § l§:int;
      
      private var §4N§:int;
      
      private var §##§:Boolean;
      
      private var §+!8§:Boolean;
      
      private var §6! §:Boolean;
      
      private var §2N§:Object;
      
      private var §+C§:Boolean = false;
      
      public function §%<§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§^!,§ = param1;
         this.§ l§ = param2;
         this.§4N§ = param3;
         this.§##§ = param4;
         this.§+!8§ = param5;
         this.§6! § = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§^!,§)
         {
            this.§^!,§.dispose();
         }
         this.§"a§(null);
         super.dispose();
      }
      
      public function §"a§(param1:Object) : void
      {
         if(this.§2N§ == null && param1 != null)
         {
            §;T§.§,H§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
         }
         if(param1 == null)
         {
            §;T§.§,H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
         }
         this.§2N§ = param1;
      }
      
      private function §'!0§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+C§ = true;
         if(param1 != null)
         {
            this.§"a§(param1);
         }
      }
      
      public function get §"K§() : Boolean
      {
         return this.§6! §;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§;^§(param1);
         return this.§^!,§;
      }
      
      override public function get root() : §5!@§.Texture
      {
         return this;
      }
      
      private function §;^§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§+C§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§2N§ as BitmapData;
         var _loc3_:ByteArray = this.§2N§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§ l§,this.§4N§,Context3DTextureFormat.BGRA,this.§6! §);
            §5!@§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§##§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§ l§,this.§4N§,_loc5_,this.§6! §);
            §5!@§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§^!,§ = _loc4_;
         this.§+C§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§ l§;
      }
      
      override public function get height() : Number
      {
         return this.§4N§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§##§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§2N§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
