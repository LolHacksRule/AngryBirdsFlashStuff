package §^Q§
{
   import §3",§.§0"<§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §7G§ extends §^Q§.Texture
   {
       
      
      private var §3!A§:TextureBase;
      
      private var §%w§:int;
      
      private var §-N§:int;
      
      private var §%[§:Boolean;
      
      private var §6!c§:Boolean;
      
      private var §[!^§:Boolean;
      
      private var § A§:Object;
      
      private var §1f§:Boolean = false;
      
      public function §7G§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§3!A§ = param1;
         this.§%w§ = param2;
         this.§-N§ = param3;
         this.§%[§ = param4;
         this.§6!c§ = param5;
         this.§[!^§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§3!A§)
         {
            this.§3!A§.dispose();
         }
         this.§8P§(null);
         super.dispose();
      }
      
      public function §8P§(param1:Object) : void
      {
         if(this.§ A§ == null && param1 != null)
         {
            §0"<§.§<?§.addEventListener(Event.CONTEXT3D_CREATE,this.§9!g§);
         }
         if(param1 == null)
         {
            §0"<§.§<?§.removeEventListener(Event.CONTEXT3D_CREATE,this.§9!g§);
         }
         this.§ A§ = param1;
      }
      
      private function §9!g§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§1f§ = true;
         if(param1 != null)
         {
            this.§8P§(param1);
         }
      }
      
      public function get §]e§() : Boolean
      {
         return this.§[!^§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§1!4§(param1);
         return this.§3!A§;
      }
      
      override public function get root() : §^Q§.Texture
      {
         return this;
      }
      
      private function §1!4§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§1f§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§ A§ as BitmapData;
         var _loc3_:ByteArray = this.§ A§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§%w§,this.§-N§,Context3DTextureFormat.BGRA,this.§[!^§);
            §^Q§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§%[§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§%w§,this.§-N§,_loc5_,this.§[!^§);
            §^Q§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§3!A§ = _loc4_;
         this.§1f§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§%w§;
      }
      
      override public function get height() : Number
      {
         return this.§-N§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%[§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6!c§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§ A§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
