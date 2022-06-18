package §+a§
{
   import §>N§.§"u§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §4K§ extends §+a§.Texture
   {
       
      
      private var §&!S§:TextureBase;
      
      private var §!!V§:int;
      
      private var §!`§:int;
      
      private var §5d§:Boolean;
      
      private var §>!T§:Boolean;
      
      private var §<!X§:Boolean;
      
      private var §+!X§:Object;
      
      private var §^!L§:Boolean = false;
      
      public function §4K§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§&!S§ = param1;
         this.§!!V§ = param2;
         this.§!`§ = param3;
         this.§5d§ = param4;
         this.§>!T§ = param5;
         this.§<!X§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§&!S§)
         {
            this.§&!S§.dispose();
         }
         this.§;t§(null);
         super.dispose();
      }
      
      public function §;t§(param1:Object) : void
      {
         if(this.§+!X§ == null && param1 != null)
         {
            §"u§.§-2§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!?§);
         }
         if(param1 == null)
         {
            §"u§.§-2§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!?§);
         }
         this.§+!X§ = param1;
      }
      
      private function §3!?§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§^!L§ = true;
         if(param1 != null)
         {
            this.§;t§(param1);
         }
      }
      
      public function get §2J§() : Boolean
      {
         return this.§<!X§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§?!E§(param1);
         return this.§&!S§;
      }
      
      override public function get root() : §+a§.Texture
      {
         return this;
      }
      
      private function §?!E§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§^!L§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§+!X§ as BitmapData;
         var _loc3_:ByteArray = this.§+!X§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§!!V§,this.§!`§,Context3DTextureFormat.BGRA,this.§<!X§);
            §+a§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§5d§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§!!V§,this.§!`§,_loc5_,this.§<!X§);
            §+a§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§&!S§ = _loc4_;
         this.§^!L§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§!!V§;
      }
      
      override public function get height() : Number
      {
         return this.§!`§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§5d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>!T§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+!X§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
