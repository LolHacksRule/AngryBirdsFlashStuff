package §#!`§
{
   import §'!S§.§,!%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §6m§ extends §#!`§.Texture
   {
       
      
      private var §^S§:TextureBase;
      
      private var §5I§:int;
      
      private var §1Q§:int;
      
      private var §#Q§:Boolean;
      
      private var §;!W§:Boolean;
      
      private var §4R§:Boolean;
      
      private var §9R§:Object;
      
      private var §-!4§:Boolean = false;
      
      public function §6m§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§^S§ = param1;
         this.§5I§ = param2;
         this.§1Q§ = param3;
         this.§#Q§ = param4;
         this.§;!W§ = param5;
         this.§4R§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§^S§)
         {
            this.§^S§.dispose();
         }
         this.§1!'§(null);
         super.dispose();
      }
      
      public function §1!'§(param1:Object) : void
      {
         if(this.§9R§ == null && param1 != null)
         {
            §,!%§.§]!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§[!8§);
         }
         if(param1 == null)
         {
            §,!%§.§]!C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[!8§);
         }
         this.§9R§ = param1;
      }
      
      private function §[!8§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§-!4§ = true;
         if(param1 != null)
         {
            this.§1!'§(param1);
         }
      }
      
      public function get §6Z§() : Boolean
      {
         return this.§4R§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§ null§(param1);
         return this.§^S§;
      }
      
      override public function get root() : §#!`§.Texture
      {
         return this;
      }
      
      private function § null§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§-!4§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§9R§ as BitmapData;
         var _loc3_:ByteArray = this.§9R§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§5I§,this.§1Q§,Context3DTextureFormat.BGRA,this.§4R§);
            §#!`§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§#Q§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§5I§,this.§1Q§,_loc5_,this.§4R§);
            §#!`§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§^S§ = _loc4_;
         this.§-!4§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§5I§;
      }
      
      override public function get height() : Number
      {
         return this.§1Q§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§#Q§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;!W§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9R§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
