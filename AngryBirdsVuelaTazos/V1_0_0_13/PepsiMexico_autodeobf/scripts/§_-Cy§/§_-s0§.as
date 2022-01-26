package §_-Cy§
{
   import §_-kX§.§_-hW§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-s0§ extends Texture
   {
       
      
      private var §_-Fg§:Texture;
      
      private var §_-nq§:Rectangle;
      
      private var §_-cL§:Rectangle;
      
      private var §_-Z8§:Boolean;
      
      public function §_-s0§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-Fg§ = param1;
         this.§_-Z8§ = param3;
         this.§_-y5§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-Z8§)
         {
            this.§_-Fg§.dispose();
            this.§_-Fg§ = null;
            this.§_-Z8§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-hW§) : §_-hW§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-hW§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-yR§;
         var _loc4_:Number = this.§_-cL§.x;
         var _loc5_:Number = this.§_-cL§.y;
         var _loc6_:Number = this.§_-cL§.width;
         var _loc7_:Number = this.§_-cL§.height;
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
         this.§_-Fg§.updateBaseTexture(param1,param2,param3);
      }
      
      public function get parent() : Texture
      {
         return this.§_-Fg§;
      }
      
      public function get §_-y5§() : Rectangle
      {
         return this.§_-nq§.clone();
      }
      
      public function set §_-y5§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-nq§ = param1.clone();
         this.§_-cL§ = param1.clone();
         var _loc2_:§_-s0§ = this.§_-Fg§ as §_-s0§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-nq§;
            this.§_-cL§.x = _loc3_.x + this.§_-cL§.x * _loc3_.width;
            this.§_-cL§.y = _loc3_.y + this.§_-cL§.y * _loc3_.height;
            this.§_-cL§.width *= _loc3_.width;
            this.§_-cL§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-Fg§ as §_-s0§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-Fg§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-Fg§.width * this.§_-nq§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-Fg§.height * this.§_-nq§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-Fg§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Fg§.premultipliedAlpha;
      }
   }
}
