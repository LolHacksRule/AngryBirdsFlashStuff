package §_-z4§
{
   import §_-0Ea§.§_-AY§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §_-Y6§ extends §_-z4§.Texture
   {
       
      
      private var §_-yh§:TextureBase;
      
      private var §_-ux§:int;
      
      private var §_-09f§:int;
      
      private var §_-AE§:Boolean;
      
      private var §_-XA§:Boolean;
      
      private var §_-8r§:Boolean;
      
      private var §_-WB§:Object;
      
      private var §_-rB§:Boolean = false;
      
      public function §_-Y6§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§_-yh§ = param1;
         this.§_-ux§ = param2;
         this.§_-09f§ = param3;
         this.§_-AE§ = param4;
         this.§_-XA§ = param5;
         this.§_-8r§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§_-yh§)
         {
            this.§_-yh§.dispose();
         }
         this.§_-32§(null);
         super.dispose();
      }
      
      public function §_-32§(param1:Object) : void
      {
         if(this.§_-WB§ == null && param1 != null)
         {
            §_-AY§.§_-un§.addEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
         }
         if(param1 == null)
         {
            §_-AY§.§_-un§.removeEventListener(Event.CONTEXT3D_CREATE,this.§_-Hs§);
         }
         this.§_-WB§ = param1;
      }
      
      private function §_-Hs§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§_-rB§ = true;
         if(param1 != null)
         {
            this.§_-32§(param1);
         }
      }
      
      public function get §_-ww§() : Boolean
      {
         return this.§_-8r§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§_-ma§(param1);
         return this.§_-yh§;
      }
      
      override public function get root() : §_-z4§.Texture
      {
         return this;
      }
      
      private function §_-ma§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§_-rB§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§_-WB§ as BitmapData;
         var _loc3_:ByteArray = this.§_-WB§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§_-ux§,this.§_-09f§,Context3DTextureFormat.BGRA,this.§_-8r§);
            §_-z4§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§_-AE§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§_-ux§,this.§_-09f§,_loc5_,this.§_-8r§);
            §_-z4§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§_-yh§ = _loc4_;
         this.§_-rB§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§_-ux§;
      }
      
      override public function get height() : Number
      {
         return this.§_-09f§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-AE§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-XA§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§_-WB§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
