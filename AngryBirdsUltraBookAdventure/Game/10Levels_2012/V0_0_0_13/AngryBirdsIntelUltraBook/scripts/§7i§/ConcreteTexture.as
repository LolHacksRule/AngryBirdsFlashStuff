package §7i§
{
   import §0P§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   import flash.utils.ByteArray;
   import starling.events.Event;
   
   public class ConcreteTexture extends §7i§.Texture
   {
       
      
      private var §]!j§:TextureBase;
      
      private var §[v§:int;
      
      private var §5%§:int;
      
      private var §^u§:Boolean;
      
      private var §1y§:Boolean;
      
      private var §6!O§:Boolean;
      
      private var §&^§:Object;
      
      private var §9=§:Boolean = false;
      
      public function ConcreteTexture(param1:TextureBase, param2:int, param3:int, param4:Boolean, param5:Boolean, param6:Boolean = false)
      {
         super();
         this.§]!j§ = param1;
         this.§[v§ = param2;
         this.§5%§ = param3;
         this.§^u§ = param4;
         this.§1y§ = param5;
         this.§6!O§ = param6;
      }
      
      override public function dispose() : void
      {
         if(this.§]!j§)
         {
            this.§]!j§.dispose();
         }
         this.§=!4§(null);
         super.dispose();
      }
      
      public function §=!4§(param1:Object) : void
      {
         if(this.§&^§ == null && param1 != null)
         {
            Starling.§!!F§.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
         }
         if(param1 == null)
         {
            Starling.§!!F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
         }
         this.§&^§ = param1;
      }
      
      private function §[D§(param1:Event) : void
      {
         this.requestBaseTextureUpdate(null);
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9=§ = true;
         if(param1 != null)
         {
            this.§=!4§(param1);
         }
      }
      
      public function get § !S§() : Boolean
      {
         return this.§6!O§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         this.§@Q§(param1);
         return this.§]!j§;
      }
      
      override public function get root() : §7i§.Texture
      {
         return this;
      }
      
      private function §@Q§(param1:Context3D) : void
      {
         var _loc4_:flash.display3D.textures.Texture = null;
         var _loc5_:String = null;
         if(!this.§9=§)
         {
            return;
         }
         var _loc2_:BitmapData = this.§&^§ as BitmapData;
         var _loc3_:ByteArray = this.§&^§ as ByteArray;
         if(_loc2_)
         {
            _loc4_ = param1.createTexture(this.§[v§,this.§5%§,Context3DTextureFormat.BGRA,this.§6!O§);
            Texture.uploadBitmapData(_loc4_,_loc2_,this.§^u§);
         }
         else if(_loc3_)
         {
            _loc5_ = _loc3_[6] == 2 ? Context3DTextureFormat.COMPRESSED : Context3DTextureFormat.BGRA;
            _loc4_ = param1.createTexture(this.§[v§,this.§5%§,_loc5_,this.§6!O§);
            Texture.uploadAtfData(_loc4_,_loc3_);
         }
         this.§]!j§ = _loc4_;
         this.§9=§ = false;
      }
      
      override public function get width() : Number
      {
         return this.§[v§;
      }
      
      override public function get height() : Number
      {
         return this.§5%§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^u§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1y§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&^§ as BitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.bitmapData;
      }
   }
}
