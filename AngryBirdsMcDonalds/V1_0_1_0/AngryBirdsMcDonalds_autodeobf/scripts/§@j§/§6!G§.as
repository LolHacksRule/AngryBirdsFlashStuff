package §@j§
{
   import §"v§.§5!T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §6!G§ extends §@j§.Texture
   {
       
      
      private var §@0§:TextureBase;
      
      private var §0F§:int;
      
      private var §;;§:int;
      
      private var §8!U§:Boolean;
      
      private var §7h§:Boolean;
      
      private var §[1§:Boolean;
      
      private var §[z§:Object;
      
      private var §7!D§:Boolean = false;
      
      public function §6!G§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§@0§ = param1;
         this.§0F§ = param2;
         this.§;;§ = param3;
         this.§8!U§ = param4;
         this.§7h§ = param5;
         this.§[1§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§@0§)
         {
            this.§@0§.dispose();
         }
         this.§6!l§(null);
         super.dispose();
      }
      
      public function §6!l§(param1:Object) : void
      {
         if(this.§[z§ == null && param1 != null)
         {
            §5!T§.§!e§.addEventListener(Event.CONTEXT3D_CREATE,this.§0!^§);
         }
         if(param1 == null)
         {
            §5!T§.§!e§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0!^§);
         }
         this.§[z§ = param1;
      }
      
      private function §0!^§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§7!D§ = true;
         if(param1 != null)
         {
            this.§6!l§(param1);
         }
      }
      
      public function get §&!Y§() : Boolean
      {
         return this.§[1§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§"!4§(param1);
         return this.§@0§;
      }
      
      override public function get root() : §@j§.Texture
      {
         return this;
      }
      
      private function §"!4§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§7!D§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§[z§ as BitmapData;
         var _loc3_:ByteArray = this.§[z§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§0F§,this.§;;§,Context3DTextureFormat.BGRA,this.§[1§);
            §@j§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§8!U§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§0F§,this.§;;§,_loc5_,this.§[1§);
            §@j§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§@0§ = _loc4_;
         this.§7!D§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§0F§;
      }
      
      override public function get height() : Number
      {
         return this.§;;§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8!U§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§7h§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§[z§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
