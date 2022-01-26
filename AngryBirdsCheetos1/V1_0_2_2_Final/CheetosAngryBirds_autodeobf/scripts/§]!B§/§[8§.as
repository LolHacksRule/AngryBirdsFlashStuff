package §]!B§
{
   import §`C§.§9!'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §[8§ extends §]!B§.Texture
   {
       
      
      private var §+!C§:TextureBase;
      
      private var §^!I§:int;
      
      private var §,!X§:int;
      
      private var §<!W§:Boolean;
      
      private var §'!P§:Boolean;
      
      private var §1!A§:Boolean;
      
      private var §%p§:Object;
      
      private var §!!H§:Boolean = false;
      
      public function §[8§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§+!C§ = param1;
         this.§^!I§ = param2;
         this.§,!X§ = param3;
         this.§<!W§ = param4;
         this.§'!P§ = param5;
         this.§1!A§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§+!C§)
         {
            this.§+!C§.dispose();
         }
         this.§`b§(null);
         super.dispose();
      }
      
      public function §`b§(param1:Object) : void
      {
         if(this.§%p§ == null && param1 != null)
         {
            §9!'§.§7!Z§.addEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
         }
         if(param1 == null)
         {
            §9!'§.§7!Z§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
         }
         this.§%p§ = param1;
      }
      
      private function §"$§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§!!H§ = true;
         if(param1 != null)
         {
            this.§`b§(param1);
         }
      }
      
      public function get §]_§() : Boolean
      {
         return this.§1!A§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§]y§(param1);
         return this.§+!C§;
      }
      
      override public function get root() : §]!B§.Texture
      {
         return this;
      }
      
      private function §]y§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§!!H§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§%p§ as BitmapData;
         var _loc3_:ByteArray = this.§%p§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§^!I§,this.§,!X§,Context3DTextureFormat.BGRA,this.§1!A§);
            §]!B§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<!W§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§^!I§,this.§,!X§,_loc5_,this.§1!A§);
            §]!B§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§+!C§ = _loc4_;
         this.§!!H§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§^!I§;
      }
      
      override public function get height() : Number
      {
         return this.§,!X§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<!W§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'!P§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%p§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
