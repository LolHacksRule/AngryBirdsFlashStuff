package §?V§
{
   import §-!Y§.§%!%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §`s§ extends §?V§.Texture
   {
       
      
      private var §?!x§:TextureBase;
      
      private var §9z§:int;
      
      private var §8#§:int;
      
      private var §?!M§:Boolean;
      
      private var §>P§:Boolean;
      
      private var §#P§:Boolean;
      
      private var §]"+§:Object;
      
      private var §8!9§:Boolean = false;
      
      public function §`s§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?!x§ = param1;
         this.§9z§ = param2;
         this.§8#§ = param3;
         this.§?!M§ = param4;
         this.§>P§ = param5;
         this.§#P§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?!x§)
         {
            this.§?!x§.dispose();
         }
         this.§'!h§(null);
         super.dispose();
      }
      
      public function §'!h§(param1:Object) : void
      {
         if(this.§]"+§ == null && param1 != null)
         {
            §%!%§.§"T§.addEventListener(Event.CONTEXT3D_CREATE,this.§5!h§);
         }
         if(param1 == null)
         {
            §%!%§.§"T§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5!h§);
         }
         this.§]"+§ = param1;
      }
      
      private function §5!h§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8!9§ = true;
         if(param1 != null)
         {
            this.§'!h§(param1);
         }
      }
      
      public function get §9q§() : Boolean
      {
         return this.§#P§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§[!v§(param1);
         return this.§?!x§;
      }
      
      override public function get root() : §?V§.Texture
      {
         return this;
      }
      
      private function §[!v§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§8!9§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§]"+§ as BitmapData;
         var _loc3_:ByteArray = this.§]"+§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§9z§,this.§8#§,Context3DTextureFormat.BGRA,this.§#P§);
            §?V§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§?!M§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§9z§,this.§8#§,_loc5_,this.§#P§);
            §?V§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?!x§ = _loc4_;
         this.§8!9§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§9z§;
      }
      
      override public function get height() : Number
      {
         return this.§8#§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?!M§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>P§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]"+§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
