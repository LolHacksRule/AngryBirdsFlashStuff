package §@!#§
{
   import §-!+§.§6"6§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §[t§ extends §@!#§.Texture
   {
       
      
      private var §&!^§:TextureBase;
      
      private var §+!C§:int;
      
      private var §1z§:int;
      
      private var §^#§:Boolean;
      
      private var § !j§:Boolean;
      
      private var §^B§:Boolean;
      
      private var §,i§:Object;
      
      private var §+",§:Boolean = false;
      
      public function §[t§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§&!^§ = param1;
         this.§+!C§ = param2;
         this.§1z§ = param3;
         this.§^#§ = param4;
         this.§ !j§ = param5;
         this.§^B§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§&!^§)
         {
            this.§&!^§.dispose();
         }
         this.§,0§(null);
         super.dispose();
      }
      
      public function §,0§(param1:Object) : void
      {
         if(this.§,i§ == null && param1 != null)
         {
            §6"6§.§^F§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!K§);
         }
         if(param1 == null)
         {
            §6"6§.§^F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!K§);
         }
         this.§,i§ = param1;
      }
      
      private function §'!K§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+",§ = true;
         if(param1 != null)
         {
            this.§,0§(param1);
         }
      }
      
      public function get §%W§() : Boolean
      {
         return this.§^B§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§[K§(param1);
         return this.§&!^§;
      }
      
      override public function get root() : §@!#§.Texture
      {
         return this;
      }
      
      private function §[K§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§+",§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§,i§ as BitmapData;
         var _loc3_:ByteArray = this.§,i§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§+!C§,this.§1z§,Context3DTextureFormat.BGRA,this.§^B§);
            §@!#§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§^#§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§+!C§,this.§1z§,_loc5_,this.§^B§);
            §@!#§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§&!^§ = _loc4_;
         this.§+",§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§+!C§;
      }
      
      override public function get height() : Number
      {
         return this.§1z§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^#§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§ !j§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,i§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
