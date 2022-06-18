package §]p§
{
   import §-!§.§-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class §`I§ extends §]p§.Texture
   {
       
      
      private var §3'§:TextureBase;
      
      private var §<!&§:int;
      
      private var §@!Y§:int;
      
      private var §!!7§:Boolean;
      
      private var §&K§:Boolean;
      
      private var §;!&§:Boolean;
      
      private var §@!Z§:Object;
      
      private var §+!C§:Boolean = false;
      
      public function §`I§(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§3'§ = param1;
         this.§<!&§ = param2;
         this.§@!Y§ = param3;
         this.§!!7§ = param4;
         this.§&K§ = param5;
         this.§;!&§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§3'§)
         {
            this.§3'§.dispose();
         }
         this.§6x§(null);
         super.dispose();
      }
      
      public function §6x§(param1:Object) : void
      {
         if(this.§@!Z§ == null && param1 != null)
         {
            §-§.§-G§.addEventListener(Event.CONTEXT3D_CREATE,this.§0C§);
         }
         if(param1 == null)
         {
            §-§.§-G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0C§);
         }
         this.§@!Z§ = param1;
      }
      
      private function §0C§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+!C§ = true;
         if(param1 != null)
         {
            this.§6x§(param1);
         }
      }
      
      public function get §,!;§() : Boolean
      {
         return this.§;!&§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§!!I§(param1);
         return this.§3'§;
      }
      
      override public function get root() : §]p§.Texture
      {
         return this;
      }
      
      private function §!!I§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§+!C§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§@!Z§ as BitmapData;
         var _loc3_:ByteArray = this.§@!Z§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§<!&§,this.§@!Y§,Context3DTextureFormat.BGRA,this.§;!&§);
            §]p§.Texture.uploadBitmapData(_loc4_,_loc2_,this.§!!7§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§<!&§,this.§@!Y§,_loc5_,this.§;!&§);
            §]p§.Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§3'§ = _loc4_;
         this.§+!C§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§<!&§;
      }
      
      override public function get height() : Number
      {
         return this.§@!Y§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§!!7§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&K§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@!Z§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
