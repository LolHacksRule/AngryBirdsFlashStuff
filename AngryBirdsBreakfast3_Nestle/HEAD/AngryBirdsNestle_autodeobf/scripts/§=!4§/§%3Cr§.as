package §=!4§
{
   import §!!!§.§6!l§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §<r§ extends §=!4§.Texture
   {
       
      
      private var §?"2§:TextureBase;
      
      private var §!a§:int;
      
      private var §2!y§:int;
      
      private var §7S§:Boolean;
      
      private var §40§:Boolean;
      
      private var §^"$§:Boolean;
      
      private var §7!?§:Object;
      
      private var §'e§:Boolean = false;
      
      public function §<r§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?"2§ = param1;
         this.§!a§ = param2;
         this.§2!y§ = param3;
         this.§7S§ = param4;
         this.§40§ = param5;
         this.§^"$§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?"2§)
         {
            this.§?"2§.dispose();
         }
         this.§`!'§(null);
         super.dispose();
      }
      
      public function §`!'§(param1:Object) : void
      {
         if(this.§7!?§ == null && param1 != null)
         {
            §6!l§.§+J§.addEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
         }
         if(param1 == null)
         {
            §6!l§.§+J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'"1§);
         }
         this.§7!?§ = param1;
      }
      
      private function §'"1§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§'e§ = true;
         if(param1 != null)
         {
            this.§`!'§(param1);
         }
      }
      
      public function get §%!m§() : Boolean
      {
         return this.§^"$§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§&!%§(param1);
         return this.§?"2§;
      }
      
      override public function get root() : §=!4§.Texture
      {
         return this;
      }
      
      private function §&!%§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§'e§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§7!?§ as BitmapData;
         var _loc3_:ByteArray = this.§7!?§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§!a§,this.§2!y§,Context3DTextureFormat.BGRA,this.§^"$§);
            §=!4§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§7S§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§!a§,this.§2!y§,_loc5_,this.§^"$§);
            §=!4§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?"2§ = _loc4_;
         this.§'e§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§!a§;
      }
      
      override public function get height() : Number
      {
         return this.§2!y§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§7S§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§40§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§7!?§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
