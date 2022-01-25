package §@'§
{
   import §9]§.§9J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §[!#§ extends §@'§.Texture
   {
       
      
      private var §6[§:TextureBase;
      
      private var §,E§:int;
      
      private var §4X§:int;
      
      private var §4P§:Boolean;
      
      private var §2"§:Boolean;
      
      private var §[!G§:Boolean;
      
      private var §9!?§:Object;
      
      private var §5f§:Boolean = false;
      
      public function §[!#§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§6[§ = param1;
         this.§,E§ = param2;
         this.§4X§ = param3;
         this.§4P§ = param4;
         this.§2"§ = param5;
         this.§[!G§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§6[§)
         {
            this.§6[§.dispose();
         }
         this.§8Y§(null);
         super.dispose();
      }
      
      public function §8Y§(param1:Object) : void
      {
         if(this.§9!?§ == null && param1 != null)
         {
            §9J§.§?X§.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         }
         if(param1 == null)
         {
            §9J§.§?X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         }
         this.§9!?§ = param1;
      }
      
      private function §!G§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§5f§ = true;
         if(param1 != null)
         {
            this.§8Y§(param1);
         }
      }
      
      public function get §!!E§() : Boolean
      {
         return this.§[!G§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§@w§(param1);
         return this.§6[§;
      }
      
      override public function get root() : §@'§.Texture
      {
         return this;
      }
      
      private function §@w§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§5f§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§9!?§ as BitmapData;
         var _loc3_:ByteArray = this.§9!?§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§,E§,this.§4X§,Context3DTextureFormat.BGRA,this.§[!G§);
            §@'§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§4P§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§,E§,this.§4X§,_loc5_,this.§[!G§);
            §@'§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§6[§ = _loc4_;
         this.§5f§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§,E§;
      }
      
      override public function get height() : Number
      {
         return this.§4X§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4P§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2"§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9!?§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
