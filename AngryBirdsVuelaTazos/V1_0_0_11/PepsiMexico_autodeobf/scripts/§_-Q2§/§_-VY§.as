package §_-Q2§
{
   import §_-6A§.§_-po§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-VY§ extends Texture
   {
       
      
      private var §_-YE§:Texture;
      
      private var §_-D6§:Rectangle;
      
      private var §_-jV§:Rectangle;
      
      private var §_-XQ§:Boolean;
      
      public function §_-VY§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-YE§ = param1;
         this.§_-XQ§ = param3;
         this.§_-eC§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-XQ§)
         {
            this.§_-YE§.dispose();
            this.§_-YE§ = null;
            this.§_-XQ§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-po§) : §_-po§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-po§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-Kb§;
         var _loc4_:Number = this.§_-jV§.x;
         var _loc5_:Number = this.§_-jV§.y;
         var _loc6_:Number = this.§_-jV§.width;
         var _loc7_:Number = this.§_-jV§.height;
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
         this.§_-YE§.updateBaseTexture(param1,param2,param3);
      }
      
      public function get parent() : Texture
      {
         return this.§_-YE§;
      }
      
      public function get §_-eC§() : Rectangle
      {
         return this.§_-D6§.clone();
      }
      
      public function set §_-eC§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-D6§ = param1.clone();
         this.§_-jV§ = param1.clone();
         var _loc2_:§_-VY§ = this.§_-YE§ as §_-VY§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-D6§;
            this.§_-jV§.x = _loc3_.x + this.§_-jV§.x * _loc3_.width;
            this.§_-jV§.y = _loc3_.y + this.§_-jV§.y * _loc3_.height;
            this.§_-jV§.width *= _loc3_.width;
            this.§_-jV§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-YE§ as §_-VY§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-YE§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-YE§.width * this.§_-D6§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-YE§.height * this.§_-D6§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-YE§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-YE§.premultipliedAlpha;
      }
   }
}
