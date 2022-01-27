package §0l§
{
   import §5J§.§>$§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class § >§ extends §0l§.Texture
   {
       
      
      private var §8Z§:TextureBase;
      
      private var §#!6§:int;
      
      private var §&r§:int;
      
      private var §4]§:Boolean;
      
      private var §&!@§:Boolean;
      
      private var §;^§:Boolean;
      
      private var §;y§:Object;
      
      private var § <§:Boolean = false;
      
      public function § >§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§8Z§ = param1;
         this.§#!6§ = param2;
         this.§&r§ = param3;
         this.§4]§ = param4;
         this.§&!@§ = param5;
         this.§;^§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§8Z§)
         {
            this.§8Z§.dispose();
         }
         this.§`=§(null);
         super.dispose();
      }
      
      public function §`=§(param1:Object) : void
      {
         if(this.§;y§ == null && param1 != null)
         {
            §>$§.§-U§.addEventListener(Event.CONTEXT3D_CREATE,this.§8x§);
         }
         if(param1 == null)
         {
            §>$§.§-U§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8x§);
         }
         this.§;y§ = param1;
      }
      
      private function §8x§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§ <§ = true;
         if(param1 != null)
         {
            this.§`=§(param1);
         }
      }
      
      public function get §9L§() : Boolean
      {
         return this.§;^§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§0E§(param1);
         return this.§8Z§;
      }
      
      override public function get root() : §0l§.Texture
      {
         return this;
      }
      
      private function §0E§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§ <§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§;y§ as BitmapData;
         var _loc3_:ByteArray = this.§;y§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§#!6§,this.§&r§,Context3DTextureFormat.BGRA,this.§;^§);
            §0l§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§4]§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§#!6§,this.§&r§,_loc5_,this.§;^§);
            §0l§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§8Z§ = _loc4_;
         this.§ <§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§#!6§;
      }
      
      override public function get height() : Number
      {
         return this.§&r§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4]§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&!@§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§;y§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
