package §6s§
{
   import §=!d§.§5!5§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §!'§ extends §6s§.Texture
   {
       
      
      private var §0!F§:TextureBase;
      
      private var §5"5§:int;
      
      private var §"!i§:int;
      
      private var §'y§:Boolean;
      
      private var §="%§:Boolean;
      
      private var §%!C§:Boolean;
      
      private var §9"-§:Object;
      
      private var §<A§:Boolean = false;
      
      public function §!'§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§0!F§ = param1;
         this.§5"5§ = param2;
         this.§"!i§ = param3;
         this.§'y§ = param4;
         this.§="%§ = param5;
         this.§%!C§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§0!F§)
         {
            this.§0!F§.dispose();
         }
         this.§9e§(null);
         super.dispose();
      }
      
      public function §9e§(param1:Object) : void
      {
         if(this.§9"-§ == null && param1 != null)
         {
            §5!5§.§^'§.addEventListener(Event.CONTEXT3D_CREATE,this.§5J§);
         }
         if(param1 == null)
         {
            §5!5§.§^'§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5J§);
         }
         this.§9"-§ = param1;
      }
      
      private function §5J§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§<A§ = true;
         if(param1 != null)
         {
            this.§9e§(param1);
         }
      }
      
      public function get §6!X§() : Boolean
      {
         return this.§%!C§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§9"3§(param1);
         return this.§0!F§;
      }
      
      override public function get root() : §6s§.Texture
      {
         return this;
      }
      
      private function §9"3§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§<A§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§9"-§ as BitmapData;
         var _loc3_:ByteArray = this.§9"-§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§5"5§,this.§"!i§,Context3DTextureFormat.BGRA,this.§%!C§);
            §6s§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§'y§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§5"5§,this.§"!i§,_loc5_,this.§%!C§);
            §6s§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§0!F§ = _loc4_;
         this.§<A§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§5"5§;
      }
      
      override public function get height() : Number
      {
         return this.§"!i§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'y§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§="%§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9"-§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
