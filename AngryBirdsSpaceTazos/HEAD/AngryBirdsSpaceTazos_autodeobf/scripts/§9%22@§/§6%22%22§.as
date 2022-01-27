package §9"@§
{
   import §'!B§.§8T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §6""§ extends §9"@§.Texture
   {
       
      
      private var §-%§:TextureBase;
      
      private var §]!d§:int;
      
      private var §!"-§:int;
      
      private var §'!&§:Boolean;
      
      private var §>"7§:Boolean;
      
      private var §@!v§:Boolean;
      
      private var §1o§:Object;
      
      private var §&e§:Boolean = false;
      
      public function §6""§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§-%§ = param1;
         this.§]!d§ = param2;
         this.§!"-§ = param3;
         this.§'!&§ = param4;
         this.§>"7§ = param5;
         this.§@!v§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§-%§)
         {
            this.§-%§.dispose();
         }
         this.§2!N§(null);
         super.dispose();
      }
      
      public function §2!N§(param1:Object) : void
      {
         if(this.§1o§ == null && param1 != null)
         {
            §8T§.§5!Y§.addEventListener(Event.CONTEXT3D_CREATE,this.§"!=§);
         }
         if(param1 == null)
         {
            §8T§.§5!Y§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"!=§);
         }
         this.§1o§ = param1;
      }
      
      private function §"!=§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&e§ = true;
         if(param1 != null)
         {
            this.§2!N§(param1);
         }
      }
      
      public function get §@U§() : Boolean
      {
         return this.§@!v§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§3D§(param1);
         return this.§-%§;
      }
      
      override public function get root() : §9"@§.Texture
      {
         return this;
      }
      
      private function §3D§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§&e§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§1o§ as BitmapData;
         var _loc3_:ByteArray = this.§1o§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§]!d§,this.§!"-§,Context3DTextureFormat.BGRA,this.§@!v§);
            §9"@§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§'!&§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§]!d§,this.§!"-§,_loc5_,this.§@!v§);
            §9"@§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§-%§ = _loc4_;
         this.§&e§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§]!d§;
      }
      
      override public function get height() : Number
      {
         return this.§!"-§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'!&§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>"7§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§1o§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
