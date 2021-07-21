package §0!-§
{
   import §@!X§.§7j§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class § ;§ extends §0!-§.Texture
   {
       
      
      private var §@!l§:TextureBase;
      
      private var §4!L§:int;
      
      private var §"!C§:int;
      
      private var §%R§:Boolean;
      
      private var §2!'§:Boolean;
      
      private var §4!+§:Boolean;
      
      private var §?!%§:Object;
      
      private var §1!X§:Boolean = false;
      
      public function § ;§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§@!l§ = param1;
         this.§4!L§ = param2;
         this.§"!C§ = param3;
         this.§%R§ = param4;
         this.§2!'§ = param5;
         this.§4!+§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§@!l§)
         {
            this.§@!l§.dispose();
         }
         this.§"6§(null);
         super.dispose();
      }
      
      public function §"6§(param1:Object) : void
      {
         if(this.§?!%§ == null && param1 != null)
         {
            §7j§.§else§.addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
         }
         if(param1 == null)
         {
            §7j§.§else§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
         }
         this.§?!%§ = param1;
      }
      
      private function §=!S§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§1!X§ = true;
         if(param1 != null)
         {
            this.§"6§(param1);
         }
      }
      
      public function get §!q§() : Boolean
      {
         return this.§4!+§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§!i§(param1);
         return this.§@!l§;
      }
      
      override public function get root() : §0!-§.Texture
      {
         return this;
      }
      
      private function §!i§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§1!X§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§?!%§ as BitmapData;
         var _loc3_:ByteArray = this.§?!%§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§4!L§,this.§"!C§,Context3DTextureFormat.BGRA,this.§4!+§);
            §0!-§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§%R§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§4!L§,this.§"!C§,_loc5_,this.§4!+§);
            §0!-§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§@!l§ = _loc4_;
         this.§1!X§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§4!L§;
      }
      
      override public function get height() : Number
      {
         return this.§"!C§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%R§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§2!'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§?!%§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
