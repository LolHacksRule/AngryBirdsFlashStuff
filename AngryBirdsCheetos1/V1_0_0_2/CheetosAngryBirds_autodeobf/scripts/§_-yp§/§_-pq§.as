package §_-yp§
{
   import §_-mb§.§_-GZ§;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-pq§ extends Texture
   {
       
      
      private var §_-2Z§:Texture;
      
      private var §_-a§:Rectangle;
      
      private var §_-lF§:Rectangle;
      
      private var §_-5O§:Boolean;
      
      public function §_-pq§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-2Z§ = param1;
         this.§_-5O§ = param3;
         this.§_-qZ§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-5O§)
         {
            this.§_-2Z§.dispose();
            this.§_-2Z§ = null;
            this.§_-5O§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-GZ§) : §_-GZ§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-GZ§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-CY§;
         var _loc4_:Number = this.§_-lF§.x;
         var _loc5_:Number = this.§_-lF§.y;
         var _loc6_:Number = this.§_-lF§.width;
         var _loc7_:Number = this.§_-lF§.height;
         var _loc8_:int = 0;
         while(_loc8_ < _loc3_)
         {
            _loc9_ = param1.getTexCoords(_loc8_);
            _loc2_.setTexCoords(_loc8_,_loc4_ + _loc9_.x * _loc6_,_loc5_ + _loc9_.y * _loc7_);
            _loc8_++;
         }
         return _loc2_;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§_-2Z§.requestBaseTextureUpdate(param1);
      }
      
      override public function get parent() : Texture
      {
         return this.§_-2Z§;
      }
      
      public function get §_-qZ§() : Rectangle
      {
         return this.§_-a§.clone();
      }
      
      public function set §_-qZ§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-a§ = param1.clone();
         this.§_-lF§ = param1.clone();
         var _loc2_:§_-pq§ = this.§_-2Z§ as §_-pq§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-a§;
            this.§_-lF§.x = _loc3_.x + this.§_-lF§.x * _loc3_.width;
            this.§_-lF§.y = _loc3_.y + this.§_-lF§.y * _loc3_.height;
            this.§_-lF§.width *= _loc3_.width;
            this.§_-lF§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-2Z§ as §_-pq§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-2Z§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-2Z§.width * this.§_-a§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-2Z§.height * this.§_-a§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-2Z§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-2Z§.premultipliedAlpha;
      }
   }
}
