package §8z§
{
   import §5Z§.§[Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §5y§ extends §8z§.Texture
   {
       
      
      private var §9!2§:TextureBase;
      
      private var §6! §:int;
      
      private var §@g§:int;
      
      private var §^d§:Boolean;
      
      private var §7o§:Boolean;
      
      private var §?G§:Boolean;
      
      private var §7A§:Object;
      
      private var § ;§:Boolean = false;
      
      public function §5y§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§9!2§ = param1;
         this.§6! § = param2;
         this.§@g§ = param3;
         this.§^d§ = param4;
         this.§7o§ = param5;
         this.§?G§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§9!2§)
         {
            this.§9!2§.dispose();
         }
         this.§--§(null);
         super.dispose();
      }
      
      public function §--§(param1:Object) : void
      {
         if(this.§7A§ == null && param1 != null)
         {
            §[Z§.§%m§.addEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
         }
         if(param1 == null)
         {
            §[Z§.§%m§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
         }
         this.§7A§ = param1;
      }
      
      private function §]!$§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§ ;§ = true;
         if(param1 != null)
         {
            this.§--§(param1);
         }
      }
      
      public function get §,T§() : Boolean
      {
         return this.§?G§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6W§(param1);
         return this.§9!2§;
      }
      
      override public function get root() : §8z§.Texture
      {
         return this;
      }
      
      private function §6W§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§ ;§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§7A§ as BitmapData;
         var _loc3_:ByteArray = this.§7A§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§6! §,this.§@g§,Context3DTextureFormat.BGRA,this.§?G§);
            §8z§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§^d§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§6! §,this.§@g§,_loc5_,this.§?G§);
            §8z§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§9!2§ = _loc4_;
         this.§ ;§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§6! §;
      }
      
      override public function get height() : Number
      {
         return this.§@g§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§7o§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§7A§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
