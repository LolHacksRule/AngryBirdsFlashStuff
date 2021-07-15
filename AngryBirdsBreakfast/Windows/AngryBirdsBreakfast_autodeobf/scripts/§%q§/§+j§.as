package §%q§
{
   import §`!a§.§1"&§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §+j§ extends §%q§.Texture
   {
       
      
      private var §]e§:TextureBase;
      
      private var §<`§:int;
      
      private var §#!A§:int;
      
      private var §65§:Boolean;
      
      private var §>#§:Boolean;
      
      private var §?!o§:Boolean;
      
      private var §&"$§:Object;
      
      private var §8,§:Boolean = false;
      
      public function §+j§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§]e§ = param1;
         this.§<`§ = param2;
         this.§#!A§ = param3;
         this.§65§ = param4;
         this.§>#§ = param5;
         this.§?!o§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§]e§)
         {
            this.§]e§.dispose();
         }
         this.§^e§(null);
         super.dispose();
      }
      
      public function §^e§(param1:Object) : void
      {
         if(this.§&"$§ == null && param1 != null)
         {
            §1"&§.§1i§.addEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
         }
         if(param1 == null)
         {
            §1"&§.§1i§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
         }
         this.§&"$§ = param1;
      }
      
      private function §%;§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8,§ = true;
         if(param1 != null)
         {
            this.§^e§(param1);
         }
      }
      
      public function get §%"%§() : Boolean
      {
         return this.§?!o§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§ !9§(param1);
         return this.§]e§;
      }
      
      override public function get root() : §%q§.Texture
      {
         return this;
      }
      
      private function § !9§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§8,§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&"$§ as BitmapData;
         var _loc3_:ByteArray = this.§&"$§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§<`§,this.§#!A§,Context3DTextureFormat.BGRA,this.§?!o§);
            §%q§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§65§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§<`§,this.§#!A§,_loc5_,this.§?!o§);
            §%q§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§]e§ = _loc4_;
         this.§8,§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§<`§;
      }
      
      override public function get height() : Number
      {
         return this.§#!A§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§65§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>#§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&"$§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
