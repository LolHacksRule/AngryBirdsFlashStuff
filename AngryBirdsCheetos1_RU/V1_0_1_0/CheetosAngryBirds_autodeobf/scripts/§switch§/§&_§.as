package §switch§
{
   import §%W§.§ true§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&_§ extends Texture
   {
      
      private static var §<r§:Point = new Point();
       
      
      private var §6!<§:Texture;
      
      private var §4+§:Rectangle;
      
      private var §5v§:Rectangle;
      
      private var §!s§:Boolean;
      
      private var §8!>§:BitmapData;
      
      public function §&_§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§6!<§ = param1;
         this.§!s§ = param3;
         if(param2 == null)
         {
            this.§^!I§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§^!I§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!s§)
         {
            this.§6!<§.dispose();
         }
         if(this.§8!>§)
         {
            this.§8!>§.dispose();
            this.§8!>§ = null;
         }
         super.dispose();
      }
      
      private function §^!I§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§4+§ = param1;
         this.§5v§ = param1.clone();
         var _loc2_:§&_§ = this.§6!<§ as §&_§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4+§;
            this.§5v§.x = _loc3_.x + this.§5v§.x * _loc3_.width;
            this.§5v§.y = _loc3_.y + this.§5v§.y * _loc3_.height;
            this.§5v§.width *= _loc3_.width;
            this.§5v§.height *= _loc3_.height;
            _loc2_ = _loc2_.§6!<§ as §&_§;
         }
      }
      
      override public function adjustVertexData(param1:§ true§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§5v§.x;
         var _loc5_:Number = this.§5v§.y;
         var _loc6_:Number = this.§5v§.width;
         var _loc7_:Number = this.§5v§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§<r§);
            param1.setTexCoords(_loc9_,_loc4_ + §<r§.x * _loc6_,_loc5_ + §<r§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§6!<§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6!<§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§8!>§)
         {
            return this.§8!>§;
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
            this.§8!>§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§8!>§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§8!>§;
      }
      
      public function get §,!G§() : Boolean
      {
         return this.§!s§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§5v§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§6!<§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§6!<§.root;
      }
      
      override public function get width() : Number
      {
         return this.§6!<§.width * this.§4+§.width;
      }
      
      override public function get height() : Number
      {
         return this.§6!<§.height * this.§4+§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6!<§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6!<§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6!<§.requestBaseTextureUpdate(param1);
      }
   }
}
