package §5!@§
{
   import §@e§.§;2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4`§ extends Texture
   {
      
      private static var §'l§:Point = new Point();
       
      
      private var §[S§:Texture;
      
      private var §&Q§:Rectangle;
      
      private var §4R§:Rectangle;
      
      private var §3p§:Boolean;
      
      private var §-!<§:BitmapData;
      
      public function §4`§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§[S§ = param1;
         this.§3p§ = param3;
         if(param2 == null)
         {
            this.§-?§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§-?§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3p§)
         {
            this.§[S§.dispose();
         }
         if(this.§-!<§)
         {
            this.§-!<§.dispose();
            this.§-!<§ = null;
         }
         super.dispose();
      }
      
      private function §-?§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§&Q§ = param1;
         this.§4R§ = param1.clone();
         var _loc2_:§4`§ = this.§[S§ as §4`§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&Q§;
            this.§4R§.x = _loc3_.x + this.§4R§.x * _loc3_.width;
            this.§4R§.y = _loc3_.y + this.§4R§.y * _loc3_.height;
            this.§4R§.width *= _loc3_.width;
            this.§4R§.height *= _loc3_.height;
            _loc2_ = _loc2_.§[S§ as §4`§;
         }
      }
      
      override public function adjustVertexData(param1:§;2§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§4R§.x;
         var _loc5_:Number = this.§4R§.y;
         var _loc6_:Number = this.§4R§.width;
         var _loc7_:Number = this.§4R§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§'l§);
            param1.setTexCoords(_loc9_,_loc4_ + §'l§.x * _loc6_,_loc5_ + §'l§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§[S§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§[S§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-!<§)
         {
            return this.§-!<§;
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
            this.§-!<§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§-!<§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§-!<§;
      }
      
      public function get §9q§() : Boolean
      {
         return this.§3p§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§4R§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§[S§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§[S§.root;
      }
      
      override public function get width() : Number
      {
         return this.§[S§.width * this.§&Q§.width;
      }
      
      override public function get height() : Number
      {
         return this.§[S§.height * this.§&Q§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§[S§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§[S§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§[S§.requestBaseTextureUpdate(param1);
      }
   }
}
