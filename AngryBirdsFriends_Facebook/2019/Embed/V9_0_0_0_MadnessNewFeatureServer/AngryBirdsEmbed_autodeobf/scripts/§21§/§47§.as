package §21§
{
   import §,!,§.§2t§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §47§ extends §21§.Texture
   {
       
      
      private var §5!I§:TextureBase;
      
      private var §?U§:int;
      
      private var §continue§:int;
      
      private var §'t§:Boolean;
      
      private var §'!C§:Boolean;
      
      private var §`j§:Boolean;
      
      private var §#n§:Object;
      
      private var §@9§:Boolean = false;
      
      public function §47§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§5!I§ = param1;
         this.§?U§ = param2;
         this.§continue§ = param3;
         this.§'t§ = param4;
         this.§'!C§ = param5;
         this.§`j§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§5!I§)
         {
            this.§5!I§.dispose();
         }
         this.§8k§(null);
         super.dispose();
      }
      
      public function §8k§(param1:Object) : void
      {
         if(this.§#n§ == null && param1 != null)
         {
            §2t§.§,!E§.addEventListener(Event.CONTEXT3D_CREATE,this.§>h§);
         }
         if(param1 == null)
         {
            §2t§.§,!E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>h§);
         }
         this.§#n§ = param1;
      }
      
      private function §>h§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§@9§ = true;
         if(param1 != null)
         {
            this.§8k§(param1);
         }
      }
      
      public function get §9h§() : Boolean
      {
         return this.§`j§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§+m§(param1);
         return this.§5!I§;
      }
      
      override public function get root() : §21§.Texture
      {
         return this;
      }
      
      private function §+m§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§@9§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§#n§ as BitmapData;
         var _loc3_:ByteArray = this.§#n§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§?U§,this.§continue§,Context3DTextureFormat.BGRA,this.§`j§);
            §21§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§'t§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§?U§,this.§continue§,_loc5_,this.§`j§);
            §21§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§5!I§ = _loc4_;
         this.§@9§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§?U§;
      }
      
      override public function get height() : Number
      {
         return this.§continue§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'t§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'!C§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§#n§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
