package §"X§
{
   import §`8§.§^d§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#!L§ extends Texture
   {
      
      private static var § set§:Point = new Point();
       
      
      private var §+!4§:Texture;
      
      private var §'k§:Rectangle;
      
      private var §^3§:Rectangle;
      
      private var §0?§:Boolean;
      
      private var §9Y§:BitmapData;
      
      public function §#!L§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§+!4§ = param1;
         this.§0?§ = param3;
         if(param2 == null)
         {
            this.§2l§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§2l§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§0?§)
         {
            this.§+!4§.dispose();
         }
         if(this.§9Y§)
         {
            this.§9Y§.dispose();
            this.§9Y§ = null;
         }
         super.dispose();
      }
      
      private function §2l§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§'k§ = param1;
         this.§^3§ = param1.clone();
         var _loc2_:§#!L§ = this.§+!4§ as §#!L§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§'k§;
            this.§^3§.x = _loc3_.x + this.§^3§.x * _loc3_.width;
            this.§^3§.y = _loc3_.y + this.§^3§.y * _loc3_.height;
            this.§^3§.width *= _loc3_.width;
            this.§^3§.height *= _loc3_.height;
            _loc2_ = _loc2_.§+!4§ as §#!L§;
         }
      }
      
      override public function adjustVertexData(param1:§^d§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§^3§.x;
         var _loc5_:Number = this.§^3§.y;
         var _loc6_:Number = this.§^3§.width;
         var _loc7_:Number = this.§^3§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§ set§);
            param1.setTexCoords(_loc9_,_loc4_ + § set§.x * _loc6_,_loc5_ + § set§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§+!4§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+!4§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§9Y§)
         {
            return this.§9Y§;
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
            this.§9Y§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§9Y§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§9Y§;
      }
      
      public function get §1!7§() : Boolean
      {
         return this.§0?§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§^3§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§+!4§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§+!4§.root;
      }
      
      override public function get width() : Number
      {
         return this.§+!4§.width * this.§'k§.width;
      }
      
      override public function get height() : Number
      {
         return this.§+!4§.height * this.§'k§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!4§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+!4§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+!4§.requestBaseTextureUpdate(param1);
      }
   }
}
