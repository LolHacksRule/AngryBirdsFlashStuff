package §]!a§
{
   import §6;§.§%[§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §2f§ extends §]!a§.Texture
   {
       
      
      private var §9f§:TextureBase;
      
      private var §]>§:int;
      
      private var §7w§:int;
      
      private var §+!h§:Boolean;
      
      private var §@!,§:Boolean;
      
      private var §<B§:Boolean;
      
      private var §0!I§:Object;
      
      private var §-&§:Boolean = false;
      
      public function §2f§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§9f§ = param1;
         this.§]>§ = param2;
         this.§7w§ = param3;
         this.§+!h§ = param4;
         this.§@!,§ = param5;
         this.§<B§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§9f§)
         {
            this.§9f§.dispose();
         }
         this.§%!2§(null);
         super.dispose();
      }
      
      public function §%!2§(param1:Object) : void
      {
         if(this.§0!I§ == null && param1 != null)
         {
            §%[§.§`1§.addEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
         }
         if(param1 == null)
         {
            §%[§.§`1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
         }
         this.§0!I§ = param1;
      }
      
      private function §&!S§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§-&§ = true;
         if(param1 != null)
         {
            this.§%!2§(param1);
         }
      }
      
      public function get §8l§() : Boolean
      {
         return this.§<B§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6x§(param1);
         return this.§9f§;
      }
      
      override public function get root() : §]!a§.Texture
      {
         return this;
      }
      
      private function §6x§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§-&§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§0!I§ as BitmapData;
         var _loc3_:ByteArray = this.§0!I§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§]>§,this.§7w§,Context3DTextureFormat.BGRA,this.§<B§);
            §]!a§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+!h§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§]>§,this.§7w§,_loc5_,this.§<B§);
            §]!a§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§9f§ = _loc4_;
         this.§-&§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§]>§;
      }
      
      override public function get height() : Number
      {
         return this.§7w§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!h§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@!,§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0!I§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
