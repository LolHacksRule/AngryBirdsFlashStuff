package §@M§
{
   import §^h§.§2l§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §`!0§ extends §@M§.Texture
   {
       
      
      private var §#!&§:TextureBase;
      
      private var §0!4§:int;
      
      private var §0!$§:int;
      
      private var §2d§:Boolean;
      
      private var §77§:Boolean;
      
      private var §^q§:Boolean;
      
      private var §2a§:Object;
      
      private var §9?§:Boolean = false;
      
      public function §`!0§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§#!&§ = param1;
         this.§0!4§ = param2;
         this.§0!$§ = param3;
         this.§2d§ = param4;
         this.§77§ = param5;
         this.§^q§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§#!&§)
         {
            this.§#!&§.dispose();
         }
         this.§@!$§(null);
         super.dispose();
      }
      
      public function §@!$§(param1:Object) : void
      {
         if(this.§2a§ == null && param1 != null)
         {
            §2l§.§7K§.addEventListener(Event.CONTEXT3D_CREATE,this.§-z§);
         }
         if(param1 == null)
         {
            §2l§.§7K§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-z§);
         }
         this.§2a§ = param1;
      }
      
      private function §-z§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9?§ = true;
         if(param1 != null)
         {
            this.§@!$§(param1);
         }
      }
      
      public function get §6A§() : Boolean
      {
         return this.§^q§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§4!K§(param1);
         return this.§#!&§;
      }
      
      override public function get root() : §@M§.Texture
      {
         return this;
      }
      
      private function §4!K§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§9?§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§2a§ as BitmapData;
         var _loc3_:ByteArray = this.§2a§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§0!4§,this.§0!$§,Context3DTextureFormat.BGRA,this.§^q§);
            §@M§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§2d§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§0!4§,this.§0!$§,_loc5_,this.§^q§);
            §@M§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§#!&§ = _loc4_;
         this.§9?§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§0!4§;
      }
      
      override public function get height() : Number
      {
         return this.§0!$§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§2d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§77§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§2a§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
