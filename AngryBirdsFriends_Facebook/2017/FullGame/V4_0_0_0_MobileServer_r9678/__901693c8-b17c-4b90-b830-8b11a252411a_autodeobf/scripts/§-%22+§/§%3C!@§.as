package §-"+§
{
   import §>l§.§%"O§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!@§ extends Texture
   {
      
      private static var §<!`§:Point = new Point();
       
      
      private var §9X§:Texture;
      
      private var §?"+§:§9"x§;
      
      private var §^O§:Rectangle;
      
      private var §-"d§:Rectangle;
      
      private var §^#E§:Boolean;
      
      private var §&$;§:BitmapData;
      
      public function §<!@§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9X§ = param1;
         this.§^#E§ = param3;
         this.§?"+§ = this.§9X§.root;
         if(param2 == null)
         {
            this.§+";§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§+";§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§^#E§)
         {
            this.§9X§.dispose();
         }
         if(this.§&$;§)
         {
            this.§&$;§.dispose();
            this.§&$;§ = null;
         }
         super.dispose();
      }
      
      private function §+";§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§^O§ = param1;
         this.§-"d§ = param1.clone();
         var _loc2_:§<!@§ = this.§9X§ as §<!@§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§^O§;
            this.§-"d§.x = _loc3_.x + this.§-"d§.x * _loc3_.width;
            this.§-"d§.y = _loc3_.y + this.§-"d§.y * _loc3_.height;
            this.§-"d§.width *= _loc3_.width;
            this.§-"d§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9X§ as §<!@§;
         }
      }
      
      override public function adjustVertexData(param1:§%"O§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§-"d§.x;
         var _loc5_:Number = this.§-"d§.y;
         var _loc6_:Number = this.§-"d§.width;
         var _loc7_:Number = this.§-"d§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§<!`§);
            param1.setTexCoords(_loc9_,_loc4_ + §<!`§.x * _loc6_,_loc5_ + §<!`§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9X§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9X§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§&$;§)
         {
            return this.§&$;§;
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
            this.§&$;§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§&$;§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§&$;§;
      }
      
      public function get §%$1§() : Boolean
      {
         return this.§^#E§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§^O§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9X§.getBase(param1);
      }
      
      override public function get root() : §9"x§
      {
         return this.§?"+§;
      }
      
      override public function get format() : String
      {
         return this.§9X§.format;
      }
      
      override public function get width() : Number
      {
         return this.§9X§.width * this.§^O§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9X§.height * this.§^O§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§9X§.nativeWidth * this.§^O§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§9X§.nativeHeight * this.§^O§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9X§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9X§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§9X§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9X§.requestBaseTextureUpdate(param1);
      }
   }
}
