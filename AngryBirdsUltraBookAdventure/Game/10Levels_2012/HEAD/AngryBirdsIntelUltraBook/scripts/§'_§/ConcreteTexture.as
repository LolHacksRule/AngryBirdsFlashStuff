package §'_§
{
   import §"$§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class ConcreteTexture extends §'_§.Texture
   {
       
      
      private var §?;§:TextureBase;
      
      private var §^B§:int;
      
      private var §+!d§:int;
      
      private var §6!d§:Boolean;
      
      private var §1J§:Boolean;
      
      private var §"!A§:Boolean;
      
      private var §@! §:Object;
      
      private var §4K§:Boolean = false;
      
      public function ConcreteTexture(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§?;§ = param1;
         this.§^B§ = param2;
         this.§+!d§ = param3;
         this.§6!d§ = param4;
         this.§1J§ = param5;
         this.§"!A§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§?;§)
         {
            this.§?;§.dispose();
         }
         this.§&!`§(null);
         super.dispose();
      }
      
      public function §&!`§(param1:Object) : void
      {
         if(this.§@! § == null && param1 != null)
         {
            Starling.§'!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
         }
         if(param1 == null)
         {
            Starling.§'!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
         }
         this.§@! § = param1;
      }
      
      private function §>!R§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§4K§ = true;
         if(param1 != null)
         {
            this.§&!`§(param1);
         }
      }
      
      public function get §2!§() : Boolean
      {
         return this.§"!A§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§`!E§(param1);
         return this.§?;§;
      }
      
      override public function get root() : §'_§.Texture
      {
         return this;
      }
      
      private function §`!E§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§4K§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@! § as BitmapData;
         var _loc3_:ByteArray = this.§@! § as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§^B§,this.§+!d§,Context3DTextureFormat.BGRA,this.§"!A§);
            Texture.uploadBitmapData(_loc4_,_loc2_,this.§6!d§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§^B§,this.§+!d§,_loc5_,this.§"!A§);
            Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§?;§ = _loc4_;
         this.§4K§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§^B§;
      }
      
      override public function get height() : Number
      {
         return this.§+!d§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6!d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1J§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@! § as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
