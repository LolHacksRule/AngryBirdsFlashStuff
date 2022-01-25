package §#!a§
{
   import §+R§.§0O§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class § f§ extends §#!a§.Texture
   {
       
      
      private var § !O§:TextureBase;
      
      private var §=$§:int;
      
      private var §1T§:int;
      
      private var § try§:Boolean;
      
      private var §5!W§:Boolean;
      
      private var §;k§:Boolean;
      
      private var §4!§:Object;
      
      private var §8!4§:Boolean = false;
      
      public function § f§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§ !O§ = param1;
         this.§=$§ = param2;
         this.§1T§ = param3;
         this.§ try§ = param4;
         this.§5!W§ = param5;
         this.§;k§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§ !O§)
         {
            this.§ !O§.dispose();
         }
         this.§%e§(null);
         super.dispose();
      }
      
      public function §%e§(param1:Object) : void
      {
         if(this.§4!§ == null && param1 != null)
         {
            §0O§.§=&§.addEventListener(Event.CONTEXT3D_CREATE,this.§-b§);
         }
         if(param1 == null)
         {
            §0O§.§=&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-b§);
         }
         this.§4!§ = param1;
      }
      
      private function §-b§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8!4§ = true;
         if(param1 != null)
         {
            this.§%e§(param1);
         }
      }
      
      public function get §4!P§() : Boolean
      {
         return this.§;k§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§9!,§(param1);
         return this.§ !O§;
      }
      
      override public function get root() : §#!a§.Texture
      {
         return this;
      }
      
      private function §9!,§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§8!4§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§4!§ as BitmapData;
         var _loc3_:ByteArray = this.§4!§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§=$§,this.§1T§,Context3DTextureFormat.BGRA,this.§;k§);
            §#!a§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§ try§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§=$§,this.§1T§,_loc5_,this.§;k§);
            §#!a§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§ !O§ = _loc4_;
         this.§8!4§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§=$§;
      }
      
      override public function get height() : Number
      {
         return this.§1T§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§ try§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5!W§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§4!§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
