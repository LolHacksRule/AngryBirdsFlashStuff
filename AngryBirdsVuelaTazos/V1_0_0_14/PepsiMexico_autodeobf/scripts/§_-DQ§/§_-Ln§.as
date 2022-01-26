package §_-DQ§
{
   import §_-CG§.§_-gk§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Ln§ extends Texture
   {
       
      
      private var §_-o2§:Texture;
      
      private var §_-Ki§:Rectangle;
      
      private var §_-an§:Rectangle;
      
      private var §_-Vx§:Boolean;
      
      public function §_-Ln§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-o2§ = param1;
         this.§_-Vx§ = param3;
         this.§_-8w§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-Vx§)
         {
            this.§_-o2§.dispose();
            this.§_-o2§ = null;
            this.§_-Vx§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-gk§) : §_-gk§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-gk§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-YV§;
         var _loc4_:Number = this.§_-an§.x;
         var _loc5_:Number = this.§_-an§.y;
         var _loc6_:Number = this.§_-an§.width;
         var _loc7_:Number = this.§_-an§.height;
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
         this.§_-o2§.updateBaseTexture(param1,param2,param3);
      }
      
      public function get parent() : Texture
      {
         return this.§_-o2§;
      }
      
      public function get §_-8w§() : Rectangle
      {
         return this.§_-Ki§.clone();
      }
      
      public function set §_-8w§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-Ki§ = param1.clone();
         this.§_-an§ = param1.clone();
         var _loc2_:§_-Ln§ = this.§_-o2§ as §_-Ln§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-Ki§;
            this.§_-an§.x = _loc3_.x + this.§_-an§.x * _loc3_.width;
            this.§_-an§.y = _loc3_.y + this.§_-an§.y * _loc3_.height;
            this.§_-an§.width *= _loc3_.width;
            this.§_-an§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-o2§ as §_-Ln§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-o2§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-o2§.width * this.§_-Ki§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-o2§.height * this.§_-Ki§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-o2§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-o2§.premultipliedAlpha;
      }
   }
}
