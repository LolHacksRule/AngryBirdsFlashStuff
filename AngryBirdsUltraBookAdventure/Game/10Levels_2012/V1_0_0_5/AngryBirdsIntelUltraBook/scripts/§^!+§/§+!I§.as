package §^!+§
{
   import §<&§.§^b§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+!I§ extends §^!+§.Texture
   {
       
      
      private var §+!C§:TextureBase;
      
      private var §'O§:int;
      
      private var §!!A§:int;
      
      private var §4!U§:Boolean;
      
      private var §<!h§:Boolean;
      
      private var §=!]§:Boolean;
      
      private var §++§:Object;
      
      private var §9!1§:Boolean = false;
      
      public function §+!I§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§+!C§ = param1;
         this.§'O§ = param2;
         this.§!!A§ = param3;
         this.§4!U§ = param4;
         this.§<!h§ = param5;
         this.§=!]§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§+!C§)
         {
            this.§+!C§.dispose();
         }
         this.§;x§(null);
         super.dispose();
      }
      
      public function §;x§(param1:Object) : void
      {
         if(this.§++§ == null && param1 != null)
         {
            §^b§.§9E§.addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
         }
         if(param1 == null)
         {
            §^b§.§9E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
         }
         this.§++§ = param1;
      }
      
      private function §!!X§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9!1§ = true;
         if(param1 != null)
         {
            this.§;x§(param1);
         }
      }
      
      public function get §]!o§() : Boolean
      {
         return this.§=!]§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§9!k§(param1);
         return this.§+!C§;
      }
      
      override public function get root() : §^!+§.Texture
      {
         return this;
      }
      
      private function §9!k§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§9!1§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§++§ as BitmapData;
         var _loc3_:ByteArray = this.§++§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§'O§,this.§!!A§,Context3DTextureFormat.BGRA,this.§=!]§);
            §^!+§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§4!U§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§'O§,this.§!!A§,_loc5_,this.§=!]§);
            §^!+§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§+!C§ = _loc4_;
         this.§9!1§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§'O§;
      }
      
      override public function get height() : Number
      {
         return this.§!!A§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4!U§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!h§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§++§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
