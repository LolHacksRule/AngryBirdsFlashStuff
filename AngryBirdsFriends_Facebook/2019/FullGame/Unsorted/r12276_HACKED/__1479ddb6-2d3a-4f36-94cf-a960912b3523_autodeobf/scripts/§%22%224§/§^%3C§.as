package §""4§
{
   import §&§.Starling;
   import §<!S§.Event;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §^<§ extends §""4§.Texture
   {
       
      
      private var §=F§:TextureBase;
      
      private var §%M§:String;
      
      private var §@!l§:int;
      
      private var §,7§:int;
      
      private var §<"d§:Boolean;
      
      private var §!#H§:Boolean;
      
      private var §1"%§:Boolean;
      
      private var §6"G§:Object;
      
      private var §6#q§:Number;
      
      public function §^<§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§6#q§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§=F§ = param1;
         this.§%M§ = param2;
         this.§@!l§ = param3;
         this.§,7§ = param4;
         this.§<"d§ = param5;
         this.§!#H§ = param6;
         this.§1"%§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§=F§)
         {
            this.§=F§.dispose();
         }
         this.§8!3§(null);
         super.dispose();
      }
      
      public function §8!3§(param1:Object) : void
      {
         if(this.§6"G§ == null && param1 != null)
         {
            Starling.§%!q§.addEventListener(Event.CONTEXT3D_CREATE,this.§^#e§);
         }
         else if(param1 == null)
         {
            Starling.§%!q§.removeEventListener(Event.CONTEXT3D_CREATE,this.§^#e§);
         }
         this.§6"G§ = param1;
      }
      
      private function §^#e§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§6"G§ as BitmapData;
         var _loc4_:§@";§ = this.§6"G§ as §@";§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§@!l§,this.§,7§,Context3DTextureFormat.BGRA,this.§1"%§);
            §""4§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§<"d§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§1"%§);
            §""4§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§=F§ = _loc5_;
      }
      
      public function get §"#a§() : Boolean
      {
         return this.§1"%§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§=F§;
      }
      
      override public function get root() : §^<§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§%M§;
      }
      
      override public function get width() : Number
      {
         return this.§@!l§ / this.§6#q§;
      }
      
      override public function get height() : Number
      {
         return this.§,7§ / this.§6#q§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§@!l§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§,7§;
      }
      
      override public function get scale() : Number
      {
         return this.§6#q§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<"d§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§!#H§;
      }
   }
}
