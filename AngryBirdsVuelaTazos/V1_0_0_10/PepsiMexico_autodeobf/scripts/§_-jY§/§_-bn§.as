package §_-jY§
{
   import §_-Zq§.§_-8O§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-bn§ extends Texture
   {
       
      
      private var §_-I§:Texture;
      
      private var §_-Yz§:Rectangle;
      
      private var §_-j7§:Rectangle;
      
      private var §_-LP§:Boolean;
      
      public function §_-bn§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         super();
         this.§_-I§ = param1;
         this.§_-LP§ = param3;
         this.§_-MI§ = new Rectangle((param2.x + 0) / param1.width,(param2.y + 0) / param1.height,(param2.width - 0 * 2) / param1.width,(param2.height - 0 * 2) / param1.height);
      }
      
      override public function dispose() : void
      {
         if(this.§_-LP§)
         {
            this.§_-I§.dispose();
            this.§_-I§ = null;
            this.§_-LP§ = false;
         }
      }
      
      override public function adjustVertexData(param1:§_-8O§) : §_-8O§
      {
         var _loc9_:Point = null;
         var _loc2_:§_-8O§ = super.adjustVertexData(param1);
         var _loc3_:int = param1.§_-wF§;
         var _loc4_:Number = this.§_-j7§.x;
         var _loc5_:Number = this.§_-j7§.y;
         var _loc6_:Number = this.§_-j7§.width;
         var _loc7_:Number = this.§_-j7§.height;
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
         this.§_-I§.updateBaseTexture(param1,param2,param3);
      }
      
      public function get parent() : Texture
      {
         return this.§_-I§;
      }
      
      public function get §_-MI§() : Rectangle
      {
         return this.§_-Yz§.clone();
      }
      
      public function set §_-MI§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§_-Yz§ = param1.clone();
         this.§_-j7§ = param1.clone();
         var _loc2_:§_-bn§ = this.§_-I§ as §_-bn§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§_-Yz§;
            this.§_-j7§.x = _loc3_.x + this.§_-j7§.x * _loc3_.width;
            this.§_-j7§.y = _loc3_.y + this.§_-j7§.y * _loc3_.height;
            this.§_-j7§.width *= _loc3_.width;
            this.§_-j7§.height *= _loc3_.height;
            _loc2_ = _loc2_.§_-I§ as §_-bn§;
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-I§.base;
      }
      
      override public function get width() : Number
      {
         return this.§_-I§.width * this.§_-Yz§.width;
      }
      
      override public function get height() : Number
      {
         return this.§_-I§.height * this.§_-Yz§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-I§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-I§.premultipliedAlpha;
      }
   }
}
