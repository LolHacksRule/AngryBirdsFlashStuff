package §switch§
{
   import §"4§.§<h§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §-8§ extends §switch§.Texture
   {
       
      
      private var §>!_§:TextureBase;
      
      private var §'n§:int;
      
      private var §+!#§:int;
      
      private var §+!-§:Boolean;
      
      private var §<$§:Boolean;
      
      private var §%p§:Boolean;
      
      private var §^d§:Object;
      
      private var §=^§:Boolean = false;
      
      public function §-8§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§>!_§ = param1;
         this.§'n§ = param2;
         this.§+!#§ = param3;
         this.§+!-§ = param4;
         this.§<$§ = param5;
         this.§%p§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§>!_§)
         {
            this.§>!_§.dispose();
         }
         this.§<!_§(null);
         super.dispose();
      }
      
      public function §<!_§(param1:Object) : void
      {
         if(this.§^d§ == null && param1 != null)
         {
            §<h§.§%!]§.addEventListener(Event.CONTEXT3D_CREATE,this.§=k§);
         }
         if(param1 == null)
         {
            §<h§.§%!]§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=k§);
         }
         this.§^d§ = param1;
      }
      
      private function §=k§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§=^§ = true;
         if(param1 != null)
         {
            this.§<!_§(param1);
         }
      }
      
      public function get §!Q§() : Boolean
      {
         return this.§%p§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§,'§(param1);
         return this.§>!_§;
      }
      
      override public function get root() : §switch§.Texture
      {
         return this;
      }
      
      private function §,'§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§=^§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§^d§ as BitmapData;
         var _loc3_:ByteArray = this.§^d§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§'n§,this.§+!#§,Context3DTextureFormat.BGRA,this.§%p§);
            §switch§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+!-§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§'n§,this.§+!#§,_loc5_,this.§%p§);
            §switch§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§>!_§ = _loc4_;
         this.§=^§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§'n§;
      }
      
      override public function get height() : Number
      {
         return this.§+!#§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!-§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<$§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^d§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
