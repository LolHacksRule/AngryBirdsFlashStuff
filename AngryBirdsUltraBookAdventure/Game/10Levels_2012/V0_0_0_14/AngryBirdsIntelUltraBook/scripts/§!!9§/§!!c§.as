package §!!9§
{
   import §@4§.§,!]§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §!!c§ extends §!!9§.Texture
   {
       
      
      private var §1!3§:TextureBase;
      
      private var §>!D§:int;
      
      private var §7!3§:int;
      
      private var §+!d§:Boolean;
      
      private var §5N§:Boolean;
      
      private var §7![§:Boolean;
      
      private var §0A§:Object;
      
      private var §@!e§:Boolean = false;
      
      public function §!!c§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§1!3§ = param1;
         this.§>!D§ = param2;
         this.§7!3§ = param3;
         this.§+!d§ = param4;
         this.§5N§ = param5;
         this.§7![§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§1!3§)
         {
            this.§1!3§.dispose();
         }
         this.§`!r§(null);
         super.dispose();
      }
      
      public function §`!r§(param1:Object) : void
      {
         if(this.§0A§ == null && param1 != null)
         {
            §,!]§.§!9§.addEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
         }
         if(param1 == null)
         {
            §,!]§.§!9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
         }
         this.§0A§ = param1;
      }
      
      private function §,!f§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§@!e§ = true;
         if(param1 != null)
         {
            this.§`!r§(param1);
         }
      }
      
      public function get §,!R§() : Boolean
      {
         return this.§7![§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§+!L§(param1);
         return this.§1!3§;
      }
      
      override public function get root() : §!!9§.Texture
      {
         return this;
      }
      
      private function §+!L§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§@!e§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§0A§ as BitmapData;
         var _loc3_:ByteArray = this.§0A§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§>!D§,this.§7!3§,Context3DTextureFormat.BGRA,this.§7![§);
            §!!9§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§+!d§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§>!D§,this.§7!3§,_loc5_,this.§7![§);
            §!!9§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§1!3§ = _loc4_;
         this.§@!e§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§>!D§;
      }
      
      override public function get height() : Number
      {
         return this.§7!3§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5N§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0A§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
