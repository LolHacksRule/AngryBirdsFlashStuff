package §%?§
{
   import §@!%§.§+8§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §4!-§ extends §%?§.Texture
   {
       
      
      private var §&[§:TextureBase;
      
      private var §6#§:int;
      
      private var §5m§:int;
      
      private var §,!§:Boolean;
      
      private var §]H§:Boolean;
      
      private var §-!"§:Boolean;
      
      private var §8n§:Object;
      
      private var §<a§:Boolean = false;
      
      public function §4!-§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§&[§ = param1;
         this.§6#§ = param2;
         this.§5m§ = param3;
         this.§,!§ = param4;
         this.§]H§ = param5;
         this.§-!"§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§&[§)
         {
            this.§&[§.dispose();
         }
         this.§=r§(null);
         super.dispose();
      }
      
      public function §=r§(param1:Object) : void
      {
         if(this.§8n§ == null && param1 != null)
         {
            §+8§.§-2§.addEventListener(Event.CONTEXT3D_CREATE,this.§`4§);
         }
         if(param1 == null)
         {
            §+8§.§-2§.removeEventListener(Event.CONTEXT3D_CREATE,this.§`4§);
         }
         this.§8n§ = param1;
      }
      
      private function §`4§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§<a§ = true;
         if(param1 != null)
         {
            this.§=r§(param1);
         }
      }
      
      public function get §3!&§() : Boolean
      {
         return this.§-!"§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§0J§(param1);
         return this.§&[§;
      }
      
      override public function get root() : §%?§.Texture
      {
         return this;
      }
      
      private function §0J§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§<a§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§8n§ as BitmapData;
         var _loc3_:ByteArray = this.§8n§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§6#§,this.§5m§,Context3DTextureFormat.BGRA,this.§-!"§);
            §%?§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§,!§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§6#§,this.§5m§,_loc5_,this.§-!"§);
            §%?§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§&[§ = _loc4_;
         this.§<a§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§6#§;
      }
      
      override public function get height() : Number
      {
         return this.§5m§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,!§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]H§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8n§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
