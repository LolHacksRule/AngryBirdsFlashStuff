package §'@§
{
   import §1f§.§9H§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class § true§ extends §'@§.Texture
   {
       
      
      private var §5"1§:TextureBase;
      
      private var §'!K§:int;
      
      private var §%O§:int;
      
      private var § >§:Boolean;
      
      private var §%"3§:Boolean;
      
      private var §@!C§:Boolean;
      
      private var §@N§:Object;
      
      private var §"A§:Boolean = false;
      
      public function § true§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§5"1§ = param1;
         this.§'!K§ = param2;
         this.§%O§ = param3;
         this.§ >§ = param4;
         this.§%"3§ = param5;
         this.§@!C§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§5"1§)
         {
            this.§5"1§.dispose();
         }
         this.§'!i§(null);
         super.dispose();
      }
      
      public function §'!i§(param1:Object) : void
      {
         if(this.§@N§ == null && param1 != null)
         {
            §9H§.§0"'§.addEventListener(Event.CONTEXT3D_CREATE,this.§&Q§);
         }
         if(param1 == null)
         {
            §9H§.§0"'§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&Q§);
         }
         this.§@N§ = param1;
      }
      
      private function §&Q§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§"A§ = true;
         if(param1 != null)
         {
            this.§'!i§(param1);
         }
      }
      
      public function get §"!Y§() : Boolean
      {
         return this.§@!C§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§6!h§(param1);
         return this.§5"1§;
      }
      
      override public function get root() : §'@§.Texture
      {
         return this;
      }
      
      private function §6!h§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§"A§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@N§ as BitmapData;
         var _loc3_:ByteArray = this.§@N§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§'!K§,this.§%O§,Context3DTextureFormat.BGRA,this.§@!C§);
            §'@§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§ >§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§'!K§,this.§%O§,_loc5_,this.§@!C§);
            §'@§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§5"1§ = _loc4_;
         this.§"A§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§'!K§;
      }
      
      override public function get height() : Number
      {
         return this.§%O§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§ >§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§%"3§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@N§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
