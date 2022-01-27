package §"!<§
{
   import §?!5§.§2d§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §`y§ extends §"!<§.Texture
   {
       
      
      private var §@z§:TextureBase;
      
      private var §]2§:int;
      
      private var §?R§:int;
      
      private var §<!X§:Boolean;
      
      private var §-!'§:Boolean;
      
      private var §8!W§:Boolean;
      
      private var §@E§:Object;
      
      private var §8,§:Boolean = false;
      
      public function §`y§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§@z§ = param1;
         this.§]2§ = param2;
         this.§?R§ = param3;
         this.§<!X§ = param4;
         this.§-!'§ = param5;
         this.§8!W§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§@z§)
         {
            this.§@z§.dispose();
         }
         this.§=!8§(null);
         super.dispose();
      }
      
      public function §=!8§(param1:Object) : void
      {
         if(this.§@E§ == null && param1 != null)
         {
            §2d§.§0A§.addEventListener(Event.CONTEXT3D_CREATE,this.§#>§);
         }
         if(param1 == null)
         {
            §2d§.§0A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#>§);
         }
         this.§@E§ = param1;
      }
      
      private function §#>§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8,§ = true;
         if(param1 != null)
         {
            this.§=!8§(param1);
         }
      }
      
      public function get §-!]§() : Boolean
      {
         return this.§8!W§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§&!P§(param1);
         return this.§@z§;
      }
      
      override public function get root() : §"!<§.Texture
      {
         return this;
      }
      
      private function §&!P§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§8,§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@E§ as BitmapData;
         var _loc3_:ByteArray = this.§@E§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§]2§,this.§?R§,Context3DTextureFormat.BGRA,this.§8!W§);
            §"!<§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§<!X§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§]2§,this.§?R§,_loc5_,this.§8!W§);
            §"!<§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§@z§ = _loc4_;
         this.§8,§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§]2§;
      }
      
      override public function get height() : Number
      {
         return this.§?R§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<!X§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§-!'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@E§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
