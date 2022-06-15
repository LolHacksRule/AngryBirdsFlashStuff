package §"#z§
{
   import §!$;§.Event;
   import §'!j§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §]#i§ extends §"#z§.Texture
   {
       
      
      private var §0#c§:TextureBase;
      
      private var §<y§:String;
      
      private var §>H§:int;
      
      private var §^l§:int;
      
      private var §9$'§:Boolean;
      
      private var §9! §:Boolean;
      
      private var §["j§:Boolean;
      
      private var §8#f§:Object;
      
      private var §5>§:Number;
      
      public function §]#i§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§5>§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§0#c§ = param1;
         this.§<y§ = param2;
         this.§>H§ = param3;
         this.§^l§ = param4;
         this.§9$'§ = param5;
         this.§9! § = param6;
         this.§["j§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§0#c§)
         {
            this.§0#c§.dispose();
         }
         this.§]!6§(null);
         super.dispose();
      }
      
      public function §]!6§(param1:Object) : void
      {
         if(this.§8#f§ == null && param1 != null)
         {
            Starling.§>x§.addEventListener(Event.CONTEXT3D_CREATE,this.§%"]§);
         }
         else if(param1 == null)
         {
            Starling.§>x§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%"]§);
         }
         this.§8#f§ = param1;
      }
      
      private function §%"]§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§8#f§ as BitmapData;
         var _loc4_:§`?§ = this.§8#f§ as §`?§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§>H§,this.§^l§,Context3DTextureFormat.BGRA,this.§["j§);
            §"#z§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§9$'§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§["j§);
            §"#z§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§0#c§ = _loc5_;
      }
      
      public function get §&!v§() : Boolean
      {
         return this.§["j§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§0#c§;
      }
      
      override public function get root() : §]#i§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§<y§;
      }
      
      override public function get width() : Number
      {
         return this.§>H§ / this.§5>§;
      }
      
      override public function get height() : Number
      {
         return this.§^l§ / this.§5>§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§>H§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§^l§;
      }
      
      override public function get scale() : Number
      {
         return this.§5>§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9$'§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9! §;
      }
   }
}
