package §0!%§
{
   import §%!j§.§%K§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §]0§ extends §0!%§.Texture
   {
       
      
      private var §?!u§:TextureBase;
      
      private var §",§:int;
      
      private var §%"0§:int;
      
      private var §'z§:Boolean;
      
      private var §[!k§:Boolean;
      
      private var §81§:Boolean;
      
      private var §`!?§:Object;
      
      private var §0b§:Boolean = false;
      
      public function §]0§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?!u§ = param1;
         this.§",§ = param2;
         this.§%"0§ = param3;
         this.§'z§ = param4;
         this.§[!k§ = param5;
         this.§81§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?!u§)
         {
            this.§?!u§.dispose();
         }
         this.§2o§(null);
         super.dispose();
      }
      
      public function §2o§(param1:Object) : void
      {
         if(this.§`!?§ == null && param1 != null)
         {
            §%K§.§`9§.addEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
         }
         if(param1 == null)
         {
            §%K§.§`9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
         }
         this.§`!?§ = param1;
      }
      
      private function § !m§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§0b§ = true;
         if(param1 != null)
         {
            this.§2o§(param1);
         }
      }
      
      public function get §5]§() : Boolean
      {
         return this.§81§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§]"<§(param1);
         return this.§?!u§;
      }
      
      override public function get root() : §0!%§.Texture
      {
         return this;
      }
      
      private function §]"<§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§0b§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§`!?§ as BitmapData;
         var _loc3_:ByteArray = this.§`!?§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§",§,this.§%"0§,Context3DTextureFormat.BGRA,this.§81§);
            §0!%§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§'z§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§",§,this.§%"0§,_loc5_,this.§81§);
            §0!%§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?!u§ = _loc4_;
         this.§0b§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§",§;
      }
      
      override public function get height() : Number
      {
         return this.§%"0§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'z§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§[!k§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!?§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
