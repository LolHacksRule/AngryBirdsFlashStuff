package §?!"§
{
   import §&p§.§'_§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §6Q§ extends §?!"§.Texture
   {
       
      
      private var §,!4§:TextureBase;
      
      private var §9Q§:int;
      
      private var §9p§:int;
      
      private var §+5§:Boolean;
      
      private var §2"§:Boolean;
      
      private var §+N§:Boolean;
      
      private var §^<§:Object;
      
      private var §0Q§:Boolean = false;
      
      public function §6Q§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§,!4§ = param1;
         this.§9Q§ = param2;
         this.§9p§ = param3;
         this.§+5§ = param4;
         this.§2"§ = param5;
         this.§+N§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§,!4§)
         {
            this.§,!4§.dispose();
         }
         this.§[!,§(null);
         super.dispose();
      }
      
      public function §[!,§(param1:Object) : void
      {
         if(this.§^<§ == null && param1 != null)
         {
            §'_§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
         }
         if(param1 == null)
         {
            §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
         }
         this.§^<§ = param1;
      }
      
      private function §-%§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§0Q§ = true;
         if(param1 != null)
         {
            this.§[!,§(param1);
         }
      }
      
      public function get §0e§() : Boolean
      {
         return this.§+N§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§+3§(param1);
         return this.§,!4§;
      }
      
      override public function get root() : §?!"§.Texture
      {
         return this;
      }
      
      private function §+3§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§0Q§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§^<§ as BitmapData;
         var _loc3_:ByteArray = this.§^<§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§9Q§,this.§9p§,Context3DTextureFormat.BGRA,this.§+N§);
            §?!"§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+5§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§9Q§,this.§9p§,_loc5_,this.§+N§);
            §?!"§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§,!4§ = _loc4_;
         this.§0Q§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§9Q§;
      }
      
      override public function get height() : Number
      {
         return this.§9p§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+5§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2"§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^<§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
