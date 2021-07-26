package §9$;§
{
   import §5!D§.§`e§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5"i§ extends Texture
   {
      
      private static var §!$§:Point = new Point();
       
      
      private var §!8§:Texture;
      
      private var §#$0§:§'!!§;
      
      private var §`#"§:Rectangle;
      
      private var §;#k§:Rectangle;
      
      private var §9y§:Boolean;
      
      private var §-"O§:BitmapData;
      
      public function §5"i§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§!8§ = param1;
         this.§9y§ = param3;
         this.§#$0§ = this.§!8§.root;
         if(param2 == null)
         {
            this.§&#s§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§&#s§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§9y§)
         {
            this.§!8§.dispose();
         }
         if(this.§-"O§)
         {
            this.§-"O§.dispose();
            this.§-"O§ = null;
         }
         super.dispose();
      }
      
      private function §&#s§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§`#"§ = param1;
         this.§;#k§ = param1.clone();
         var _loc2_:§5"i§ = this.§!8§ as §5"i§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`#"§;
            this.§;#k§.x = _loc3_.x + this.§;#k§.x * _loc3_.width;
            this.§;#k§.y = _loc3_.y + this.§;#k§.y * _loc3_.height;
            this.§;#k§.width *= _loc3_.width;
            this.§;#k§.height *= _loc3_.height;
            _loc2_ = _loc2_.§!8§ as §5"i§;
         }
      }
      
      override public function adjustVertexData(param1:§`e§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§;#k§.x;
         var _loc5_:Number = this.§;#k§.y;
         var _loc6_:Number = this.§;#k§.width;
         var _loc7_:Number = this.§;#k§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§!$§);
            param1.setTexCoords(_loc9_,_loc4_ + §!$§.x * _loc6_,_loc5_ + §!$§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§!8§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-"O§)
         {
            return this.§-"O§;
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(_loc1_)
         {
            _loc2_ = this.clipping;
            _loc2_.x *= this.bitmapData.width;
            _loc2_.y *= this.bitmapData.height;
            _loc2_.width *= this.bitmapData.width;
            _loc2_.height *= this.bitmapData.height;
            _loc3_ = Math.max(2,_loc2_.width);
            _loc4_ = Math.max(2,_loc2_.height);
            this.§-"O§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§-"O§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§-"O§;
      }
      
      public function get §;#H§() : Boolean
      {
         return this.§9y§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§`#"§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§!8§.getBase(param1);
      }
      
      override public function get root() : §'!!§
      {
         return this.§#$0§;
      }
      
      override public function get format() : String
      {
         return this.§!8§.format;
      }
      
      override public function get width() : Number
      {
         return this.§!8§.width * this.§`#"§.width;
      }
      
      override public function get height() : Number
      {
         return this.§!8§.height * this.§`#"§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§!8§.nativeWidth * this.§`#"§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§!8§.nativeHeight * this.§`#"§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§!8§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§!8§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§!8§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§!8§.requestBaseTextureUpdate(param1);
      }
   }
}
