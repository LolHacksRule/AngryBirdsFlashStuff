package §""'§
{
   import §!#`§.Event;
   import §]"P§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §4$1§ extends §""'§.Texture
   {
       
      
      private var §&"L§:TextureBase;
      
      private var §]"!§:String;
      
      private var §@#Z§:int;
      
      private var §+#j§:int;
      
      private var §1v§:Boolean;
      
      private var §-$&§:Boolean;
      
      private var §1e§:Boolean;
      
      private var §"""§:Object;
      
      private var §6z§:Number;
      
      public function §4$1§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§6z§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§&"L§ = param1;
         this.§]"!§ = param2;
         this.§@#Z§ = param3;
         this.§+#j§ = param4;
         this.§1v§ = param5;
         this.§-$&§ = param6;
         this.§1e§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§&"L§)
         {
            this.§&"L§.dispose();
         }
         this.§,I§(null);
         super.dispose();
      }
      
      public function §,I§(param1:Object) : void
      {
         if(this.§"""§ == null && param1 != null)
         {
            Starling.§3!I§.addEventListener(Event.CONTEXT3D_CREATE,this.§-s§);
         }
         else if(param1 == null)
         {
            Starling.§3!I§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-s§);
         }
         this.§"""§ = param1;
      }
      
      private function §-s§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§"""§ as BitmapData;
         var _loc4_:§?]§ = this.§"""§ as §?]§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§@#Z§,this.§+#j§,Context3DTextureFormat.BGRA,this.§1e§);
            §""'§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§1v§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§1e§);
            §""'§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§&"L§ = _loc5_;
      }
      
      public function get §6L§() : Boolean
      {
         return this.§1e§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&"L§;
      }
      
      override public function get root() : §4$1§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§]"!§;
      }
      
      override public function get width() : Number
      {
         return this.§@#Z§ / this.§6z§;
      }
      
      override public function get height() : Number
      {
         return this.§+#j§ / this.§6z§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§@#Z§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§+#j§;
      }
      
      override public function get scale() : Number
      {
         return this.§6z§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§1v§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§-$&§;
      }
   }
}
