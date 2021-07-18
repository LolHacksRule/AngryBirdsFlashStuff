package §<5§
{
   import §"a§.§!"J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §1!1§ extends §<5§.Texture
   {
       
      
      private var §9"!§:TextureBase;
      
      private var §,>§:int;
      
      private var §`;§:int;
      
      private var §9-§:Boolean;
      
      private var §8$§:Boolean;
      
      private var §?"T§:Boolean;
      
      private var §+]§:Object;
      
      private var §-!m§:Boolean = false;
      
      public function §1!1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§9"!§ = param1;
         this.§,>§ = param2;
         this.§`;§ = param3;
         this.§9-§ = param4;
         this.§8$§ = param5;
         this.§?"T§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§9"!§)
         {
            this.§9"!§.dispose();
         }
         this.§%!,§(null);
         super.dispose();
      }
      
      public function §%!,§(param1:Object) : void
      {
         if(this.§+]§ == null && param1 != null)
         {
            §!"J§.§1&§.addEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
         }
         if(param1 == null)
         {
            §!"J§.§1&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
         }
         this.§+]§ = param1;
      }
      
      private function §?3§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§-!m§ = true;
         if(param1 != null)
         {
            this.§%!,§(param1);
         }
      }
      
      public function get §'7§() : Boolean
      {
         return this.§?"T§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§&!+§(param1);
         return this.§9"!§;
      }
      
      override public function get root() : §<5§.Texture
      {
         return this;
      }
      
      private function §&!+§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§-!m§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§+]§ as BitmapData;
         var _loc3_:ByteArray = this.§+]§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§,>§,this.§`;§,Context3DTextureFormat.BGRA,this.§?"T§);
            §<5§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§9-§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§,>§,this.§`;§,_loc5_,this.§?"T§);
            §<5§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§9"!§ = _loc4_;
         this.§-!m§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§,>§;
      }
      
      override public function get height() : Number
      {
         return this.§`;§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9-§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8$§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+]§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
