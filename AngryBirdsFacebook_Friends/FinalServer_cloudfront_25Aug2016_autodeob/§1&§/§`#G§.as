package §1&§
{
   import §4"D§.§,#@§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`#G§ extends Texture
   {
      
      private static var §=#z§:Point = new Point();
       
      
      private var §9"a§:Texture;
      
      private var §@!4§:§"!g§;
      
      private var §=y§:Rectangle;
      
      private var §%"#§:Rectangle;
      
      private var §+!Z§:Boolean;
      
      private var §`$6§:BitmapData;
      
      public function §`#G§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9"a§ = param1;
         this.§+!Z§ = param3;
         this.§@!4§ = this.§9"a§.root;
         if(param2 == null)
         {
            this.§!@§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§!@§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+!Z§)
         {
            this.§9"a§.dispose();
         }
         if(this.§`$6§)
         {
            this.§`$6§.dispose();
            this.§`$6§ = null;
         }
         super.dispose();
      }
      
      private function §!@§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§=y§ = param1;
         this.§%"#§ = param1.clone();
         var _loc2_:§`#G§ = this.§9"a§ as §`#G§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§=y§;
            this.§%"#§.x = _loc3_.x + this.§%"#§.x * _loc3_.width;
            this.§%"#§.y = _loc3_.y + this.§%"#§.y * _loc3_.height;
            this.§%"#§.width *= _loc3_.width;
            this.§%"#§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9"a§ as §`#G§;
         }
      }
      
      override public function adjustVertexData(param1:§,#@§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§%"#§.x;
         var _loc5_:Number = this.§%"#§.y;
         var _loc6_:Number = this.§%"#§.width;
         var _loc7_:Number = this.§%"#§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§=#z§);
            param1.setTexCoords(_loc9_,_loc4_ + §=#z§.x * _loc6_,_loc5_ + §=#z§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9"a§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9"a§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§`$6§)
         {
            return this.§`$6§;
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
            this.§`$6§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§`$6§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§`$6§;
      }
      
      public function get §1"6§() : Boolean
      {
         return this.§+!Z§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=y§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9"a§.getBase(param1);
      }
      
      override public function get root() : §"!g§
      {
         return this.§@!4§;
      }
      
      override public function get format() : String
      {
         return this.§9"a§.format;
      }
      
      override public function get width() : Number
      {
         return this.§9"a§.width * this.§=y§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9"a§.height * this.§=y§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§9"a§.nativeWidth * this.§=y§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§9"a§.nativeHeight * this.§=y§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9"a§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9"a§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§9"a§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9"a§.requestBaseTextureUpdate(param1);
      }
   }
}
