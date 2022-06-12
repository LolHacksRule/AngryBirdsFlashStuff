package §1&§
{
   import §?a§.Event;
   import §^a§.Starling;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DTextureFormat;
   import flash.display3D.textures.Texture;
   import flash.display3D.textures.TextureBase;
   
   public class §"!g§ extends §1&§.Texture
   {
       
      
      private var §^"#§:TextureBase;
      
      private var §'!J§:String;
      
      private var §]<§:int;
      
      private var §""b§:int;
      
      private var §?"6§:Boolean;
      
      private var §^!-§:Boolean;
      
      private var §5!W§:Boolean;
      
      private var §+!&§:Object;
      
      private var §]"?§:Number;
      
      public function §"!g§(param1:TextureBase, param2:String, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean = false, param8:Number = 1)
      {
         super();
         this.§]"?§ = param8 <= 0 ? Number(1) : Number(param8);
         this.§^"#§ = param1;
         this.§'!J§ = param2;
         this.§]<§ = param3;
         this.§""b§ = param4;
         this.§?"6§ = param5;
         this.§^!-§ = param6;
         this.§5!W§ = param7;
      }
      
      override public function dispose() : void
      {
         if(this.§^"#§)
         {
            this.§^"#§.dispose();
         }
         this.§=#F§(null);
         super.dispose();
      }
      
      public function §=#F§(param1:Object) : void
      {
         if(this.§+!&§ == null && param1 != null)
         {
            Starling.§<#`§.addEventListener(Event.CONTEXT3D_CREATE,this.§^"W§);
         }
         else if(param1 == null)
         {
            Starling.§<#`§.removeEventListener(Event.CONTEXT3D_CREATE,this.§^"W§);
         }
         this.§+!&§ = param1;
      }
      
      private function §^"W§(param1:Event) : void
      {
         var _loc5_:flash.display3D.textures.Texture = null;
         var _loc2_:Context3D = Starling.context;
         var _loc3_:BitmapData = this.§+!&§ as BitmapData;
         var _loc4_:§2$;§ = this.§+!&§ as §2$;§;
         if(_loc3_)
         {
            _loc5_ = _loc2_.createTexture(this.§]<§,this.§""b§,Context3DTextureFormat.BGRA,this.§5!W§);
            §1&§.Texture.uploadBitmapData(_loc5_,_loc3_,this.§?"6§);
         }
         else if(_loc4_)
         {
            _loc5_ = _loc2_.createTexture(_loc4_.width,_loc4_.height,_loc4_.format,this.§5!W§);
            §1&§.Texture.uploadAtfData(_loc5_,_loc4_.data);
         }
         this.§^"#§ = _loc5_;
      }
      
      public function get §8I§() : Boolean
      {
         return this.§5!W§;
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§^"#§;
      }
      
      override public function get root() : §"!g§
      {
         return this;
      }
      
      override public function get format() : String
      {
         return this.§'!J§;
      }
      
      override public function get width() : Number
      {
         return this.§]<§ / this.§]"?§;
      }
      
      override public function get height() : Number
      {
         return this.§""b§ / this.§]"?§;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§]<§;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§""b§;
      }
      
      override public function get scale() : Number
      {
         return this.§]"?§;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?"6§;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§^!-§;
      }
   }
}
