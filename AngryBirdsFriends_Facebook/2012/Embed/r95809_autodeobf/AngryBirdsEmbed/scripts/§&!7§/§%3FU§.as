package §&!7§
{
   import §&I§.§3! §;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §?U§ extends §&!7§.Texture
   {
       
      
      private var §^m§:TextureBase;
      
      private var § !;§:int;
      
      private var §[&§:int;
      
      private var §%§:Boolean;
      
      private var §'i§:Boolean;
      
      private var §1I§:Boolean;
      
      private var §@h§:Object;
      
      private var §4m§:Boolean = false;
      
      public function §?U§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§^m§ = param1;
         this.§ !;§ = param2;
         this.§[&§ = param3;
         this.§%§ = param4;
         this.§'i§ = param5;
         this.§1I§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§^m§)
         {
            this.§^m§.dispose();
         }
         this.§0s§(null);
         super.dispose();
      }
      
      public function §0s§(param1:Object) : void
      {
         if(this.§@h§ == null && param1 != null)
         {
            §3! §.§"n§.addEventListener(Event.CONTEXT3D_CREATE,this.§<N§);
         }
         if(param1 == null)
         {
            §3! §.§"n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§<N§);
         }
         this.§@h§ = param1;
      }
      
      private function §<N§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§4m§ = true;
         if(param1 != null)
         {
            this.§0s§(param1);
         }
      }
      
      public function get §^!8§() : Boolean
      {
         return this.§1I§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§-!<§(param1);
         return this.§^m§;
      }
      
      override public function get root() : §&!7§.Texture
      {
         return this;
      }
      
      private function §-!<§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§4m§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@h§ as BitmapData;
         var _loc3_:ByteArray = this.§@h§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§ !;§,this.§[&§,Context3DTextureFormat.BGRA,this.§1I§);
            §&!7§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§%§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§ !;§,this.§[&§,_loc5_,this.§1I§);
            §&!7§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§^m§ = _loc4_;
         this.§4m§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§ !;§;
      }
      
      override public function get height() : Number
      {
         return this.§[&§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'i§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@h§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
