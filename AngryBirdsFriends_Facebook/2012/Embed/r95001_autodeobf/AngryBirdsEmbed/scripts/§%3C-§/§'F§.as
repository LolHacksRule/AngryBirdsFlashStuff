package §<-§
{
   import §9!2§.§7N§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §'F§ extends §<-§.Texture
   {
       
      
      private var §?c§:TextureBase;
      
      private var §!0§:int;
      
      private var §+K§:int;
      
      private var §<v§:Boolean;
      
      private var §4E§:Boolean;
      
      private var § h§:Boolean;
      
      private var §+e§:Object;
      
      private var §"!%§:Boolean = false;
      
      public function §'F§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?c§ = param1;
         this.§!0§ = param2;
         this.§+K§ = param3;
         this.§<v§ = param4;
         this.§4E§ = param5;
         this.§ h§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?c§)
         {
            this.§?c§.dispose();
         }
         this.§=!D§(null);
         super.dispose();
      }
      
      public function §=!D§(param1:Object) : void
      {
         if(this.§+e§ == null && param1 != null)
         {
            §7N§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§=7§);
         }
         if(param1 == null)
         {
            §7N§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=7§);
         }
         this.§+e§ = param1;
      }
      
      private function §=7§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§"!%§ = true;
         if(param1 != null)
         {
            this.§=!D§(param1);
         }
      }
      
      public function get §-!,§() : Boolean
      {
         return this.§ h§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§>!E§(param1);
         return this.§?c§;
      }
      
      override public function get root() : §<-§.Texture
      {
         return this;
      }
      
      private function §>!E§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§"!%§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§+e§ as BitmapData;
         var _loc3_:ByteArray = this.§+e§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§!0§,this.§+K§,Context3DTextureFormat.BGRA,this.§ h§);
            §<-§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<v§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§!0§,this.§+K§,_loc5_,this.§ h§);
            §<-§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?c§ = _loc4_;
         this.§"!%§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§!0§;
      }
      
      override public function get height() : Number
      {
         return this.§+K§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<v§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§4E§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+e§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
