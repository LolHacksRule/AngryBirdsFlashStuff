package §2!-§
{
   import § !+§.§0Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §0!1§ extends §2!-§.Texture
   {
       
      
      private var §^'§:TextureBase;
      
      private var §?l§:int;
      
      private var §+G§:int;
      
      private var §8l§:Boolean;
      
      private var §<!8§:Boolean;
      
      private var §`z§:Boolean;
      
      private var §&!7§:Object;
      
      private var §4X§:Boolean = false;
      
      public function §0!1§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§^'§ = param1;
         this.§?l§ = param2;
         this.§+G§ = param3;
         this.§8l§ = param4;
         this.§<!8§ = param5;
         this.§`z§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§^'§)
         {
            this.§^'§.dispose();
         }
         this.§=$§(null);
         super.dispose();
      }
      
      public function §=$§(param1:Object) : void
      {
         if(this.§&!7§ == null && param1 != null)
         {
            §0Z§.§4J§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
         }
         if(param1 == null)
         {
            §0Z§.§4J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
         }
         this.§&!7§ = param1;
      }
      
      private function §3!%§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§4X§ = true;
         if(param1 != null)
         {
            this.§=$§(param1);
         }
      }
      
      public function get §&y§() : Boolean
      {
         return this.§`z§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§=0§(param1);
         return this.§^'§;
      }
      
      override public function get root() : §2!-§.Texture
      {
         return this;
      }
      
      private function §=0§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§4X§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&!7§ as BitmapData;
         var _loc3_:ByteArray = this.§&!7§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§?l§,this.§+G§,Context3DTextureFormat.BGRA,this.§`z§);
            §2!-§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§8l§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§?l§,this.§+G§,_loc5_,this.§`z§);
            §2!-§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§^'§ = _loc4_;
         this.§4X§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§?l§;
      }
      
      override public function get height() : Number
      {
         return this.§+G§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8l§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!7§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
