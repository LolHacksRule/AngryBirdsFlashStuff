package §""4§
{
   import §0"D§.§,4§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!r§ extends Texture
   {
      
      private static var §<"g§:Point = new Point();
       
      
      private var §!#^§:Texture;
      
      private var §?";§:§^<§;
      
      private var §+"H§:Rectangle;
      
      private var §&s§:Rectangle;
      
      private var §3<§:Boolean;
      
      private var §`#2§:BitmapData;
      
      public function §!r§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§!#^§ = param1;
         this.§3<§ = param3;
         this.§?";§ = this.§!#^§.root;
         if(param2 == null)
         {
            this.§6#^§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§6#^§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3<§)
         {
            this.§!#^§.dispose();
         }
         if(this.§`#2§)
         {
            this.§`#2§.dispose();
            this.§`#2§ = null;
         }
         super.dispose();
      }
      
      private function §6#^§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§+"H§ = param1;
         this.§&s§ = param1.clone();
         var _loc2_:§!r§ = this.§!#^§ as §!r§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+"H§;
            this.§&s§.x = _loc3_.x + this.§&s§.x * _loc3_.width;
            this.§&s§.y = _loc3_.y + this.§&s§.y * _loc3_.height;
            this.§&s§.width *= _loc3_.width;
            this.§&s§.height *= _loc3_.height;
            _loc2_ = _loc2_.§!#^§ as §!r§;
         }
      }
      
      override public function adjustVertexData(param1:§,4§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§&s§.x;
         var _loc5_:Number = this.§&s§.y;
         var _loc6_:Number = this.§&s§.width;
         var _loc7_:Number = this.§&s§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§<"g§);
            param1.setTexCoords(_loc9_,_loc4_ + §<"g§.x * _loc6_,_loc5_ + §<"g§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§!#^§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§!#^§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§`#2§)
         {
            return this.§`#2§;
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
            this.§`#2§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§`#2§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§`#2§;
      }
      
      public function get §]"9§() : Boolean
      {
         return this.§3<§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§+"H§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§!#^§.getBase(param1);
      }
      
      override public function get root() : §^<§
      {
         return this.§?";§;
      }
      
      override public function get format() : String
      {
         return this.§!#^§.format;
      }
      
      override public function get width() : Number
      {
         return this.§!#^§.width * this.§+"H§.width;
      }
      
      override public function get height() : Number
      {
         return this.§!#^§.height * this.§+"H§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§!#^§.nativeWidth * this.§+"H§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§!#^§.nativeHeight * this.§+"H§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§!#^§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§!#^§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§!#^§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§!#^§.requestBaseTextureUpdate(param1);
      }
   }
}
