package §?7§
{
   import §+!F§.§1!D§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §99§ extends §?7§.Texture
   {
       
      
      private var §03§:TextureBase;
      
      private var §=!c§:int;
      
      private var §+B§:int;
      
      private var §+C§:Boolean;
      
      private var §8-§:Boolean;
      
      private var §"!K§:Boolean;
      
      private var §=]§:Object;
      
      private var §#!+§:Boolean = false;
      
      public function §99§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§03§ = param1;
         this.§=!c§ = param2;
         this.§+B§ = param3;
         this.§+C§ = param4;
         this.§8-§ = param5;
         this.§"!K§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§03§)
         {
            this.§03§.dispose();
         }
         this.§!D§(null);
         super.dispose();
      }
      
      public function §!D§(param1:Object) : void
      {
         if(this.§=]§ == null && param1 != null)
         {
            §1!D§.§7!T§.addEventListener(Event.CONTEXT3D_CREATE,this.§7!D§);
         }
         if(param1 == null)
         {
            §1!D§.§7!T§.removeEventListener(Event.CONTEXT3D_CREATE,this.§7!D§);
         }
         this.§=]§ = param1;
      }
      
      private function §7!D§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§#!+§ = true;
         if(param1 != null)
         {
            this.§!D§(param1);
         }
      }
      
      public function get §^@§() : Boolean
      {
         return this.§"!K§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§`w§(param1);
         return this.§03§;
      }
      
      override public function get root() : §?7§.Texture
      {
         return this;
      }
      
      private function §`w§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§#!+§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§=]§ as BitmapData;
         var _loc3_:ByteArray = this.§=]§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§=!c§,this.§+B§,Context3DTextureFormat.BGRA,this.§"!K§);
            §?7§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+C§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§=!c§,this.§+B§,_loc5_,this.§"!K§);
            §?7§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§03§ = _loc4_;
         this.§#!+§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§=!c§;
      }
      
      override public function get height() : Number
      {
         return this.§+B§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+C§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8-§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§=]§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
