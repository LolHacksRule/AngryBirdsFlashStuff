package §>u§
{
   import §8!#§.§<n§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §7!&§ extends §>u§.Texture
   {
       
      
      private var §>P§:TextureBase;
      
      private var §-!6§:int;
      
      private var § B§:int;
      
      private var §2t§:Boolean;
      
      private var §0m§:Boolean;
      
      private var §79§:Boolean;
      
      private var §>!9§:Object;
      
      private var § !$§:Boolean = false;
      
      public function §7!&§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§>P§ = param1;
         this.§-!6§ = param2;
         this.§ B§ = param3;
         this.§2t§ = param4;
         this.§0m§ = param5;
         this.§79§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§>P§)
         {
            this.§>P§.dispose();
         }
         this.§9'§(null);
         super.dispose();
      }
      
      public function §9'§(param1:Object) : void
      {
         if(this.§>!9§ == null && param1 != null)
         {
            §<n§.§?@§.addEventListener(Event.CONTEXT3D_CREATE,this.§80§);
         }
         if(param1 == null)
         {
            §<n§.§?@§.removeEventListener(Event.CONTEXT3D_CREATE,this.§80§);
         }
         this.§>!9§ = param1;
      }
      
      private function §80§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§ !$§ = true;
         if(param1 != null)
         {
            this.§9'§(param1);
         }
      }
      
      public function get §,3§() : Boolean
      {
         return this.§79§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§#6§(param1);
         return this.§>P§;
      }
      
      override public function get root() : §>u§.Texture
      {
         return this;
      }
      
      private function §#6§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§ !$§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§>!9§ as BitmapData;
         var _loc3_:ByteArray = this.§>!9§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§-!6§,this.§ B§,Context3DTextureFormat.BGRA,this.§79§);
            §>u§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§2t§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§-!6§,this.§ B§,_loc5_,this.§79§);
            §>u§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§>P§ = _loc4_;
         this.§ !$§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§-!6§;
      }
      
      override public function get height() : Number
      {
         return this.§ B§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§2t§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§0m§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>!9§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
