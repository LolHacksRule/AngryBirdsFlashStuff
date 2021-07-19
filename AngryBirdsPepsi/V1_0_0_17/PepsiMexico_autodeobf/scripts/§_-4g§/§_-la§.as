package §_-4g§
{
   import §_-ia§.§_-dF§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-la§ extends Texture
   {
       
      
      private var §_-iw§:Texture;
      
      private var §_-2s§:Rectangle;
      
      private var §_-3A§:Rectangle;
      
      private var §_-lN§:Boolean;
      
      public function §_-la§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-iw§ = param1;
         this.§_-lN§ = param3;
         this.§_-pT§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-lN§)
         {
            this.§_-iw§.dispose();
            this.§_-iw§ = null;
            this.§_-lN§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-dF§) : §_-dF§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-dF§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-4f§;
         var _loc4_:Number = this.§_-3A§.x;
         var _loc5_:Number = this.§_-3A§.y;
         var _loc6_:Number = this.§_-3A§.width;
         var _loc7_:Number = this.§_-3A§.height;
         var _loc8_:int = 0;
         while(_loc8_ < _loc3_)
         {
            _loc9_ = param1.getTexCoords(_loc8_);
            _loc2_.setTexCoords(_loc8_,_loc4_ + _loc9_.x * _loc6_,_loc5_ + _loc9_.y * _loc7_);
            _loc8_++;
         }
         return _loc2_;
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         this.§_-iw§.updateBaseTexture(param1,param2,param3);
      }
      
      public function get parent() : Texture
      {
         return this.§_-iw§;
      }
      
      public function get §_-pT§() : Rectangle
      {
         return this.§_-2s§.clone();
      }
      
      public function set §_-pT§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-2s§ = param1.clone();
         this.§_-3A§ = param1.clone();
         var _loc2_:§_-la§ = this.§_-iw§ as §_-la§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-2s§;
            this.§_-3A§.x = _loc3_.x + this.§_-3A§.x * _loc3_.width;
            this.§_-3A§.y = _loc3_.y + this.§_-3A§.y * _loc3_.height;
            this.§_-3A§.width *= _loc3_.width;
            this.§_-3A§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-iw§ as §_-la§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-iw§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-iw§.width * this.§_-2s§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-iw§.height * this.§_-2s§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-iw§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-iw§.premultipliedAlpha;
      }
   }
}
