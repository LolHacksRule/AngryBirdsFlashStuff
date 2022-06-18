package §1#§
{
   import §7!§.§,L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §^y§ extends §1#§.Texture
   {
       
      
      private var §?m§:TextureBase;
      
      private var §'o§:int;
      
      private var §+L§:int;
      
      private var §?k§:Boolean;
      
      private var §%!2§:Boolean;
      
      private var §>!K§:Boolean;
      
      private var §81§:Object;
      
      private var §9!C§:Boolean = false;
      
      public function §^y§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?m§ = param1;
         this.§'o§ = param2;
         this.§+L§ = param3;
         this.§?k§ = param4;
         this.§%!2§ = param5;
         this.§>!K§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?m§)
         {
            this.§?m§.dispose();
         }
         this.§#^§(null);
         super.dispose();
      }
      
      public function §#^§(param1:Object) : void
      {
         if(this.§81§ == null && param1 != null)
         {
            §,L§.§3v§.addEventListener(Event.CONTEXT3D_CREATE,this.§6l§);
         }
         if(param1 == null)
         {
            §,L§.§3v§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6l§);
         }
         this.§81§ = param1;
      }
      
      private function §6l§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9!C§ = true;
         if(param1 != null)
         {
            this.§#^§(param1);
         }
      }
      
      public function get §>!-§() : Boolean
      {
         return this.§>!K§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6y§(param1);
         return this.§?m§;
      }
      
      override public function get root() : §1#§.Texture
      {
         return this;
      }
      
      private function §6y§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§9!C§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§81§ as BitmapData;
         var _loc3_:ByteArray = this.§81§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§'o§,this.§+L§,Context3DTextureFormat.BGRA,this.§>!K§);
            §1#§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§?k§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§'o§,this.§+L§,_loc5_,this.§>!K§);
            §1#§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?m§ = _loc4_;
         this.§9!C§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§'o§;
      }
      
      override public function get height() : Number
      {
         return this.§+L§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?k§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§%!2§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§81§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
