package §&Y§
{
   import § %§.§`M§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §0j§ extends §&Y§.Texture
   {
       
      
      private var §"!5§:TextureBase;
      
      private var §+![§:int;
      
      private var §]d§:int;
      
      private var §&G§:Boolean;
      
      private var §6H§:Boolean;
      
      private var §2!7§:Boolean;
      
      private var §2!U§:Object;
      
      private var §>j§:Boolean = false;
      
      public function §0j§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§"!5§ = param1;
         this.§+![§ = param2;
         this.§]d§ = param3;
         this.§&G§ = param4;
         this.§6H§ = param5;
         this.§2!7§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§"!5§)
         {
            this.§"!5§.dispose();
         }
         this.§7!1§(null);
         super.dispose();
      }
      
      public function §7!1§(param1:Object) : void
      {
         if(this.§2!U§ == null && param1 != null)
         {
            §`M§.§93§.addEventListener(Event.CONTEXT3D_CREATE,this.§[b§);
         }
         if(param1 == null)
         {
            §`M§.§93§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[b§);
         }
         this.§2!U§ = param1;
      }
      
      private function §[b§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§>j§ = true;
         if(param1 != null)
         {
            this.§7!1§(param1);
         }
      }
      
      public function get §9! §() : Boolean
      {
         return this.§2!7§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§'y§(param1);
         return this.§"!5§;
      }
      
      override public function get root() : §&Y§.Texture
      {
         return this;
      }
      
      private function §'y§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§>j§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§2!U§ as BitmapData;
         var _loc3_:ByteArray = this.§2!U§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§+![§,this.§]d§,Context3DTextureFormat.BGRA,this.§2!7§);
            §&Y§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§&G§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§+![§,this.§]d§,_loc5_,this.§2!7§);
            §&Y§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§"!5§ = _loc4_;
         this.§>j§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§+![§;
      }
      
      override public function get height() : Number
      {
         return this.§]d§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&G§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6H§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§2!U§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
