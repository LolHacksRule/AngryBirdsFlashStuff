package §_-S4§
{
   import §_-0b§.§_-Bn§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-JQ§ extends Texture
   {
       
      
      private var §_-Nt§:Texture;
      
      private var §_-u0§:Rectangle;
      
      private var §_-id§:Rectangle;
      
      private var §_-P3§:Boolean;
      
      public function §_-JQ§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-Nt§ = param1;
         this.§_-P3§ = param3;
         this.§_-Zs§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-P3§)
         {
            this.§_-Nt§.dispose();
            this.§_-Nt§ = null;
            this.§_-P3§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-Bn§) : §_-Bn§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-Bn§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-8N§;
         var _loc4_:Number = this.§_-id§.x;
         var _loc5_:Number = this.§_-id§.y;
         var _loc6_:Number = this.§_-id§.width;
         var _loc7_:Number = this.§_-id§.height;
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
         this.§_-Nt§.updateBaseTexture(param1,param2,param3);
      }
      
      public function get parent() : Texture
      {
         return this.§_-Nt§;
      }
      
      public function get §_-Zs§() : Rectangle
      {
         return this.§_-u0§.clone();
      }
      
      public function set §_-Zs§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-u0§ = param1.clone();
         this.§_-id§ = param1.clone();
         var _loc2_:§_-JQ§ = this.§_-Nt§ as §_-JQ§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-u0§;
            this.§_-id§.x = _loc3_.x + this.§_-id§.x * _loc3_.width;
            this.§_-id§.y = _loc3_.y + this.§_-id§.y * _loc3_.height;
            this.§_-id§.width *= _loc3_.width;
            this.§_-id§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-Nt§ as §_-JQ§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-Nt§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-Nt§.width * this.§_-u0§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-Nt§.height * this.§_-u0§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-Nt§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-Nt§.premultipliedAlpha;
      }
   }
}
