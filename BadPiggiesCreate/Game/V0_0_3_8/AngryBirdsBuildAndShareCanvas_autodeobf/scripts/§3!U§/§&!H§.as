package §3!U§
{
   import §0!F§.§^d§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §&!H§ extends §3!U§.Texture
   {
       
      
      private var §4_§:TextureBase;
      
      private var §=_§:int;
      
      private var §!,§:int;
      
      private var §?r§:Boolean;
      
      private var §-!;§:Boolean;
      
      private var §=c§:Boolean;
      
      private var §!o§:Object;
      
      private var §'@§:Boolean = false;
      
      public function §&!H§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§4_§ = param1;
         this.§=_§ = param2;
         this.§!,§ = param3;
         this.§?r§ = param4;
         this.§-!;§ = param5;
         this.§=c§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§4_§)
         {
            this.§4_§.dispose();
         }
         this.§&;§(null);
         super.dispose();
      }
      
      public function §&;§(param1:Object) : void
      {
         if(this.§!o§ == null && param1 != null)
         {
            §^d§.§+!f§.addEventListener(Event.CONTEXT3D_CREATE,this.§6I§);
         }
         if(param1 == null)
         {
            §^d§.§+!f§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6I§);
         }
         this.§!o§ = param1;
      }
      
      private function §6I§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§'@§ = true;
         if(param1 != null)
         {
            this.§&;§(param1);
         }
      }
      
      public function get §>!Y§() : Boolean
      {
         return this.§=c§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§;s§(param1);
         return this.§4_§;
      }
      
      override public function get root() : §3!U§.Texture
      {
         return this;
      }
      
      private function §;s§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§'@§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§!o§ as BitmapData;
         var _loc3_:ByteArray = this.§!o§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§=_§,this.§!,§,Context3DTextureFormat.BGRA,this.§=c§);
            §3!U§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§?r§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§=_§,this.§!,§,_loc5_,this.§=c§);
            §3!U§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§4_§ = _loc4_;
         this.§'@§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§=_§;
      }
      
      override public function get height() : Number
      {
         return this.§!,§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?r§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§-!;§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§!o§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
