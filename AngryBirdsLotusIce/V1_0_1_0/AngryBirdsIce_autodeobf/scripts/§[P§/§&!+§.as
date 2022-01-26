package §[P§
{
   import §-Z§.§?h§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §&!+§ extends §[P§.Texture
   {
       
      
      private var §2R§:TextureBase;
      
      private var §?!#§:int;
      
      private var §26§:int;
      
      private var §%!6§:Boolean;
      
      private var §3Y§:Boolean;
      
      private var §?!'§:Boolean;
      
      private var §@$§:Object;
      
      private var §;,§:Boolean = false;
      
      public function §&!+§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§2R§ = param1;
         this.§?!#§ = param2;
         this.§26§ = param3;
         this.§%!6§ = param4;
         this.§3Y§ = param5;
         this.§?!'§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§2R§)
         {
            this.§2R§.dispose();
         }
         this.§<+§(null);
         super.dispose();
      }
      
      public function §<+§(param1:Object) : void
      {
         if(this.§@$§ == null && param1 != null)
         {
            §?h§.§ n§.addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
         }
         if(param1 == null)
         {
            §?h§.§ n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
         }
         this.§@$§ = param1;
      }
      
      private function § ,§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§;,§ = true;
         if(param1 != null)
         {
            this.§<+§(param1);
         }
      }
      
      public function get §[Z§() : Boolean
      {
         return this.§?!'§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§4A§(param1);
         return this.§2R§;
      }
      
      override public function get root() : §[P§.Texture
      {
         return this;
      }
      
      private function §4A§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§;,§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@$§ as BitmapData;
         var _loc3_:ByteArray = this.§@$§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§?!#§,this.§26§,Context3DTextureFormat.BGRA,this.§?!'§);
            §[P§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§%!6§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§?!#§,this.§26§,_loc5_,this.§?!'§);
            §[P§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§2R§ = _loc4_;
         this.§;,§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§?!#§;
      }
      
      override public function get height() : Number
      {
         return this.§26§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%!6§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3Y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@$§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
