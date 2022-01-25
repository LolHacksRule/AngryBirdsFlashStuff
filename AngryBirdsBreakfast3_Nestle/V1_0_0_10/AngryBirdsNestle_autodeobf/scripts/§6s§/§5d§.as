package §6s§
{
   import §1Q§.§=!6§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5d§ extends Texture
   {
      
      private static var §5r§:Point = new Point();
       
      
      private var §9""§:Texture;
      
      private var §3!T§:Rectangle;
      
      private var §<"&§:Rectangle;
      
      private var §8h§:Boolean;
      
      private var §@"4§:BitmapData;
      
      public function §5d§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9""§ = param1;
         this.§8h§ = param3;
         if(param2 == null)
         {
            this.§-7§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§-7§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8h§)
         {
            this.§9""§.dispose();
         }
         if(this.§@"4§)
         {
            this.§@"4§.dispose();
            this.§@"4§ = null;
         }
         super.dispose();
      }
      
      private function §-7§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§3!T§ = param1;
         this.§<"&§ = param1.clone();
         var _loc2_:§5d§ = this.§9""§ as §5d§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3!T§;
            this.§<"&§.x = _loc3_.x + this.§<"&§.x * _loc3_.width;
            this.§<"&§.y = _loc3_.y + this.§<"&§.y * _loc3_.height;
            this.§<"&§.width *= _loc3_.width;
            this.§<"&§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9""§ as §5d§;
         }
      }
      
      override public function adjustVertexData(param1:§=!6§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§<"&§.x;
         var _loc5_:Number = this.§<"&§.y;
         var _loc6_:Number = this.§<"&§.width;
         var _loc7_:Number = this.§<"&§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§5r§);
            param1.setTexCoords(_loc9_,_loc4_ + §5r§.x * _loc6_,_loc5_ + §5r§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9""§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9""§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§@"4§)
         {
            return this.§@"4§;
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
            this.§@"4§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§@"4§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§@"4§;
      }
      
      public function get § ,§() : Boolean
      {
         return this.§8h§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§<"&§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9""§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§9""§.root;
      }
      
      override public function get width() : Number
      {
         return this.§9""§.width * this.§3!T§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9""§.height * this.§3!T§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9""§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9""§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9""§.requestBaseTextureUpdate(param1);
      }
   }
}
