package §_-Dk§
{
   import §_-Bt§.§_-Ty§;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-6A§ extends Texture
   {
       
      
      private var §_-oh§:Texture;
      
      private var §_-FG§:Rectangle;
      
      private var §_-Tg§:Rectangle;
      
      private var §_-2Y§:Boolean;
      
      public function §_-6A§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-oh§ = param1;
         this.§_-2Y§ = param3;
         this.§_-WR§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-2Y§)
         {
            this.§_-oh§.dispose();
            this.§_-oh§ = null;
            this.§_-2Y§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-Ty§) : §_-Ty§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-Ty§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-1b§;
         var _loc4_:Number = this.§_-Tg§.x;
         var _loc5_:Number = this.§_-Tg§.y;
         var _loc6_:Number = this.§_-Tg§.width;
         var _loc7_:Number = this.§_-Tg§.height;
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
         this.§_-oh§.requestBaseTextureUpdate(param1);
      }
      
      override public function get parent() : Texture
      {
         return this.§_-oh§;
      }
      
      public function get §_-WR§() : Rectangle
      {
         return this.§_-FG§.clone();
      }
      
      public function set §_-WR§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-FG§ = param1.clone();
         this.§_-Tg§ = param1.clone();
         var _loc2_:§_-6A§ = this.§_-oh§ as §_-6A§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-FG§;
            this.§_-Tg§.x = _loc3_.x + this.§_-Tg§.x * _loc3_.width;
            this.§_-Tg§.y = _loc3_.y + this.§_-Tg§.y * _loc3_.height;
            this.§_-Tg§.width *= _loc3_.width;
            this.§_-Tg§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-oh§ as §_-6A§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-oh§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-oh§.width * this.§_-FG§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-oh§.height * this.§_-FG§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-oh§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-oh§.premultipliedAlpha;
      }
   }
}
