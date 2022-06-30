package §!!S§
{
   import §&L§.§?]§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §#H§ extends §!!S§.Texture
   {
       
      
      private var §^!b§:TextureBase;
      
      private var §@S§:int;
      
      private var §1!U§:int;
      
      private var §`!N§:Boolean;
      
      private var §3!M§:Boolean;
      
      private var §'!1§:Boolean;
      
      private var §=!K§:Object;
      
      private var §@!M§:Boolean = false;
      
      public function §#H§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§^!b§ = param1;
         this.§@S§ = param2;
         this.§1!U§ = param3;
         this.§`!N§ = param4;
         this.§3!M§ = param5;
         this.§'!1§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§^!b§)
         {
            this.§^!b§.dispose();
         }
         this.§6!b§(null);
         super.dispose();
      }
      
      public function §6!b§(param1:Object) : void
      {
         if(this.§=!K§ == null && param1 != null)
         {
            §?]§.§`!H§.addEventListener(Event.CONTEXT3D_CREATE,this.§7!g§);
         }
         if(param1 == null)
         {
            §?]§.§`!H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§7!g§);
         }
         this.§=!K§ = param1;
      }
      
      private function §7!g§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§@!M§ = true;
         if(param1 != null)
         {
            this.§6!b§(param1);
         }
      }
      
      public function get §[!#§() : Boolean
      {
         return this.§'!1§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§+k§(param1);
         return this.§^!b§;
      }
      
      override public function get root() : §!!S§.Texture
      {
         return this;
      }
      
      private function §+k§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§@!M§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§=!K§ as BitmapData;
         var _loc3_:ByteArray = this.§=!K§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§@S§,this.§1!U§,Context3DTextureFormat.BGRA,this.§'!1§);
            §!!S§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§`!N§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§@S§,this.§1!U§,_loc5_,this.§'!1§);
            §!!S§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§^!b§ = _loc4_;
         this.§@!M§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§@S§;
      }
      
      override public function get height() : Number
      {
         return this.§1!U§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§`!N§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3!M§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§=!K§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
