package §[!A§
{
   import §@g§.§4!@§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §=!M§ extends §[!A§.Texture
   {
       
      
      private var §4!3§:TextureBase;
      
      private var §]!E§:int;
      
      private var §+?§:int;
      
      private var §[c§:Boolean;
      
      private var §8E§:Boolean;
      
      private var §&!6§:Boolean;
      
      private var §[f§:Object;
      
      private var §7!A§:Boolean = false;
      
      public function §=!M§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§4!3§ = param1;
         this.§]!E§ = param2;
         this.§+?§ = param3;
         this.§[c§ = param4;
         this.§8E§ = param5;
         this.§&!6§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§4!3§)
         {
            this.§4!3§.dispose();
         }
         this.§[=§(null);
         super.dispose();
      }
      
      public function §[=§(param1:Object) : void
      {
         if(this.§[f§ == null && param1 != null)
         {
            §4!@§.§ C§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!?§);
         }
         if(param1 == null)
         {
            §4!@§.§ C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!?§);
         }
         this.§[f§ = param1;
      }
      
      private function §#!?§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§7!A§ = true;
         if(param1 != null)
         {
            this.§[=§(param1);
         }
      }
      
      public function get §"-§() : Boolean
      {
         return this.§&!6§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§7_§(param1);
         return this.§4!3§;
      }
      
      override public function get root() : §[!A§.Texture
      {
         return this;
      }
      
      private function §7_§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§7!A§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§[f§ as BitmapData;
         var _loc3_:ByteArray = this.§[f§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§]!E§,this.§+?§,Context3DTextureFormat.BGRA,this.§&!6§);
            §[!A§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§[c§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§]!E§,this.§+?§,_loc5_,this.§&!6§);
            §[!A§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§4!3§ = _loc4_;
         this.§7!A§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§]!E§;
      }
      
      override public function get height() : Number
      {
         return this.§+?§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§[c§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8E§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§[f§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
