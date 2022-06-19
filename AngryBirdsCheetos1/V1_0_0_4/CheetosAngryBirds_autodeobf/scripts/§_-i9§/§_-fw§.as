package §_-i9§
{
   import §_-KM§.§_-0A§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §_-fw§ extends §_-i9§.Texture
   {
       
      
      private var §_-iC§:TextureBase;
      
      private var §_-LO§:int;
      
      private var §_-Fy§:int;
      
      private var §_-Y4§:Boolean;
      
      private var §_-ra§:Boolean;
      
      private var §_-Xa§:Boolean;
      
      private var §_-fo§:Object;
      
      private var §_-vj§:Boolean = false;
      
      public function §_-fw§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§_-iC§ = param1;
         this.§_-LO§ = param2;
         this.§_-Fy§ = param3;
         this.§_-Y4§ = param4;
         this.§_-ra§ = param5;
         this.§_-Xa§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§_-iC§)
         {
            this.§_-iC§.dispose();
         }
         this.§_-V9§(null);
         super.dispose();
      }
      
      public function §_-V9§(param1:Object) : void
      {
         if(this.§_-fo§ == null && param1 != null)
         {
            §_-0A§.§_-bz§.addEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§);
         }
         if(param1 == null)
         {
            §_-0A§.§_-bz§.removeEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§);
         }
         this.§_-fo§ = param1;
      }
      
      private function §_-DW§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§_-vj§ = true;
         if(param1 != null)
         {
            this.§_-V9§(param1);
         }
      }
      
      public function get §_-hw§() : Boolean
      {
         return this.§_-Xa§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§_-kf§(param1);
         return this.§_-iC§;
      }
      
      override public function get root() : §_-i9§.Texture
      {
         return this;
      }
      
      private function §_-kf§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§_-vj§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§_-fo§ as BitmapData;
         var _loc3_:ByteArray = this.§_-fo§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§_-LO§,this.§_-Fy§,Context3DTextureFormat.BGRA,this.§_-Xa§);
            §_-i9§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§_-Y4§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§_-LO§,this.§_-Fy§,_loc5_,this.§_-Xa§);
            §_-i9§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§_-iC§ = _loc4_;
         this.§_-vj§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§_-LO§;
      }
      
      override public function get height() : Number
      {
         return this.§_-Fy§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-Y4§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-ra§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§_-fo§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
