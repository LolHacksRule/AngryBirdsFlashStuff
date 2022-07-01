package §^i§
{
   import §0P§.§!!l§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §?3§ extends §^i§.Texture
   {
       
      
      private var §6p§:TextureBase;
      
      private var §1§:int;
      
      private var §+!4§:int;
      
      private var §;2§:Boolean;
      
      private var §>h§:Boolean;
      
      private var §["&§:Boolean;
      
      private var §,4§:Object;
      
      private var §>!,§:Boolean = false;
      
      public function §?3§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§6p§ = param1;
         this.§1§ = param2;
         this.§+!4§ = param3;
         this.§;2§ = param4;
         this.§>h§ = param5;
         this.§["&§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§6p§)
         {
            this.§6p§.dispose();
         }
         this.§%§(null);
         super.dispose();
      }
      
      public function §%§(param1:Object) : void
      {
         if(this.§,4§ == null && param1 != null)
         {
            §!!l§.§`7§.addEventListener(Event.CONTEXT3D_CREATE,this.§ i§);
         }
         if(param1 == null)
         {
            §!!l§.§`7§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ i§);
         }
         this.§,4§ = param1;
      }
      
      private function § i§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§>!,§ = true;
         if(param1 != null)
         {
            this.§%§(param1);
         }
      }
      
      public function get §8!<§() : Boolean
      {
         return this.§["&§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§`!'§(param1);
         return this.§6p§;
      }
      
      override public function get root() : §^i§.Texture
      {
         return this;
      }
      
      private function §`!'§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§>!,§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§,4§ as BitmapData;
         var _loc3_:ByteArray = this.§,4§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§1§,this.§+!4§,Context3DTextureFormat.BGRA,this.§["&§);
            §^i§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§;2§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§1§,this.§+!4§,_loc5_,this.§["&§);
            §^i§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§6p§ = _loc4_;
         this.§>!,§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§1§;
      }
      
      override public function get height() : Number
      {
         return this.§+!4§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;2§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>h§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,4§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
