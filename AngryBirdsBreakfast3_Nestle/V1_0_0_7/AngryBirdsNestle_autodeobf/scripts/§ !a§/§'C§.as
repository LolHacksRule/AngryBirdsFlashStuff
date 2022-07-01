package § !a§
{
   import §`V§.§;6§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §'C§ extends § !a§.Texture
   {
       
      
      private var §?!N§:TextureBase;
      
      private var §`!p§:int;
      
      private var §<c§:int;
      
      private var §+6§:Boolean;
      
      private var §if §:Boolean;
      
      private var §+!i§:Boolean;
      
      private var §7p§:Object;
      
      private var §,;§:Boolean = false;
      
      public function §'C§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?!N§ = param1;
         this.§`!p§ = param2;
         this.§<c§ = param3;
         this.§+6§ = param4;
         this.§if § = param5;
         this.§+!i§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?!N§)
         {
            this.§?!N§.dispose();
         }
         this.§64§(null);
         super.dispose();
      }
      
      public function §64§(param1:Object) : void
      {
         if(this.§7p§ == null && param1 != null)
         {
            §;6§.§@X§.addEventListener(Event.CONTEXT3D_CREATE,this.§?! §);
         }
         if(param1 == null)
         {
            §;6§.§@X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?! §);
         }
         this.§7p§ = param1;
      }
      
      private function §?! §(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§,;§ = true;
         if(param1 != null)
         {
            this.§64§(param1);
         }
      }
      
      public function get §^8§() : Boolean
      {
         return this.§+!i§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§`D§(param1);
         return this.§?!N§;
      }
      
      override public function get root() : § !a§.Texture
      {
         return this;
      }
      
      private function §`D§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§,;§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§7p§ as BitmapData;
         var _loc3_:ByteArray = this.§7p§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§`!p§,this.§<c§,Context3DTextureFormat.BGRA,this.§+!i§);
            § !a§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+6§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§`!p§,this.§<c§,_loc5_,this.§+!i§);
            § !a§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?!N§ = _loc4_;
         this.§,;§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§`!p§;
      }
      
      override public function get height() : Number
      {
         return this.§<c§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+6§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§if §;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§7p§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
