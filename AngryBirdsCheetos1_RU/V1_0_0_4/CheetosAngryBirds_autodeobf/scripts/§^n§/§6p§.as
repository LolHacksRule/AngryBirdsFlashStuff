package §^n§
{
   import §`M§.§'C§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §6p§ extends §^n§.Texture
   {
       
      
      private var §0_§:TextureBase;
      
      private var §^S§:int;
      
      private var §6-§:int;
      
      private var §<q§:Boolean;
      
      private var §true §:Boolean;
      
      private var §'p§:Boolean;
      
      private var §,!T§:Object;
      
      private var §-Q§:Boolean = false;
      
      public function §6p§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§0_§ = param1;
         this.§^S§ = param2;
         this.§6-§ = param3;
         this.§<q§ = param4;
         this.§true § = param5;
         this.§'p§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§0_§)
         {
            this.§0_§.dispose();
         }
         this.§1!&§(null);
         super.dispose();
      }
      
      public function §1!&§(param1:Object) : void
      {
         if(this.§,!T§ == null && param1 != null)
         {
            §'C§.§3b§.addEventListener(Event.CONTEXT3D_CREATE,this.§%X§);
         }
         if(param1 == null)
         {
            §'C§.§3b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%X§);
         }
         this.§,!T§ = param1;
      }
      
      private function §%X§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§-Q§ = true;
         if(param1 != null)
         {
            this.§1!&§(param1);
         }
      }
      
      public function get §`f§() : Boolean
      {
         return this.§'p§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§1s§(param1);
         return this.§0_§;
      }
      
      override public function get root() : §^n§.Texture
      {
         return this;
      }
      
      private function §1s§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§-Q§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§,!T§ as BitmapData;
         var _loc3_:ByteArray = this.§,!T§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§^S§,this.§6-§,Context3DTextureFormat.BGRA,this.§'p§);
            §^n§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<q§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§^S§,this.§6-§,_loc5_,this.§'p§);
            §^n§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§0_§ = _loc4_;
         this.§-Q§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§^S§;
      }
      
      override public function get height() : Number
      {
         return this.§6-§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<q§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§true §;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,!T§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
