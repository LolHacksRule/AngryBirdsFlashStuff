package §+!S§
{
   import § F§.§3!&§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §[!L§ extends §+!S§.Texture
   {
       
      
      private var §'!8§:TextureBase;
      
      private var §8a§:int;
      
      private var §[K§:int;
      
      private var §,i§:Boolean;
      
      private var dynamic:Boolean;
      
      private var §!!A§:Boolean;
      
      private var §6!U§:Object;
      
      private var §3&§:Boolean = false;
      
      public function §[!L§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§'!8§ = param1;
         this.§8a§ = param2;
         this.§[K§ = param3;
         this.§,i§ = param4;
         this.dynamic = param5;
         this.§!!A§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§'!8§)
         {
            this.§'!8§.dispose();
         }
         this.§>!Q§(null);
         super.dispose();
      }
      
      public function §>!Q§(param1:Object) : void
      {
         if(this.§6!U§ == null && param1 != null)
         {
            §3!&§.§<1§.addEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
         }
         if(param1 == null)
         {
            §3!&§.§<1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
         }
         this.§6!U§ = param1;
      }
      
      private function §!6§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§3&§ = true;
         if(param1 != null)
         {
            this.§>!Q§(param1);
         }
      }
      
      public function get §6!3§() : Boolean
      {
         return this.§!!A§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§0!d§(param1);
         return this.§'!8§;
      }
      
      override public function get root() : §+!S§.Texture
      {
         return this;
      }
      
      private function §0!d§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§3&§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§6!U§ as BitmapData;
         var _loc3_:ByteArray = this.§6!U§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§8a§,this.§[K§,Context3DTextureFormat.BGRA,this.§!!A§);
            §+!S§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§,i§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§8a§,this.§[K§,_loc5_,this.§!!A§);
            §+!S§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§'!8§ = _loc4_;
         this.§3&§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§8a§;
      }
      
      override public function get height() : Number
      {
         return this.§[K§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,i§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.dynamic;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6!U§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
