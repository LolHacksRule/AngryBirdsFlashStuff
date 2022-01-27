package §&"s§
{
   import § "-§.§6!R§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §#B§ extends §&"s§.Texture
   {
       
      
      private var §`!_§:TextureBase;
      
      private var §0"e§:int;
      
      private var §?!O§:int;
      
      private var §?"_§:Boolean;
      
      private var §8q§:Boolean;
      
      private var §+!H§:Boolean;
      
      private var §+3§:Object;
      
      private var §]O§:Boolean = false;
      
      public function §#B§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§`!_§ = param1;
         this.§0"e§ = param2;
         this.§?!O§ = param3;
         this.§?"_§ = param4;
         this.§8q§ = param5;
         this.§+!H§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§`!_§)
         {
            this.§`!_§.dispose();
         }
         this.§61§(null);
         super.dispose();
      }
      
      public function §61§(param1:Object) : void
      {
         if(this.§+3§ == null && param1 != null)
         {
            §6!R§.§+!d§.addEventListener(Event.CONTEXT3D_CREATE,this.§&"O§);
         }
         if(param1 == null)
         {
            §6!R§.§+!d§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&"O§);
         }
         this.§+3§ = param1;
      }
      
      private function §&"O§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§]O§ = true;
         if(param1 != null)
         {
            this.§61§(param1);
         }
      }
      
      public function get §7"[§() : Boolean
      {
         return this.§+!H§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§0!<§(param1);
         return this.§`!_§;
      }
      
      override public function get root() : §&"s§.Texture
      {
         return this;
      }
      
      private function §0!<§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§]O§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§+3§ as BitmapData;
         var _loc3_:ByteArray = this.§+3§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§0"e§,this.§?!O§,Context3DTextureFormat.BGRA,this.§+!H§);
            §&"s§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§?"_§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§0"e§,this.§?!O§,_loc5_,this.§+!H§);
            §&"s§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§`!_§ = _loc4_;
         this.§]O§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§0"e§;
      }
      
      override public function get height() : Number
      {
         return this.§?!O§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?"_§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8q§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+3§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
