package §6!J§
{
   import §7!>§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class ConcreteTexture extends §6!J§.Texture
   {
       
      
      private var §<h§:TextureBase;
      
      private var §,<§:int;
      
      private var §5,§:int;
      
      private var §,$§:Boolean;
      
      private var §@!Y§:Boolean;
      
      private var §#5§:Boolean;
      
      private var §+p§:Object;
      
      private var §9!?§:Boolean = false;
      
      public function ConcreteTexture(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§<h§ = param1;
         this.§,<§ = param2;
         this.§5,§ = param3;
         this.§,$§ = param4;
         this.§@!Y§ = param5;
         this.§#5§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§<h§)
         {
            this.§<h§.dispose();
         }
         this.§!!>§(null);
         super.dispose();
      }
      
      public function §!!>§(param1:Object) : void
      {
         if(this.§+p§ == null && param1 != null)
         {
            Starling.§7!+§.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
         }
         if(param1 == null)
         {
            Starling.§7!+§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
         }
         this.§+p§ = param1;
      }
      
      private function §8!<§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9!?§ = true;
         if(param1 != null)
         {
            this.§!!>§(param1);
         }
      }
      
      public function get § else§() : Boolean
      {
         return this.§#5§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§!_§(param1);
         return this.§<h§;
      }
      
      override public function get root() : §6!J§.Texture
      {
         return this;
      }
      
      private function §!_§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§9!?§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§+p§ as BitmapData;
         var _loc3_:ByteArray = this.§+p§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§,<§,this.§5,§,Context3DTextureFormat.BGRA,this.§#5§);
            Texture.uploadBitmapData(_loc4_,_loc2_,this.§,$§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§,<§,this.§5,§,_loc5_,this.§#5§);
            Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§<h§ = _loc4_;
         this.§9!?§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§,<§;
      }
      
      override public function get height() : Number
      {
         return this.§5,§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,$§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@!Y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+p§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
