package §"!<§
{
   import §;!F§.§1!2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!G§ extends Texture
   {
      
      private static var §?!O§:Point = new Point();
       
      
      private var §]7§:Texture;
      
      private var §=!S§:Rectangle;
      
      private var §"!]§:Rectangle;
      
      private var §3!T§:Boolean;
      
      private var §&!Y§:BitmapData;
      
      public function §<!G§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§]7§ = param1;
         this.§3!T§ = param3;
         if(param2 == null)
         {
            this.§"!2§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§"!2§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3!T§)
         {
            this.§]7§.dispose();
         }
         if(this.§&!Y§)
         {
            this.§&!Y§.dispose();
            this.§&!Y§ = null;
         }
         super.dispose();
      }
      
      private function §"!2§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§=!S§ = param1;
         this.§"!]§ = param1.clone();
         var _loc2_:§<!G§ = this.§]7§ as §<!G§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§=!S§;
            this.§"!]§.x = _loc3_.x + this.§"!]§.x * _loc3_.width;
            this.§"!]§.y = _loc3_.y + this.§"!]§.y * _loc3_.height;
            this.§"!]§.width *= _loc3_.width;
            this.§"!]§.height *= _loc3_.height;
            _loc2_ = _loc2_.§]7§ as §<!G§;
         }
      }
      
      override public function adjustVertexData(param1:§1!2§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§"!]§.x;
         var _loc5_:Number = this.§"!]§.y;
         var _loc6_:Number = this.§"!]§.width;
         var _loc7_:Number = this.§"!]§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§?!O§);
            param1.setTexCoords(_loc9_,_loc4_ + §?!O§.x * _loc6_,_loc5_ + §?!O§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§]7§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]7§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§&!Y§)
         {
            return this.§&!Y§;
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
            this.§&!Y§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§&!Y§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§&!Y§;
      }
      
      public function get § !T§() : Boolean
      {
         return this.§3!T§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§"!]§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§]7§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§]7§.root;
      }
      
      override public function get width() : Number
      {
         return this.§]7§.width * this.§=!S§.width;
      }
      
      override public function get height() : Number
      {
         return this.§]7§.height * this.§=!S§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]7§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]7§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§]7§.requestBaseTextureUpdate(param1);
      }
   }
}
