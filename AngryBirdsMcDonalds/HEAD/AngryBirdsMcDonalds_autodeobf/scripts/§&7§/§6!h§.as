package §&7§
{
   import §%%§.§3P§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §6!h§ extends §&7§.Texture
   {
       
      
      private var §]!R§:TextureBase;
      
      private var §9E§:int;
      
      private var §;`§:int;
      
      private var §,!G§:Boolean;
      
      private var §4!U§:Boolean;
      
      private var §4e§:Boolean;
      
      private var §-!n§:Object;
      
      private var §=!n§:Boolean = false;
      
      public function §6!h§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§]!R§ = param1;
         this.§9E§ = param2;
         this.§;`§ = param3;
         this.§,!G§ = param4;
         this.§4!U§ = param5;
         this.§4e§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§]!R§)
         {
            this.§]!R§.dispose();
         }
         this.§9!a§(null);
         super.dispose();
      }
      
      public function §9!a§(param1:Object) : void
      {
         if(this.§-!n§ == null && param1 != null)
         {
            §3P§.§6_§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!i§);
         }
         if(param1 == null)
         {
            §3P§.§6_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!i§);
         }
         this.§-!n§ = param1;
      }
      
      private function §3!i§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§=!n§ = true;
         if(param1 != null)
         {
            this.§9!a§(param1);
         }
      }
      
      public function get §!w§() : Boolean
      {
         return this.§4e§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§`!^§(param1);
         return this.§]!R§;
      }
      
      override public function get root() : §&7§.Texture
      {
         return this;
      }
      
      private function §`!^§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§=!n§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§-!n§ as BitmapData;
         var _loc3_:ByteArray = this.§-!n§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§9E§,this.§;`§,Context3DTextureFormat.BGRA,this.§4e§);
            §&7§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§,!G§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§9E§,this.§;`§,_loc5_,this.§4e§);
            §&7§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§]!R§ = _loc4_;
         this.§=!n§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§9E§;
      }
      
      override public function get height() : Number
      {
         return this.§;`§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,!G§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§4!U§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§-!n§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
