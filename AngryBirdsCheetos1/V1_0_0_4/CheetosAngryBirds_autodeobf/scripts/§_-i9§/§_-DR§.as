package §_-i9§
{
   import §_-kC§.§_-DS§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-DR§ extends Texture
   {
      
      private static var §_-0-O§:Point = new Point();
       
      
      private var §_-Y2§:Texture;
      
      private var §_-00g§:Rectangle;
      
      private var §_-aU§:Rectangle;
      
      private var §_-QQ§:Boolean;
      
      private var §_-dS§:BitmapData;
      
      public function §_-DR§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§_-Y2§ = param1;
         this.§_-QQ§ = param3;
         if(param2 == null)
         {
            this.§_-Qx§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§_-Qx§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§_-QQ§)
         {
            this.§_-Y2§.dispose();
         }
         if(this.§_-dS§)
         {
            this.§_-dS§.dispose();
            this.§_-dS§ = null;
         }
         super.dispose();
      }
      
      private function §_-Qx§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-00g§ = param1;
         this.§_-aU§ = param1.clone();
         var _loc2_:§_-DR§ = this.§_-Y2§ as §_-DR§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-00g§;
            this.§_-aU§.x = _loc3_.x + this.§_-aU§.x * _loc3_.width;
            this.§_-aU§.y = _loc3_.y + this.§_-aU§.y * _loc3_.height;
            this.§_-aU§.width *= _loc3_.width;
            this.§_-aU§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-Y2§ as §_-DR§;
         }
      }
      
      override public function adjustVertexData(param1:§_-DS§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§_-aU§.x;
         var _loc5_:Number = this.§_-aU§.y;
         var _loc6_:Number = this.§_-aU§.width;
         var _loc7_:Number = this.§_-aU§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§_-0-O§);
            param1.setTexCoords(_loc9_,_loc4_ + §_-0-O§.x * _loc6_,_loc5_ + §_-0-O§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§_-Y2§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§_-Y2§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§_-dS§)
         {
            return this.§_-dS§;
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
            this.§_-dS§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§_-dS§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§_-dS§;
      }
      
      public function get §_-T2§() : Boolean
      {
         return this.§_-QQ§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§_-aU§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§_-Y2§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§_-Y2§.root;
      }
      
      override public function get width() : Number
      {
         return this.§_-Y2§.width * this.§_-00g§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-Y2§.height * this.§_-00g§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-Y2§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Y2§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§_-Y2§.requestBaseTextureUpdate(param1);
      }
   }
}
