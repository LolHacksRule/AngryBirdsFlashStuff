package §7R§
{
   import §6p§.§?%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §1!5§ extends §7R§.Texture
   {
       
      
      private var §`W§:TextureBase;
      
      private var §7!T§:int;
      
      private var §>w§:int;
      
      private var §]!A§:Boolean;
      
      private var §,";§:Boolean;
      
      private var §@o§:Boolean;
      
      private var §"!k§:Object;
      
      private var §!`§:Boolean = false;
      
      public function §1!5§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§`W§ = param1;
         this.§7!T§ = param2;
         this.§>w§ = param3;
         this.§]!A§ = param4;
         this.§,";§ = param5;
         this.§@o§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§`W§)
         {
            this.§`W§.dispose();
         }
         this.§#"2§(null);
         super.dispose();
      }
      
      public function §#"2§(param1:Object) : void
      {
         if(this.§"!k§ == null && param1 != null)
         {
            §?%§.§%b§.addEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
         }
         if(param1 == null)
         {
            §?%§.§%b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
         }
         this.§"!k§ = param1;
      }
      
      private function §6h§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§!`§ = true;
         if(param1 != null)
         {
            this.§#"2§(param1);
         }
      }
      
      public function get §+"<§() : Boolean
      {
         return this.§@o§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§!!i§(param1);
         return this.§`W§;
      }
      
      override public function get root() : §7R§.Texture
      {
         return this;
      }
      
      private function §!!i§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§!`§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§"!k§ as BitmapData;
         var _loc3_:ByteArray = this.§"!k§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§7!T§,this.§>w§,Context3DTextureFormat.BGRA,this.§@o§);
            §7R§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§]!A§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§7!T§,this.§>w§,_loc5_,this.§@o§);
            §7R§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§`W§ = _loc4_;
         this.§!`§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§7!T§;
      }
      
      override public function get height() : Number
      {
         return this.§>w§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]!A§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,";§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§"!k§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
