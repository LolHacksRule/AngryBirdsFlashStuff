package §<L§
{
   import §>!+§.§2!%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0#§ extends Texture
   {
      
      private static var §>!K§:Point = new Point();
       
      
      private var §8z§:Texture;
      
      private var §`B§:Rectangle;
      
      private var §4N§:Rectangle;
      
      private var §8!3§:Boolean;
      
      private var §?^§:BitmapData;
      
      public function §0#§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§8z§ = param1;
         this.§8!3§ = param3;
         if(param2 == null)
         {
            this.§'!a§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§'!a§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8!3§)
         {
            this.§8z§.dispose();
         }
         if(this.§?^§)
         {
            this.§?^§.dispose();
            this.§?^§ = null;
         }
         super.dispose();
      }
      
      private function §'!a§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§`B§ = param1;
         this.§4N§ = param1.clone();
         var _loc2_:§0#§ = this.§8z§ as §0#§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`B§;
            this.§4N§.x = _loc3_.x + this.§4N§.x * _loc3_.width;
            this.§4N§.y = _loc3_.y + this.§4N§.y * _loc3_.height;
            this.§4N§.width *= _loc3_.width;
            this.§4N§.height *= _loc3_.height;
            _loc2_ = _loc2_.§8z§ as §0#§;
         }
      }
      
      override public function adjustVertexData(param1:§2!%§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§4N§.x;
         var _loc5_:Number = this.§4N§.y;
         var _loc6_:Number = this.§4N§.width;
         var _loc7_:Number = this.§4N§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§>!K§);
            param1.setTexCoords(_loc9_,_loc4_ + §>!K§.x * _loc6_,_loc5_ + §>!K§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§8z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8z§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§?^§)
         {
            return this.§?^§;
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
            this.§?^§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§?^§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§?^§;
      }
      
      public function get §#"9§() : Boolean
      {
         return this.§8!3§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§4N§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§8z§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§8z§.root;
      }
      
      override public function get width() : Number
      {
         return this.§8z§.width * this.§`B§.width;
      }
      
      override public function get height() : Number
      {
         return this.§8z§.height * this.§`B§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8z§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8z§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8z§.requestBaseTextureUpdate(param1);
      }
   }
}
