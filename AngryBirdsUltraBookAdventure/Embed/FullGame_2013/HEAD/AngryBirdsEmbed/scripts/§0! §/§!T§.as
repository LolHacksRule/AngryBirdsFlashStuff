package §0! §
{
   import §=!0§.§>I§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §!T§ extends §0! §.Texture
   {
       
      
      private var §0j§:TextureBase;
      
      private var §[s§:int;
      
      private var §8!&§:int;
      
      private var §6!'§:Boolean;
      
      private var §7R§:Boolean;
      
      private var §&]§:Boolean;
      
      private var § true§:Object;
      
      private var §`!?§:Boolean = false;
      
      public function §!T§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§0j§ = param1;
         this.§[s§ = param2;
         this.§8!&§ = param3;
         this.§6!'§ = param4;
         this.§7R§ = param5;
         this.§&]§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§0j§)
         {
            this.§0j§.dispose();
         }
         this.§#B§(null);
         super.dispose();
      }
      
      public function §#B§(param1:Object) : void
      {
         if(this.§ true§ == null && param1 != null)
         {
            §>I§.§`S§.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
         }
         if(param1 == null)
         {
            §>I§.§`S§.removeEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
         }
         this.§ true§ = param1;
      }
      
      private function §@!C§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§`!?§ = true;
         if(param1 != null)
         {
            this.§#B§(param1);
         }
      }
      
      public function get §6!2§() : Boolean
      {
         return this.§&]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§1!C§(param1);
         return this.§0j§;
      }
      
      override public function get root() : §0! §.Texture
      {
         return this;
      }
      
      private function §1!C§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§`!?§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§ true§ as BitmapData;
         var _loc3_:ByteArray = this.§ true§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§[s§,this.§8!&§,Context3DTextureFormat.BGRA,this.§&]§);
            §0! §.Texture.uploadBitmapData(_loc4_,_loc2_,this.§6!'§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§[s§,this.§8!&§,_loc5_,this.§&]§);
            §0! §.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§0j§ = _loc4_;
         this.§`!?§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§[s§;
      }
      
      override public function get height() : Number
      {
         return this.§8!&§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6!'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§7R§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§ true§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
