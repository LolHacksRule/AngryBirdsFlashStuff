package §-#]§
{
   import §"#k§.Starling;
   import §,$&§.Event;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §7"z§ extends §-#]§.Texture
   {
       
      
      private var §&#'§:TextureBase;
      
      private var §>"0§:String;
      
      private var §>"h§:int;
      
      private var §"#G§:int;
      
      private var §6k§:Boolean;
      
      private var §1#z§:Boolean;
      
      private var §0"[§:Boolean;
      
      private var §1!,§:Object;
      
      private var §#!1§:Number;
      
      public function §7"z§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§#!1§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§&#'§ = param1;
         this.§>"0§ = param2;
         this.§>"h§ = param3;
         this.§"#G§ = param4;
         this.§6k§ = param5;
         this.§1#z§ = param6;
         this.§0"[§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§&#'§)
         {
            this.§&#'§.dispose();
         }
         this.§!#R§(null);
         super.dispose();
      }
      
      public function §!#R§(param1:Object) : void
      {
         if(this.§1!,§ == null && param1 != null)
         {
            Starling.§4$#§.addEventListener(Event.CONTEXT3D_CREATE,this.§>E§);
         }
         else if(param1 == null)
         {
            Starling.§4$#§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>E§);
         }
         this.§1!,§ = param1;
      }
      
      private function §>E§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§1!,§ as BitmapData;
         var _loc4_:§ #<§ = this.§1!,§ as § #<§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§>"h§,this.§"#G§,Context3DTextureFormat.BGRA,this.§0"[§);
            §-#]§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§6k§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§0"[§);
            §-#]§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§&#'§ = _loc5_;
      }
      
      public function get §5#?§() : Boolean
      {
         return this.§0"[§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&#'§;
      }
      
      override public function get root() : §7"z§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§>"0§;
      }
      
      override public function get width() : Number
      {
         return this.§>"h§ / this.§#!1§;
      }
      
      override public function get height() : Number
      {
         return this.§"#G§ / this.§#!1§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§>"h§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§"#G§;
      }
      
      override public function get scale() : Number
      {
         return this.§#!1§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6k§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1#z§;
      }
   }
}
