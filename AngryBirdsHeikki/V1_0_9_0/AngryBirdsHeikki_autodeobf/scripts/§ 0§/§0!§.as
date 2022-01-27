package § 0§
{
   import §"=§.§7!F§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0!§ extends Texture
   {
      
      private static var §^v§:Point = new Point();
       
      
      private var §<!`§:Texture;
      
      private var §#k§:Rectangle;
      
      private var §<S§:Rectangle;
      
      private var §#!<§:Boolean;
      
      private var §=h§:BitmapData;
      
      public function §0!§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§<!`§ = param1;
         this.§#!<§ = param3;
         if(param2 == null)
         {
            this.§,!Z§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§,!Z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#!<§)
         {
            this.§<!`§.dispose();
         }
         if(this.§=h§)
         {
            this.§=h§.dispose();
            this.§=h§ = null;
         }
         super.dispose();
      }
      
      private function §,!Z§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§#k§ = param1;
         this.§<S§ = param1.clone();
         var _loc2_:§0!§ = this.§<!`§ as §0!§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#k§;
            this.§<S§.x = _loc3_.x + this.§<S§.x * _loc3_.width;
            this.§<S§.y = _loc3_.y + this.§<S§.y * _loc3_.height;
            this.§<S§.width *= _loc3_.width;
            this.§<S§.height *= _loc3_.height;
            _loc2_ = _loc2_.§<!`§ as §0!§;
         }
      }
      
      override public function adjustVertexData(param1:§7!F§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§<S§.x;
         var _loc5_:Number = this.§<S§.y;
         var _loc6_:Number = this.§<S§.width;
         var _loc7_:Number = this.§<S§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§^v§);
            param1.setTexCoords(_loc9_,_loc4_ + §^v§.x * _loc6_,_loc5_ + §^v§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§<!`§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§<!`§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=h§)
         {
            return this.§=h§;
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
            this.§=h§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§=h§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§=h§;
      }
      
      public function get §&9§() : Boolean
      {
         return this.§#!<§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§<S§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§<!`§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§<!`§.root;
      }
      
      override public function get width() : Number
      {
         return this.§<!`§.width * this.§#k§.width;
      }
      
      override public function get height() : Number
      {
         return this.§<!`§.height * this.§#k§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<!`§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<!`§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§<!`§.requestBaseTextureUpdate(param1);
      }
   }
}
