package §&!;§
{
   import §=!6§.§+8§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §3!E§ extends §&!;§.Texture
   {
       
      
      private var §&M§:TextureBase;
      
      private var §""7§:int;
      
      private var §%>§:int;
      
      private var §;!B§:Boolean;
      
      private var § !8§:Boolean;
      
      private var §#x§:Boolean;
      
      private var §7n§:Object;
      
      private var §6!J§:Boolean = false;
      
      public function §3!E§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§&M§ = param1;
         this.§""7§ = param2;
         this.§%>§ = param3;
         this.§;!B§ = param4;
         this.§ !8§ = param5;
         this.§#x§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§&M§)
         {
            this.§&M§.dispose();
         }
         this.§+G§(null);
         super.dispose();
      }
      
      public function §+G§(param1:Object) : void
      {
         if(this.§7n§ == null && param1 != null)
         {
            §+8§.§0j§.addEventListener(Event.CONTEXT3D_CREATE,this.§1"5§);
         }
         if(param1 == null)
         {
            §+8§.§0j§.removeEventListener(Event.CONTEXT3D_CREATE,this.§1"5§);
         }
         this.§7n§ = param1;
      }
      
      private function §1"5§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6!J§ = true;
         if(param1 != null)
         {
            this.§+G§(param1);
         }
      }
      
      public function get §@A§() : Boolean
      {
         return this.§#x§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§#!4§(param1);
         return this.§&M§;
      }
      
      override public function get root() : §&!;§.Texture
      {
         return this;
      }
      
      private function §#!4§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§6!J§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§7n§ as BitmapData;
         var _loc3_:ByteArray = this.§7n§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§""7§,this.§%>§,Context3DTextureFormat.BGRA,this.§#x§);
            §&!;§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§;!B§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§""7§,this.§%>§,_loc5_,this.§#x§);
            §&!;§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§&M§ = _loc4_;
         this.§6!J§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§""7§;
      }
      
      override public function get height() : Number
      {
         return this.§%>§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;!B§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§ !8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§7n§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
