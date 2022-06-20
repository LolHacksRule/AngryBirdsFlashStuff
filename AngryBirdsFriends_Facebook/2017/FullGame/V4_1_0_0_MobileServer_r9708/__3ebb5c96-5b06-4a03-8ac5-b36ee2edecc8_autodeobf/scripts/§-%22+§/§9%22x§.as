package §-"+§
{
   import §1P§.Event;
   import §9+§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §9"x§ extends §-"+§.Texture
   {
       
      
      private var §0n§:TextureBase;
      
      private var §0#U§:String;
      
      private var § ";§:int;
      
      private var §;!U§:int;
      
      private var §]#y§:Boolean;
      
      private var §=S§:Boolean;
      
      private var §7Z§:Boolean;
      
      private var §]!$§:Object;
      
      private var § "A§:Number;
      
      public function §9"x§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§ "A§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§0n§ = param1;
         this.§0#U§ = param2;
         this.§ ";§ = param3;
         this.§;!U§ = param4;
         this.§]#y§ = param5;
         this.§=S§ = param6;
         this.§7Z§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§0n§)
         {
            this.§0n§.dispose();
         }
         this.§#D§(null);
         super.dispose();
      }
      
      public function §#D§(param1:Object) : void
      {
         if(this.§]!$§ == null && param1 != null)
         {
            Starling.§?$#§.addEventListener(Event.CONTEXT3D_CREATE,this.§`",§);
         }
         else if(param1 == null)
         {
            Starling.§?$#§.removeEventListener(Event.CONTEXT3D_CREATE,this.§`",§);
         }
         this.§]!$§ = param1;
      }
      
      private function §`",§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§]!$§ as BitmapData;
         var _loc4_:§%!%§ = this.§]!$§ as §%!%§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§ ";§,this.§;!U§,Context3DTextureFormat.BGRA,this.§7Z§);
            §-"+§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§]#y§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§7Z§);
            §-"+§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§0n§ = _loc5_;
      }
      
      public function get §!O§() : Boolean
      {
         return this.§7Z§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§0n§;
      }
      
      override public function get root() : §9"x§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§0#U§;
      }
      
      override public function get width() : Number
      {
         return this.§ ";§ / this.§ "A§;
      }
      
      override public function get height() : Number
      {
         return this.§;!U§ / this.§ "A§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§ ";§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§;!U§;
      }
      
      override public function get scale() : Number
      {
         return this.§ "A§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]#y§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§=S§;
      }
   }
}
