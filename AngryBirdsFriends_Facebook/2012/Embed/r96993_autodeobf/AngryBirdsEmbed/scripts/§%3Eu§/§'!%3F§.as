package §>u§
{
   import §8j§.§=§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!?§ extends Texture
   {
      
      private static var §!l§:Point = new Point();
       
      
      private var §%%§:Texture;
      
      private var §2d§:Rectangle;
      
      private var §-<§:Rectangle;
      
      private var §6!G§:Boolean;
      
      private var §<i§:BitmapData;
      
      public function §'!?§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§%%§ = param1;
         this.§6!G§ = param3;
         if(param2 == null)
         {
            this.§=m§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§=m§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§6!G§)
         {
            this.§%%§.dispose();
         }
         if(this.§<i§)
         {
            this.§<i§.dispose();
            this.§<i§ = null;
         }
         super.dispose();
      }
      
      private function §=m§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§2d§ = param1;
         this.§-<§ = param1.clone();
         var _loc2_:§'!?§ = this.§%%§ as §'!?§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2d§;
            this.§-<§.x = _loc3_.x + this.§-<§.x * _loc3_.width;
            this.§-<§.y = _loc3_.y + this.§-<§.y * _loc3_.height;
            this.§-<§.width *= _loc3_.width;
            this.§-<§.height *= _loc3_.height;
            _loc2_ = _loc2_.§%%§ as §'!?§;
         }
      }
      
      override public function adjustVertexData(param1:§=§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§-<§.x;
         var _loc5_:Number = this.§-<§.y;
         var _loc6_:Number = this.§-<§.width;
         var _loc7_:Number = this.§-<§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§!l§);
            param1.setTexCoords(_loc9_,_loc4_ + §!l§.x * _loc6_,_loc5_ + §!l§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§%%§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§%%§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§<i§)
         {
            return this.§<i§;
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
            this.§<i§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§<i§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§<i§;
      }
      
      public function get §"!C§() : Boolean
      {
         return this.§6!G§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-<§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§%%§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§%%§.root;
      }
      
      override public function get width() : Number
      {
         return this.§%%§.width * this.§2d§.width;
      }
      
      override public function get height() : Number
      {
         return this.§%%§.height * this.§2d§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§%%§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§%%§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§%%§.requestBaseTextureUpdate(param1);
      }
   }
}
