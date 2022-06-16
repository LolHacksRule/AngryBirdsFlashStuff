package §0!R§
{
   import §'6§.§"]§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+W§ extends §0!R§.Texture
   {
       
      
      private var §-"=§:TextureBase;
      
      private var §`w§:int;
      
      private var §%m§:int;
      
      private var §<!o§:Boolean;
      
      private var §;!n§:Boolean;
      
      private var §&!]§:Boolean;
      
      private var §>">§:Object;
      
      private var §%,§:Boolean = false;
      
      public function §+W§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§-"=§ = param1;
         this.§`w§ = param2;
         this.§%m§ = param3;
         this.§<!o§ = param4;
         this.§;!n§ = param5;
         this.§&!]§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§-"=§)
         {
            this.§-"=§.dispose();
         }
         this.§0!c§(null);
         super.dispose();
      }
      
      public function §0!c§(param1:Object) : void
      {
         if(this.§>">§ == null && param1 != null)
         {
            §"]§.§!X§.addEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
         }
         if(param1 == null)
         {
            §"]§.§!X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
         }
         this.§>">§ = param1;
      }
      
      private function §-""§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§%,§ = true;
         if(param1 != null)
         {
            this.§0!c§(param1);
         }
      }
      
      public function get §0<§() : Boolean
      {
         return this.§&!]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§3!r§(param1);
         return this.§-"=§;
      }
      
      override public function get root() : §0!R§.Texture
      {
         return this;
      }
      
      private function §3!r§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§%,§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§>">§ as BitmapData;
         var _loc3_:ByteArray = this.§>">§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§`w§,this.§%m§,Context3DTextureFormat.BGRA,this.§&!]§);
            §0!R§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<!o§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§`w§,this.§%m§,_loc5_,this.§&!]§);
            §0!R§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§-"=§ = _loc4_;
         this.§%,§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§`w§;
      }
      
      override public function get height() : Number
      {
         return this.§%m§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<!o§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;!n§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>">§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
