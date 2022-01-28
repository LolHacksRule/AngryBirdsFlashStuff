package §_-Q0§
{
   import §_-OP§.§_-fW§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-23§ extends Texture
   {
       
      
      private var §_-gW§:Texture;
      
      private var §_-vw§:Rectangle;
      
      private var §_-Rv§:Rectangle;
      
      private var §_-3E§:Boolean;
      
      public function §_-23§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-gW§ = param1;
         this.§_-3E§ = param3;
         this.§_-zp§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-3E§)
         {
            this.§_-gW§.dispose();
            this.§_-gW§ = null;
            this.§_-3E§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-fW§) : §_-fW§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-fW§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-RN§;
         var _loc4_:Number = this.§_-Rv§.x;
         var _loc5_:Number = this.§_-Rv§.y;
         var _loc6_:Number = this.§_-Rv§.width;
         var _loc7_:Number = this.§_-Rv§.height;
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
         this.§_-gW§.updateBaseTexture(param1,param2,param3);
      }
      
      override public function get parent() : Texture
      {
         return this.§_-gW§;
      }
      
      public function get §_-zp§() : Rectangle
      {
         return this.§_-vw§.clone();
      }
      
      public function set §_-zp§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-vw§ = param1.clone();
         this.§_-Rv§ = param1.clone();
         var _loc2_:§_-23§ = this.§_-gW§ as §_-23§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-vw§;
            this.§_-Rv§.x = _loc3_.x + this.§_-Rv§.x * _loc3_.width;
            this.§_-Rv§.y = _loc3_.y + this.§_-Rv§.y * _loc3_.height;
            this.§_-Rv§.width *= _loc3_.width;
            this.§_-Rv§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-gW§ as §_-23§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-gW§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-gW§.width * this.§_-vw§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-gW§.height * this.§_-vw§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-gW§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-gW§.premultipliedAlpha;
      }
   }
}
