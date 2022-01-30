package §^z§
{
   import §5!W§.§>P§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class § o§ extends §^z§.Texture
   {
       
      
      private var §;G§:TextureBase;
      
      private var §?!<§:int;
      
      private var §1+§:int;
      
      private var §1!S§:Boolean;
      
      private var §;!d§:Boolean;
      
      private var §2!J§:Boolean;
      
      private var §@r§:Object;
      
      private var §=!z§:Boolean = false;
      
      public function § o§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§;G§ = param1;
         this.§?!<§ = param2;
         this.§1+§ = param3;
         this.§1!S§ = param4;
         this.§;!d§ = param5;
         this.§2!J§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§;G§)
         {
            this.§;G§.dispose();
         }
         this.§[p§(null);
         super.dispose();
      }
      
      public function §[p§(param1:Object) : void
      {
         if(this.§@r§ == null && param1 != null)
         {
            §>P§.§;_§.addEventListener(Event.CONTEXT3D_CREATE,this.§ !<§);
         }
         if(param1 == null)
         {
            §>P§.§;_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !<§);
         }
         this.§@r§ = param1;
      }
      
      private function § !<§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§=!z§ = true;
         if(param1 != null)
         {
            this.§[p§(param1);
         }
      }
      
      public function get §+!X§() : Boolean
      {
         return this.§2!J§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§;B§(param1);
         return this.§;G§;
      }
      
      override public function get root() : §^z§.Texture
      {
         return this;
      }
      
      private function §;B§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§=!z§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@r§ as BitmapData;
         var _loc3_:ByteArray = this.§@r§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§?!<§,this.§1+§,Context3DTextureFormat.BGRA,this.§2!J§);
            §^z§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§1!S§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§?!<§,this.§1+§,_loc5_,this.§2!J§);
            §^z§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§;G§ = _loc4_;
         this.§=!z§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§?!<§;
      }
      
      override public function get height() : Number
      {
         return this.§1+§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§1!S§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;!d§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@r§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
