package §7"+§
{
   import §6!4§.§<!D§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §7!+§ extends §7"+§.Texture
   {
       
      
      private var §`+§:TextureBase;
      
      private var §<!"§:int;
      
      private var §50§:int;
      
      private var §]"!§:Boolean;
      
      private var §'!7§:Boolean;
      
      private var §"-§:Boolean;
      
      private var §5!d§:Object;
      
      private var §#`§:Boolean = false;
      
      public function §7!+§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§`+§ = param1;
         this.§<!"§ = param2;
         this.§50§ = param3;
         this.§]"!§ = param4;
         this.§'!7§ = param5;
         this.§"-§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§`+§)
         {
            this.§`+§.dispose();
         }
         this.§"!6§(null);
         super.dispose();
      }
      
      public function §"!6§(param1:Object) : void
      {
         if(this.§5!d§ == null && param1 != null)
         {
            §<!D§.§?!_§.addEventListener(Event.CONTEXT3D_CREATE,this.§-!P§);
         }
         if(param1 == null)
         {
            §<!D§.§?!_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-!P§);
         }
         this.§5!d§ = param1;
      }
      
      private function §-!P§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§#`§ = true;
         if(param1 != null)
         {
            this.§"!6§(param1);
         }
      }
      
      public function get §%m§() : Boolean
      {
         return this.§"-§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§?!1§(param1);
         return this.§`+§;
      }
      
      override public function get root() : §7"+§.Texture
      {
         return this;
      }
      
      private function §?!1§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§#`§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§5!d§ as BitmapData;
         var _loc3_:ByteArray = this.§5!d§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§<!"§,this.§50§,Context3DTextureFormat.BGRA,this.§"-§);
            §7"+§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§]"!§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§<!"§,this.§50§,_loc5_,this.§"-§);
            §7"+§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§`+§ = _loc4_;
         this.§#`§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§<!"§;
      }
      
      override public function get height() : Number
      {
         return this.§50§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]"!§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'!7§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§5!d§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
