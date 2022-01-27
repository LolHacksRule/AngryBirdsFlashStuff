package §,]§
{
   import §'!3§.§&!H§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §%!5§ extends §,]§.Texture
   {
       
      
      private var §2c§:TextureBase;
      
      private var §0!A§:int;
      
      private var §3>§:int;
      
      private var §4!9§:Boolean;
      
      private var §^8§:Boolean;
      
      private var §<t§:Boolean;
      
      private var § 9§:Object;
      
      private var §6t§:Boolean = false;
      
      public function §%!5§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§2c§ = param1;
         this.§0!A§ = param2;
         this.§3>§ = param3;
         this.§4!9§ = param4;
         this.§^8§ = param5;
         this.§<t§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§2c§)
         {
            this.§2c§.dispose();
         }
         this.§!y§(null);
         super.dispose();
      }
      
      public function §!y§(param1:Object) : void
      {
         if(this.§ 9§ == null && param1 != null)
         {
            §&!H§.§+!H§.addEventListener(Event.CONTEXT3D_CREATE,this.§8k§);
         }
         if(param1 == null)
         {
            §&!H§.§+!H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8k§);
         }
         this.§ 9§ = param1;
      }
      
      private function §8k§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6t§ = true;
         if(param1 != null)
         {
            this.§!y§(param1);
         }
      }
      
      public function get §]h§() : Boolean
      {
         return this.§<t§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§5G§(param1);
         return this.§2c§;
      }
      
      override public function get root() : §,]§.Texture
      {
         return this;
      }
      
      private function §5G§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§6t§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§ 9§ as BitmapData;
         var _loc3_:ByteArray = this.§ 9§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§0!A§,this.§3>§,Context3DTextureFormat.BGRA,this.§<t§);
            §,]§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§4!9§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§0!A§,this.§3>§,_loc5_,this.§<t§);
            §,]§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§2c§ = _loc4_;
         this.§6t§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§0!A§;
      }
      
      override public function get height() : Number
      {
         return this.§3>§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4!9§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§^8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§ 9§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
