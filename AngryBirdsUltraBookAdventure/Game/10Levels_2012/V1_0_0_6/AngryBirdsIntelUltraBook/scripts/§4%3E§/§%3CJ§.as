package §4>§
{
   import §!!K§.§else§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §<J§ extends §4>§.Texture
   {
       
      
      private var §[c§:TextureBase;
      
      private var §2!d§:int;
      
      private var §@@§:int;
      
      private var §2!B§:Boolean;
      
      private var §3!Z§:Boolean;
      
      private var §6!z§:Boolean;
      
      private var §%v§:Object;
      
      private var §5!B§:Boolean = false;
      
      public function §<J§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§[c§ = param1;
         this.§2!d§ = param2;
         this.§@@§ = param3;
         this.§2!B§ = param4;
         this.§3!Z§ = param5;
         this.§6!z§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§[c§)
         {
            this.§[c§.dispose();
         }
         this.§!G§(null);
         super.dispose();
      }
      
      public function §!G§(param1:Object) : void
      {
         if(this.§%v§ == null && param1 != null)
         {
            §else§.§^!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
         }
         if(param1 == null)
         {
            §else§.§^!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
         }
         this.§%v§ = param1;
      }
      
      private function §3!r§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§5!B§ = true;
         if(param1 != null)
         {
            this.§!G§(param1);
         }
      }
      
      public function get §-B§() : Boolean
      {
         return this.§6!z§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§#!>§(param1);
         return this.§[c§;
      }
      
      override public function get root() : §4>§.Texture
      {
         return this;
      }
      
      private function §#!>§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§5!B§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§%v§ as BitmapData;
         var _loc3_:ByteArray = this.§%v§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§2!d§,this.§@@§,Context3DTextureFormat.BGRA,this.§6!z§);
            §4>§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§2!B§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§2!d§,this.§@@§,_loc5_,this.§6!z§);
            §4>§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§[c§ = _loc4_;
         this.§5!B§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§2!d§;
      }
      
      override public function get height() : Number
      {
         return this.§@@§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§2!B§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3!Z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%v§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
