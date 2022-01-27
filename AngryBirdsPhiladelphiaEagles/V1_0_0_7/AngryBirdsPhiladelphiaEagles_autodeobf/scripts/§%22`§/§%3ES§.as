package §"`§
{
   import §>w§.;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §>S§ extends §"`§.Texture
   {
       
      
      private var §^[§:TextureBase;
      
      private var §@k§:int;
      
      private var §?&§:int;
      
      private var §=9§:Boolean;
      
      private var §-!J§:Boolean;
      
      private var §5[§:Boolean;
      
      private var §^o§:Object;
      
      private var §!_§:Boolean = false;
      
      public function §>S§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§^[§ = param1;
         this.§@k§ = param2;
         this.§?&§ = param3;
         this.§=9§ = param4;
         this.§-!J§ = param5;
         this.§5[§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§^[§)
         {
            this.§^[§.dispose();
         }
         this.§-1§(null);
         super.dispose();
      }
      
      public function §-1§(param1:Object) : void
      {
         if(this.§^o§ == null && param1 != null)
         {
            §#0§.§#4§.addEventListener(Event.CONTEXT3D_CREATE,this.§[?§);
         }
         if(param1 == null)
         {
            §#0§.§#4§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[?§);
         }
         this.§^o§ = param1;
      }
      
      private function §[?§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§!_§ = true;
         if(param1 != null)
         {
            this.§-1§(param1);
         }
      }
      
      public function get §?!'§() : Boolean
      {
         return this.§5[§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§#!3§(param1);
         return this.§^[§;
      }
      
      override public function get root() : §"`§.Texture
      {
         return this;
      }
      
      private function §#!3§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§!_§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§^o§ as BitmapData;
         var _loc3_:ByteArray = this.§^o§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§@k§,this.§?&§,Context3DTextureFormat.BGRA,this.§5[§);
            §"`§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§=9§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§@k§,this.§?&§,_loc5_,this.§5[§);
            §"`§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§^[§ = _loc4_;
         this.§!_§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§@k§;
      }
      
      override public function get height() : Number
      {
         return this.§?&§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§=9§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§-!J§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^o§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
