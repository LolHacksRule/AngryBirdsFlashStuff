package §6!4§
{
   import §+&§.§?y§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §5!;§ extends §6!4§.Texture
   {
       
      
      private var §,!?§:TextureBase;
      
      private var §"!R§:int;
      
      private var §0[§:int;
      
      private var §;!Y§:Boolean;
      
      private var §8"§:Boolean;
      
      private var §'m§:Boolean;
      
      private var §,!W§:Object;
      
      private var §5D§:Boolean = false;
      
      public function §5!;§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§,!?§ = param1;
         this.§"!R§ = param2;
         this.§0[§ = param3;
         this.§;!Y§ = param4;
         this.§8"§ = param5;
         this.§'m§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§,!?§)
         {
            this.§,!?§.dispose();
         }
         this.§[!B§(null);
         super.dispose();
      }
      
      public function §[!B§(param1:Object) : void
      {
         if(this.§,!W§ == null && param1 != null)
         {
            §?y§.§,u§.addEventListener(Event.CONTEXT3D_CREATE,this.§>l§);
         }
         if(param1 == null)
         {
            §?y§.§,u§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>l§);
         }
         this.§,!W§ = param1;
      }
      
      private function §>l§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§5D§ = true;
         if(param1 != null)
         {
            this.§[!B§(param1);
         }
      }
      
      public function get §super§() : Boolean
      {
         return this.§'m§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§['§(param1);
         return this.§,!?§;
      }
      
      override public function get root() : §6!4§.Texture
      {
         return this;
      }
      
      private function §['§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§5D§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§,!W§ as BitmapData;
         var _loc3_:ByteArray = this.§,!W§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§"!R§,this.§0[§,Context3DTextureFormat.BGRA,this.§'m§);
            §6!4§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§;!Y§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§"!R§,this.§0[§,_loc5_,this.§'m§);
            §6!4§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§,!?§ = _loc4_;
         this.§5D§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§"!R§;
      }
      
      override public function get height() : Number
      {
         return this.§0[§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;!Y§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8"§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,!W§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
