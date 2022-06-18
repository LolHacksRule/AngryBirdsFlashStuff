package §,Y§
{
   import §2!P§.§6=§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §5S§ extends §,Y§.Texture
   {
       
      
      private var §%!C§:TextureBase;
      
      private var §,!E§:int;
      
      private var §''§:int;
      
      private var §3!%§:Boolean;
      
      private var §+M§:Boolean;
      
      private var §!c§:Boolean;
      
      private var §1'§:Object;
      
      private var §3q§:Boolean = false;
      
      public function §5S§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§%!C§ = param1;
         this.§,!E§ = param2;
         this.§''§ = param3;
         this.§3!%§ = param4;
         this.§+M§ = param5;
         this.§!c§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§%!C§)
         {
            this.§%!C§.dispose();
         }
         this.§#G§(null);
         super.dispose();
      }
      
      public function §#G§(param1:Object) : void
      {
         if(this.§1'§ == null && param1 != null)
         {
            §6=§.§4!8§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!A§);
         }
         if(param1 == null)
         {
            §6=§.§4!8§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!A§);
         }
         this.§1'§ = param1;
      }
      
      private function §#!A§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§3q§ = true;
         if(param1 != null)
         {
            this.§#G§(param1);
         }
      }
      
      public function get §;§() : Boolean
      {
         return this.§!c§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§11§(param1);
         return this.§%!C§;
      }
      
      override public function get root() : §,Y§.Texture
      {
         return this;
      }
      
      private function §11§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§3q§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§1'§ as BitmapData;
         var _loc3_:ByteArray = this.§1'§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§,!E§,this.§''§,Context3DTextureFormat.BGRA,this.§!c§);
            §,Y§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§3!%§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§,!E§,this.§''§,_loc5_,this.§!c§);
            §,Y§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§%!C§ = _loc4_;
         this.§3q§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§,!E§;
      }
      
      override public function get height() : Number
      {
         return this.§''§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3!%§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+M§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§1'§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
