package §21§
{
   import §5^§.§6B§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §each § extends Texture
   {
      
      private static var §4%§:Point = new Point();
       
      
      private var §]!L§:Texture;
      
      private var §5!;§:Rectangle;
      
      private var § !J§:Rectangle;
      
      private var §8=§:Boolean;
      
      private var §;-§:BitmapData;
      
      public function §each §(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§]!L§ = param1;
         this.§8=§ = param3;
         if(param2 == null)
         {
            this.§7M§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§7M§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8=§)
         {
            this.§]!L§.dispose();
         }
         if(this.§;-§)
         {
            this.§;-§.dispose();
            this.§;-§ = null;
         }
         super.dispose();
      }
      
      private function §7M§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§5!;§ = param1;
         this.§ !J§ = param1.clone();
         var _loc2_:§each § = this.§]!L§ as §each §;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§5!;§;
            this.§ !J§.x = _loc3_.x + this.§ !J§.x * _loc3_.width;
            this.§ !J§.y = _loc3_.y + this.§ !J§.y * _loc3_.height;
            this.§ !J§.width *= _loc3_.width;
            this.§ !J§.height *= _loc3_.height;
            _loc2_ = _loc2_.§]!L§ as §each §;
         }
      }
      
      override public function adjustVertexData(param1:§6B§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§ !J§.x;
         var _loc5_:Number = this.§ !J§.y;
         var _loc6_:Number = this.§ !J§.width;
         var _loc7_:Number = this.§ !J§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§4%§);
            param1.setTexCoords(_loc9_,_loc4_ + §4%§.x * _loc6_,_loc5_ + §4%§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§]!L§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]!L§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§;-§)
         {
            return this.§;-§;
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
            this.§;-§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§;-§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§;-§;
      }
      
      public function get §%h§() : Boolean
      {
         return this.§8=§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ !J§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§]!L§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§]!L§.root;
      }
      
      override public function get width() : Number
      {
         return this.§]!L§.width * this.§5!;§.width;
      }
      
      override public function get height() : Number
      {
         return this.§]!L§.height * this.§5!;§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]!L§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]!L§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§]!L§.requestBaseTextureUpdate(param1);
      }
   }
}
