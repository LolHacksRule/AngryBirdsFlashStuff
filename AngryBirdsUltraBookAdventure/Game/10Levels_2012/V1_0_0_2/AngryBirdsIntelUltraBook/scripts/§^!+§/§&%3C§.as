package §^!+§
{
   import §`s§.§0p§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&<§ extends Texture
   {
      
      private static var §<!^§:Point = new Point();
       
      
      private var §3^§:Texture;
      
      private var §%!k§:Rectangle;
      
      private var §=!w§:Rectangle;
      
      private var §1!K§:Boolean;
      
      private var §&!d§:BitmapData;
      
      public function §&<§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§3^§ = param1;
         this.§1!K§ = param3;
         if(param2 == null)
         {
            this.§3!Z§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§3!Z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§1!K§)
         {
            this.§3^§.dispose();
         }
         if(this.§&!d§)
         {
            this.§&!d§.dispose();
            this.§&!d§ = null;
         }
         super.dispose();
      }
      
      private function §3!Z§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§%!k§ = param1;
         this.§=!w§ = param1.clone();
         var _loc2_:§&<§ = this.§3^§ as §&<§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§%!k§;
            this.§=!w§.x = _loc3_.x + this.§=!w§.x * _loc3_.width;
            this.§=!w§.y = _loc3_.y + this.§=!w§.y * _loc3_.height;
            this.§=!w§.width *= _loc3_.width;
            this.§=!w§.height *= _loc3_.height;
            _loc2_ = _loc2_.§3^§ as §&<§;
         }
      }
      
      override public function adjustVertexData(param1:§0p§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§=!w§.x;
         var _loc5_:Number = this.§=!w§.y;
         var _loc6_:Number = this.§=!w§.width;
         var _loc7_:Number = this.§=!w§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§<!^§);
            param1.setTexCoords(_loc9_,_loc4_ + §<!^§.x * _loc6_,_loc5_ + §<!^§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3^§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3^§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§&!d§)
         {
            return this.§&!d§;
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
            this.§&!d§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§&!d§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§&!d§;
      }
      
      public function get §9#§() : Boolean
      {
         return this.§1!K§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=!w§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3^§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3^§.root;
      }
      
      override public function get width() : Number
      {
         return this.§3^§.width * this.§%!k§.width;
      }
      
      override public function get height() : Number
      {
         return this.§3^§.height * this.§%!k§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3^§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3^§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§3^§.requestBaseTextureUpdate(param1);
      }
   }
}
