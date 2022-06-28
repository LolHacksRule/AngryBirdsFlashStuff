package §6!J§
{
   import §'7§.VertexData;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!]§ extends Texture
   {
      
      private static var §3!;§:Point = new Point();
       
      
      private var §;4§:Texture;
      
      private var §<!j§:Rectangle;
      
      private var §8!e§:Rectangle;
      
      private var §?!T§:Boolean;
      
      private var §^!+§:BitmapData;
      
      public function §"!]§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§;4§ = param1;
         this.§?!T§ = param3;
         if(param2 == null)
         {
            this.§[!Q§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§[!Q§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?!T§)
         {
            this.§;4§.dispose();
         }
         if(this.§^!+§)
         {
            this.§^!+§.dispose();
            this.§^!+§ = null;
         }
         super.dispose();
      }
      
      private function §[!Q§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§<!j§ = param1;
         this.§8!e§ = param1.clone();
         var _loc2_:§"!]§ = this.§;4§ as §"!]§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<!j§;
            this.§8!e§.x = _loc3_.x + this.§8!e§.x * _loc3_.width;
            this.§8!e§.y = _loc3_.y + this.§8!e§.y * _loc3_.height;
            this.§8!e§.width *= _loc3_.width;
            this.§8!e§.height *= _loc3_.height;
            _loc2_ = _loc2_.§;4§ as §"!]§;
         }
      }
      
      override public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§8!e§.x;
         var _loc5_:Number = this.§8!e§.y;
         var _loc6_:Number = this.§8!e§.width;
         var _loc7_:Number = this.§8!e§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§3!;§);
            param1.setTexCoords(_loc9_,_loc4_ + §3!;§.x * _loc6_,_loc5_ + §3!;§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§;4§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§;4§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^!+§)
         {
            return this.§^!+§;
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
            this.§^!+§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§^!+§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§^!+§;
      }
      
      public function get §7j§() : Boolean
      {
         return this.§?!T§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8!e§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§;4§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§;4§.root;
      }
      
      override public function get width() : Number
      {
         return this.§;4§.width * this.§<!j§.width;
      }
      
      override public function get height() : Number
      {
         return this.§;4§.height * this.§<!j§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;4§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;4§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§;4§.requestBaseTextureUpdate(param1);
      }
   }
}
