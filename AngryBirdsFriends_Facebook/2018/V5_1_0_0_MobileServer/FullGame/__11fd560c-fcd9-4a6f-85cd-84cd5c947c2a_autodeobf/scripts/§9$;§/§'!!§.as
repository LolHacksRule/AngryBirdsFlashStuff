package §9$;§
{
   import §5#m§.Event;
   import §?"e§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §'!!§ extends §9$;§.Texture
   {
       
      
      private var §,D§:TextureBase;
      
      private var §]"0§:String;
      
      private var §4"V§:int;
      
      private var §""&§:int;
      
      private var §4#n§:Boolean;
      
      private var §!D§:Boolean;
      
      private var §=l§:Boolean;
      
      private var §["[§:Object;
      
      private var §^#5§:Number;
      
      public function §'!!§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§^#5§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§,D§ = param1;
         this.§]"0§ = param2;
         this.§4"V§ = param3;
         this.§""&§ = param4;
         this.§4#n§ = param5;
         this.§!D§ = param6;
         this.§=l§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§,D§)
         {
            this.§,D§.dispose();
         }
         this.§]#-§(null);
         super.dispose();
      }
      
      public function §]#-§(param1:Object) : void
      {
         if(this.§["[§ == null && param1 != null)
         {
            Starling.§@#K§.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         }
         else if(param1 == null)
         {
            Starling.§@#K§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         }
         this.§["[§ = param1;
      }
      
      private function §!G§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§["[§ as BitmapData;
         var _loc4_:§<"m§ = this.§["[§ as §<"m§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§4"V§,this.§""&§,Context3DTextureFormat.BGRA,this.§=l§);
            §9$;§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§4#n§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§=l§);
            §9$;§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§,D§ = _loc5_;
      }
      
      public function get §+#h§() : Boolean
      {
         return this.§=l§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§,D§;
      }
      
      override public function get root() : §'!!§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§]"0§;
      }
      
      override public function get width() : Number
      {
         return this.§4"V§ / this.§^#5§;
      }
      
      override public function get height() : Number
      {
         return this.§""&§ / this.§^#5§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§4"V§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§""&§;
      }
      
      override public function get scale() : Number
      {
         return this.§^#5§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4#n§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§!D§;
      }
   }
}
