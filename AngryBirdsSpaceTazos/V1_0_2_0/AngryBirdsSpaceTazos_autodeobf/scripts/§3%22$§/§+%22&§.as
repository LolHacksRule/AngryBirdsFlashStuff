package §3"$§
{
   import §3!4§.§ ![§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+"&§ extends §3"$§.Texture
   {
       
      
      private var §<"-§:TextureBase;
      
      private var §^M§:int;
      
      private var §2!u§:int;
      
      private var §#x§:Boolean;
      
      private var §-`§:Boolean;
      
      private var § !N§:Boolean;
      
      private var §`!F§:Object;
      
      private var §6!h§:Boolean = false;
      
      public function §+"&§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§<"-§ = param1;
         this.§^M§ = param2;
         this.§2!u§ = param3;
         this.§#x§ = param4;
         this.§-`§ = param5;
         this.§ !N§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§<"-§)
         {
            this.§<"-§.dispose();
         }
         this.§!!E§(null);
         super.dispose();
      }
      
      public function §!!E§(param1:Object) : void
      {
         if(this.§`!F§ == null && param1 != null)
         {
            § ![§.§!G§.addEventListener(Event.CONTEXT3D_CREATE,this.§+!0§);
         }
         if(param1 == null)
         {
            § ![§.§!G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§+!0§);
         }
         this.§`!F§ = param1;
      }
      
      private function §+!0§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6!h§ = true;
         if(param1 != null)
         {
            this.§!!E§(param1);
         }
      }
      
      public function get §'"=§() : Boolean
      {
         return this.§ !N§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§";§(param1);
         return this.§<"-§;
      }
      
      override public function get root() : §3"$§.Texture
      {
         return this;
      }
      
      private function §";§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§6!h§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§`!F§ as BitmapData;
         var _loc3_:ByteArray = this.§`!F§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§^M§,this.§2!u§,Context3DTextureFormat.BGRA,this.§ !N§);
            §3"$§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§#x§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§^M§,this.§2!u§,_loc5_,this.§ !N§);
            §3"$§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§<"-§ = _loc4_;
         this.§6!h§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§^M§;
      }
      
      override public function get height() : Number
      {
         return this.§2!u§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§#x§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§-`§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!F§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
