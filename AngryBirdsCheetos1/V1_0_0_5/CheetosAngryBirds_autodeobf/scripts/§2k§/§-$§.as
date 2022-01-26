package §2k§
{
   import §7W§.§ !+§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §-$§ extends §2k§.Texture
   {
       
      
      private var §0!1§:TextureBase;
      
      private var §6!>§:int;
      
      private var §?l§:int;
      
      private var §^'§:Boolean;
      
      private var §<!8§:Boolean;
      
      private var §8l§:Boolean;
      
      private var §&!7§:Object;
      
      private var §`z§:Boolean = false;
      
      public function §-$§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§0!1§ = param1;
         this.§6!>§ = param2;
         this.§?l§ = param3;
         this.§^'§ = param4;
         this.§<!8§ = param5;
         this.§8l§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§0!1§)
         {
            this.§0!1§.dispose();
         }
         this.§4X§(null);
         super.dispose();
      }
      
      public function §4X§(param1:Object) : void
      {
         if(this.§&!7§ == null && param1 != null)
         {
            § !+§.§ Z§.addEventListener(Event.CONTEXT3D_CREATE,this.§>D§);
         }
         if(param1 == null)
         {
            § !+§.§ Z§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>D§);
         }
         this.§&!7§ = param1;
      }
      
      private function §>D§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§`z§ = true;
         if(param1 != null)
         {
            this.§4X§(param1);
         }
      }
      
      public function get §=$§() : Boolean
      {
         return this.§8l§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§&y§(param1);
         return this.§0!1§;
      }
      
      override public function get root() : §2k§.Texture
      {
         return this;
      }
      
      private function §&y§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§`z§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&!7§ as BitmapData;
         var _loc3_:ByteArray = this.§&!7§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§6!>§,this.§?l§,Context3DTextureFormat.BGRA,this.§8l§);
            §2k§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§^'§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§6!>§,this.§?l§,_loc5_,this.§8l§);
            §2k§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§0!1§ = _loc4_;
         this.§`z§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§6!>§;
      }
      
      override public function get height() : Number
      {
         return this.§?l§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!7§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
