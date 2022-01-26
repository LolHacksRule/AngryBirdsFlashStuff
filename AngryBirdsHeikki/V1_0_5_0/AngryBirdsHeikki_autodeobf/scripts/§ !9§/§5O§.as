package § !9§
{
   import §8!4§.§>'§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5O§ extends Texture
   {
      
      private static var §^-§:Point = new Point();
       
      
      private var §9I§:Texture;
      
      private var §7L§:Rectangle;
      
      private var §7$§:Rectangle;
      
      private var §?3§:Boolean;
      
      private var §#!L§:BitmapData;
      
      public function §5O§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9I§ = param1;
         this.§?3§ = param3;
         if(param2 == null)
         {
            this.§[E§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§[E§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?3§)
         {
            this.§9I§.dispose();
         }
         if(this.§#!L§)
         {
            this.§#!L§.dispose();
            this.§#!L§ = null;
         }
         super.dispose();
      }
      
      private function §[E§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§7L§ = param1;
         this.§7$§ = param1.clone();
         var _loc2_:§5O§ = this.§9I§ as §5O§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7L§;
            this.§7$§.x = _loc3_.x + this.§7$§.x * _loc3_.width;
            this.§7$§.y = _loc3_.y + this.§7$§.y * _loc3_.height;
            this.§7$§.width *= _loc3_.width;
            this.§7$§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9I§ as §5O§;
         }
      }
      
      override public function adjustVertexData(param1:§>'§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§7$§.x;
         var _loc5_:Number = this.§7$§.y;
         var _loc6_:Number = this.§7$§.width;
         var _loc7_:Number = this.§7$§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§^-§);
            param1.setTexCoords(_loc9_,_loc4_ + §^-§.x * _loc6_,_loc5_ + §^-§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9I§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9I§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§#!L§)
         {
            return this.§#!L§;
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
            this.§#!L§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§#!L§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§#!L§;
      }
      
      public function get §]!7§() : Boolean
      {
         return this.§?3§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§7$§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9I§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§9I§.root;
      }
      
      override public function get width() : Number
      {
         return this.§9I§.width * this.§7L§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9I§.height * this.§7L§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9I§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9I§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9I§.requestBaseTextureUpdate(param1);
      }
   }
}
