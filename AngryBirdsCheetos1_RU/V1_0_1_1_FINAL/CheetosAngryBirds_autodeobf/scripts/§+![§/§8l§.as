package §+![§
{
   import §94§.§&!7§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §8l§ extends §+![§.Texture
   {
       
      
      private var §<!]§:TextureBase;
      
      private var §=!T§:int;
      
      private var §&n§:int;
      
      private var §;u§:Boolean;
      
      private var §4&§:Boolean;
      
      private var §=O§:Boolean;
      
      private var §&!8§:Object;
      
      private var §[0§:Boolean = false;
      
      public function §8l§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§<!]§ = param1;
         this.§=!T§ = param2;
         this.§&n§ = param3;
         this.§;u§ = param4;
         this.§4&§ = param5;
         this.§=O§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§<!]§)
         {
            this.§<!]§.dispose();
         }
         this.§5!X§(null);
         super.dispose();
      }
      
      public function §5!X§(param1:Object) : void
      {
         if(this.§&!8§ == null && param1 != null)
         {
            §&!7§.§>!M§.addEventListener(Event.CONTEXT3D_CREATE,this.§2![§);
         }
         if(param1 == null)
         {
            §&!7§.§>!M§.removeEventListener(Event.CONTEXT3D_CREATE,this.§2![§);
         }
         this.§&!8§ = param1;
      }
      
      private function §2![§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§[0§ = true;
         if(param1 != null)
         {
            this.§5!X§(param1);
         }
      }
      
      public function get §[_§() : Boolean
      {
         return this.§=O§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§3N§(param1);
         return this.§<!]§;
      }
      
      override public function get root() : §+![§.Texture
      {
         return this;
      }
      
      private function §3N§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§[0§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&!8§ as BitmapData;
         var _loc3_:ByteArray = this.§&!8§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§=!T§,this.§&n§,Context3DTextureFormat.BGRA,this.§=O§);
            §+![§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§;u§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§=!T§,this.§&n§,_loc5_,this.§=O§);
            §+![§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§<!]§ = _loc4_;
         this.§[0§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§=!T§;
      }
      
      override public function get height() : Number
      {
         return this.§&n§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;u§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§4&§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!8§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
