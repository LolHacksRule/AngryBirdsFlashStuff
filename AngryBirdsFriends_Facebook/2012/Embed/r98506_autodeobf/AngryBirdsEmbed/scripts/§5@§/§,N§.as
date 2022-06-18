package §5@§
{
   import §;%§.§8o§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §,N§ extends §5@§.Texture
   {
       
      
      private var §[3§:TextureBase;
      
      private var §<!3§:int;
      
      private var §5u§:int;
      
      private var §6!4§:Boolean;
      
      private var §&n§:Boolean;
      
      private var §7W§:Boolean;
      
      private var §=!D§:Object;
      
      private var §!!<§:Boolean = false;
      
      public function §,N§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§[3§ = param1;
         this.§<!3§ = param2;
         this.§5u§ = param3;
         this.§6!4§ = param4;
         this.§&n§ = param5;
         this.§7W§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§[3§)
         {
            this.§[3§.dispose();
         }
         this.§9!$§(null);
         super.dispose();
      }
      
      public function §9!$§(param1:Object) : void
      {
         if(this.§=!D§ == null && param1 != null)
         {
            §8o§.§5J§.addEventListener(Event.CONTEXT3D_CREATE,this.§"!F§);
         }
         if(param1 == null)
         {
            §8o§.§5J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"!F§);
         }
         this.§=!D§ = param1;
      }
      
      private function §"!F§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§!!<§ = true;
         if(param1 != null)
         {
            this.§9!$§(param1);
         }
      }
      
      public function get §?>§() : Boolean
      {
         return this.§7W§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§&=§(param1);
         return this.§[3§;
      }
      
      override public function get root() : §5@§.Texture
      {
         return this;
      }
      
      private function §&=§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§!!<§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§=!D§ as BitmapData;
         var _loc3_:ByteArray = this.§=!D§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§<!3§,this.§5u§,Context3DTextureFormat.BGRA,this.§7W§);
            §5@§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§6!4§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§<!3§,this.§5u§,_loc5_,this.§7W§);
            §5@§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§[3§ = _loc4_;
         this.§!!<§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§<!3§;
      }
      
      override public function get height() : Number
      {
         return this.§5u§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6!4§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&n§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§=!D§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
