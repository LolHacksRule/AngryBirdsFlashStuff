package §<"L§
{
   import §9!!§.§=!S§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §<"m§ extends §<"L§.Texture
   {
       
      
      private var §6s§:TextureBase;
      
      private var §^"t§:int;
      
      private var §`!y§:int;
      
      private var §;"p§:Boolean;
      
      private var §2!N§:Boolean;
      
      private var §2"X§:Boolean;
      
      private var §,6§:Object;
      
      private var §&>§:Boolean = false;
      
      public function §<"m§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§6s§ = param1;
         this.§^"t§ = param2;
         this.§`!y§ = param3;
         this.§;"p§ = param4;
         this.§2!N§ = param5;
         this.§2"X§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§6s§)
         {
            this.§6s§.dispose();
         }
         this.§"!C§(null);
         super.dispose();
      }
      
      public function §"!C§(param1:Object) : void
      {
         if(this.§,6§ == null && param1 != null)
         {
            §=!S§.§8y§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!'§);
         }
         if(param1 == null)
         {
            §=!S§.§8y§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!'§);
         }
         this.§,6§ = param1;
      }
      
      private function §#!'§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&>§ = true;
         if(param1 != null)
         {
            this.§"!C§(param1);
         }
      }
      
      public function get §=!5§() : Boolean
      {
         return this.§2"X§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§;j§(param1);
         return this.§6s§;
      }
      
      override public function get root() : §<"L§.Texture
      {
         return this;
      }
      
      private function §;j§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§&>§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§,6§ as BitmapData;
         var _loc3_:ByteArray = this.§,6§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§^"t§,this.§`!y§,Context3DTextureFormat.BGRA,this.§2"X§);
            §<"L§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§;"p§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§^"t§,this.§`!y§,_loc5_,this.§2"X§);
            §<"L§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§6s§ = _loc4_;
         this.§&>§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§^"t§;
      }
      
      override public function get height() : Number
      {
         return this.§`!y§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;"p§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2!N§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,6§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
