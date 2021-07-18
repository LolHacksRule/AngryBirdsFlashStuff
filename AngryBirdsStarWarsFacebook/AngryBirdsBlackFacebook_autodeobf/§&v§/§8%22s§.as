package §&v§
{
   import §&#H§.§3#J§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §8"s§ extends §&v§.Texture
   {
       
      
      private var §3f§:TextureBase;
      
      private var §6"?§:int;
      
      private var §[!4§:int;
      
      private var §"]§:Boolean;
      
      private var §3"$§:Boolean;
      
      private var §%!0§:Boolean;
      
      private var §%4§:Object;
      
      private var §"!]§:Boolean = false;
      
      public function §8"s§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§3f§ = param1;
         this.§6"?§ = param2;
         this.§[!4§ = param3;
         this.§"]§ = param4;
         this.§3"$§ = param5;
         this.§%!0§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§3f§)
         {
            this.§3f§.dispose();
         }
         this.§<#;§(null);
         super.dispose();
      }
      
      public function §<#;§(param1:Object) : void
      {
         if(this.§%4§ == null && param1 != null)
         {
            §3#J§.§2!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
         }
         if(param1 == null)
         {
            §3#J§.§2!C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
         }
         this.§%4§ = param1;
      }
      
      private function §%!b§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§"!]§ = true;
         if(param1 != null)
         {
            this.§<#;§(param1);
         }
      }
      
      public function get §[?§() : Boolean
      {
         return this.§%!0§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6#B§(param1);
         return this.§3f§;
      }
      
      override public function get root() : §&v§.Texture
      {
         return this;
      }
      
      private function §6#B§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§"!]§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§%4§ as BitmapData;
         var _loc3_:ByteArray = this.§%4§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§6"?§,this.§[!4§,Context3DTextureFormat.BGRA,this.§%!0§);
            §&v§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§"]§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§6"?§,this.§[!4§,_loc5_,this.§%!0§);
            §&v§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§3f§ = _loc4_;
         this.§"!]§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§6"?§;
      }
      
      override public function get height() : Number
      {
         return this.§[!4§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§"]§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3"$§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%4§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
