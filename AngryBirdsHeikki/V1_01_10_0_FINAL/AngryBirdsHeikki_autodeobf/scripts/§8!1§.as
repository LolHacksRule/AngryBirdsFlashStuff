package
{
   import §"^§.§+!'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §8!1§ extends Texture
   {
       
      
      private var §+!N§:TextureBase;
      
      private var §@!-§:int;
      
      private var §3S§:int;
      
      private var §!!'§:Boolean;
      
      private var §][§:Boolean;
      
      private var §+!7§:Boolean;
      
      private var §`!,§:Object;
      
      private var §;x§:Boolean = false;
      
      public function §8!1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§+!N§ = param1;
         this.§@!-§ = param2;
         this.§3S§ = param3;
         this.§!!'§ = param4;
         this.§][§ = param5;
         this.§+!7§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§+!N§)
         {
            this.§+!N§.dispose();
         }
         this.§&3§(null);
         super.dispose();
      }
      
      public function §&3§(param1:Object) : void
      {
         if(this.§`!,§ == null && param1 != null)
         {
            §+!'§.§2d§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
         }
         if(param1 == null)
         {
            §+!'§.§2d§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
         }
         this.§`!,§ = param1;
      }
      
      private function §3!c§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§;x§ = true;
         if(param1 != null)
         {
            this.§&3§(param1);
         }
      }
      
      public function get §0z§() : Boolean
      {
         return this.§+!7§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6!f§(param1);
         return this.§+!N§;
      }
      
      override public function get root() : Texture
      {
         return this;
      }
      
      private function §6!f§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§;x§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§`!,§ as BitmapData;
         var _loc3_:ByteArray = this.§`!,§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§@!-§,this.§3S§,Context3DTextureFormat.BGRA,this.§+!7§);
            Texture.uploadBitmapData(_loc4_,_loc2_,this.§!!'§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§@!-§,this.§3S§,_loc5_,this.§+!7§);
            Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§+!N§ = _loc4_;
         this.§;x§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§@!-§;
      }
      
      override public function get height() : Number
      {
         return this.§3S§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§!!'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§][§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!,§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
