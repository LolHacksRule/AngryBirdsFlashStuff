package §_-z4§
{
   import §_-UD§.§_-9f§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-ud§ extends Texture
   {
      
      private static var §_-0-7§:Point = new Point();
       
      
      private var §_-00U§:Texture;
      
      private var §_-c8§:Rectangle;
      
      private var §_-Ea§:Rectangle;
      
      private var §_-aB§:Boolean;
      
      private var §_-dK§:BitmapData;
      
      public function §_-ud§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§_-00U§ = param1;
         this.§_-aB§ = param3;
         if(param2 == null)
         {
            this.§_-0E5§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§_-0E5§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-aB§)
         {
            this.§_-00U§.dispose();
         }
         if(this.§_-dK§)
         {
            this.§_-dK§.dispose();
            this.§_-dK§ = null;
         }
         super.dispose();
      }
      
      private function §_-0E5§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-c8§ = param1;
         this.§_-Ea§ = param1.clone();
         var _loc2_:§_-ud§ = this.§_-00U§ as §_-ud§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-c8§;
            this.§_-Ea§.x = _loc3_.x + this.§_-Ea§.x * _loc3_.width;
            this.§_-Ea§.y = _loc3_.y + this.§_-Ea§.y * _loc3_.height;
            this.§_-Ea§.width *= _loc3_.width;
            this.§_-Ea§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-00U§ as §_-ud§;
         }
      }
      
      override public function adjustVertexData(param1:§_-9f§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§_-Ea§.x;
         var _loc5_:Number = this.§_-Ea§.y;
         var _loc6_:Number = this.§_-Ea§.width;
         var _loc7_:Number = this.§_-Ea§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§_-0-7§);
            param1.setTexCoords(_loc9_,_loc4_ + §_-0-7§.x * _loc6_,_loc5_ + §_-0-7§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§_-00U§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§_-00U§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§_-dK§)
         {
            return this.§_-dK§;
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
            this.§_-dK§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§_-dK§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§_-dK§;
      }
      
      public function get §_-zF§() : Boolean
      {
         return this.§_-aB§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§_-Ea§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§_-00U§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§_-00U§.root;
      }
      
      override public function get width() : Number
      {
         return this.§_-00U§.width * this.§_-c8§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-00U§.height * this.§_-c8§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-00U§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-00U§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§_-00U§.requestBaseTextureUpdate(param1);
      }
   }
}
