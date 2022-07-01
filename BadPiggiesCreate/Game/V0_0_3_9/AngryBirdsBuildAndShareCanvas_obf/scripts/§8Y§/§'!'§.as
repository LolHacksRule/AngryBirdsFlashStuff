package §8Y§
{
   import §-N§.§=!]§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §'!'§ extends §8Y§.Texture
   {
       
      
      private var §>c§:TextureBase;
      
      private var §5!T§:int;
      
      private var §7X§:int;
      
      private var §,!?§:Boolean;
      
      private var §&y§:Boolean;
      
      private var §6F§:Boolean;
      
      private var §,!;§:Object;
      
      private var §[!h§:Boolean = false;
      
      public function §'!'§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§>c§ = param1;
         this.§5!T§ = param2;
         this.§7X§ = param3;
         this.§,!?§ = param4;
         this.§&y§ = param5;
         this.§6F§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§>c§)
         {
            this.§>c§.dispose();
         }
         this.§12§(null);
         super.dispose();
      }
      
      public function §12§(param1:Object) : void
      {
         if(this.§,!;§ == null && param1 != null)
         {
            §=!]§.§@§.addEventListener(Event.CONTEXT3D_CREATE,this.§0V§);
         }
         if(param1 == null)
         {
            §=!]§.§@§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0V§);
         }
         this.§,!;§ = param1;
      }
      
      private function §0V§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§[!h§ = true;
         if(param1 != null)
         {
            this.§12§(param1);
         }
      }
      
      public function get §@Y§() : Boolean
      {
         return this.§6F§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6!'§(param1);
         return this.§>c§;
      }
      
      override public function get root() : §8Y§.Texture
      {
         return this;
      }
      
      private function §6!'§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§[!h§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§,!;§ as BitmapData;
         var _loc3_:ByteArray = this.§,!;§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§5!T§,this.§7X§,Context3DTextureFormat.BGRA,this.§6F§);
            §8Y§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§,!?§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§5!T§,this.§7X§,_loc5_,this.§6F§);
            §8Y§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§>c§ = _loc4_;
         this.§[!h§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§5!T§;
      }
      
      override public function get height() : Number
      {
         return this.§7X§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,!?§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,!;§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
