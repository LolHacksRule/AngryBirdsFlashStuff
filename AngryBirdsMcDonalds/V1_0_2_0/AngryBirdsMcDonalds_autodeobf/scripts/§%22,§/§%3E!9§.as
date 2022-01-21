package §",§
{
   import §4!$§.§<!2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §>!9§ extends §",§.Texture
   {
       
      
      private var §8%§:TextureBase;
      
      private var §;a§:int;
      
      private var §"[§:int;
      
      private var §+'§:Boolean;
      
      private var §2!R§:Boolean;
      
      private var §0[§:Boolean;
      
      private var §0F§:Object;
      
      private var §^A§:Boolean = false;
      
      public function §>!9§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§8%§ = param1;
         this.§;a§ = param2;
         this.§"[§ = param3;
         this.§+'§ = param4;
         this.§2!R§ = param5;
         this.§0[§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§8%§)
         {
            this.§8%§.dispose();
         }
         this.§8Z§(null);
         super.dispose();
      }
      
      public function §8Z§(param1:Object) : void
      {
         if(this.§0F§ == null && param1 != null)
         {
            §<!2§.§[!]§.addEventListener(Event.CONTEXT3D_CREATE,this.§&>§);
         }
         if(param1 == null)
         {
            §<!2§.§[!]§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&>§);
         }
         this.§0F§ = param1;
      }
      
      private function §&>§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§^A§ = true;
         if(param1 != null)
         {
            this.§8Z§(param1);
         }
      }
      
      public function get §9+§() : Boolean
      {
         return this.§0[§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§<q§(param1);
         return this.§8%§;
      }
      
      override public function get root() : §",§.Texture
      {
         return this;
      }
      
      private function §<q§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§^A§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§0F§ as BitmapData;
         var _loc3_:ByteArray = this.§0F§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§;a§,this.§"[§,Context3DTextureFormat.BGRA,this.§0[§);
            §",§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+'§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§;a§,this.§"[§,_loc5_,this.§0[§);
            §",§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§8%§ = _loc4_;
         this.§^A§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§;a§;
      }
      
      override public function get height() : Number
      {
         return this.§"[§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2!R§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0F§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
