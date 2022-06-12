package §4!S§
{
   import §5!5§.§^e§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §%j§ extends §4!S§.Texture
   {
       
      
      private var §%^§:TextureBase;
      
      private var §4!z§:int;
      
      private var §@R§:int;
      
      private var §;9§:Boolean;
      
      private var §@!!§:Boolean;
      
      private var §!9§:Boolean;
      
      private var §-!+§:Object;
      
      private var §+!%§:Boolean = false;
      
      public function §%j§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§%^§ = param1;
         this.§4!z§ = param2;
         this.§@R§ = param3;
         this.§;9§ = param4;
         this.§@!!§ = param5;
         this.§!9§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§%^§)
         {
            this.§%^§.dispose();
         }
         this.§-w§(null);
         super.dispose();
      }
      
      public function §-w§(param1:Object) : void
      {
         if(this.§-!+§ == null && param1 != null)
         {
            §^e§.§-_§.addEventListener(Event.CONTEXT3D_CREATE,this.§&l§);
         }
         if(param1 == null)
         {
            §^e§.§-_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&l§);
         }
         this.§-!+§ = param1;
      }
      
      private function §&l§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+!%§ = true;
         if(param1 != null)
         {
            this.§-w§(param1);
         }
      }
      
      public function get §;!x§() : Boolean
      {
         return this.§!9§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§"!0§(param1);
         return this.§%^§;
      }
      
      override public function get root() : §4!S§.Texture
      {
         return this;
      }
      
      private function §"!0§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§+!%§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§-!+§ as BitmapData;
         var _loc3_:ByteArray = this.§-!+§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§4!z§,this.§@R§,Context3DTextureFormat.BGRA,this.§!9§);
            §4!S§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§;9§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§4!z§,this.§@R§,_loc5_,this.§!9§);
            §4!S§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§%^§ = _loc4_;
         this.§+!%§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§4!z§;
      }
      
      override public function get height() : Number
      {
         return this.§@R§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;9§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@!!§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§-!+§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
