package §#!6§
{
   import §!v§.§7[§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §1i§ extends §#!6§.Texture
   {
       
      
      private var §&J§:TextureBase;
      
      private var §+L§:int;
      
      private var §<!@§:int;
      
      private var §?!^§:Boolean;
      
      private var §!D§:Boolean;
      
      private var §#!?§:Boolean;
      
      private var §!R§:Object;
      
      private var §48§:Boolean = false;
      
      public function §1i§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§&J§ = param1;
         this.§+L§ = param2;
         this.§<!@§ = param3;
         this.§?!^§ = param4;
         this.§!D§ = param5;
         this.§#!?§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§&J§)
         {
            this.§&J§.dispose();
         }
         this.§19§(null);
         super.dispose();
      }
      
      public function §19§(param1:Object) : void
      {
         if(this.§!R§ == null && param1 != null)
         {
            §7[§.§&!J§.addEventListener(Event.CONTEXT3D_CREATE,this.§+!%§);
         }
         if(param1 == null)
         {
            §7[§.§&!J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§+!%§);
         }
         this.§!R§ = param1;
      }
      
      private function §+!%§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§48§ = true;
         if(param1 != null)
         {
            this.§19§(param1);
         }
      }
      
      public function get §!,§() : Boolean
      {
         return this.§#!?§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§9$§(param1);
         return this.§&J§;
      }
      
      override public function get root() : §#!6§.Texture
      {
         return this;
      }
      
      private function §9$§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§48§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§!R§ as BitmapData;
         var _loc3_:ByteArray = this.§!R§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§+L§,this.§<!@§,Context3DTextureFormat.BGRA,this.§#!?§);
            §#!6§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§?!^§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§+L§,this.§<!@§,_loc5_,this.§#!?§);
            §#!6§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§&J§ = _loc4_;
         this.§48§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§+L§;
      }
      
      override public function get height() : Number
      {
         return this.§<!@§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?!^§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§!D§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§!R§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
