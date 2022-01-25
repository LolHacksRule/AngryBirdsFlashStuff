package §&!9§
{
   import §each §.§'!3§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §]!<§ extends §&!9§.Texture
   {
       
      
      private var §<E§:TextureBase;
      
      private var §"§:int;
      
      private var §&'§:int;
      
      private var §^!h§:Boolean;
      
      private var §+d§:Boolean;
      
      private var §?!-§:Boolean;
      
      private var §&x§:Object;
      
      private var §%!!§:Boolean = false;
      
      public function §]!<§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§<E§ = param1;
         this.§"§ = param2;
         this.§&'§ = param3;
         this.§^!h§ = param4;
         this.§+d§ = param5;
         this.§?!-§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§<E§)
         {
            this.§<E§.dispose();
         }
         this.§0!9§(null);
         super.dispose();
      }
      
      public function §0!9§(param1:Object) : void
      {
         if(this.§&x§ == null && param1 != null)
         {
            §'!3§.§1!n§.addEventListener(Event.CONTEXT3D_CREATE,this.§,B§);
         }
         if(param1 == null)
         {
            §'!3§.§1!n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§,B§);
         }
         this.§&x§ = param1;
      }
      
      private function §,B§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§%!!§ = true;
         if(param1 != null)
         {
            this.§0!9§(param1);
         }
      }
      
      public function get §9!+§() : Boolean
      {
         return this.§?!-§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§super§(param1);
         return this.§<E§;
      }
      
      override public function get root() : §&!9§.Texture
      {
         return this;
      }
      
      private function §super§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§%!!§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&x§ as BitmapData;
         var _loc3_:ByteArray = this.§&x§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§"§,this.§&'§,Context3DTextureFormat.BGRA,this.§?!-§);
            §&!9§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§^!h§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§"§,this.§&'§,_loc5_,this.§?!-§);
            §&!9§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§<E§ = _loc4_;
         this.§%!!§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§"§;
      }
      
      override public function get height() : Number
      {
         return this.§&'§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^!h§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+d§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&x§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
