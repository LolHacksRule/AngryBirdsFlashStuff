package §<"L§
{
   import §3"e§.§;P§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^m§ extends Texture
   {
      
      private static var §5!C§:Point = new Point();
       
      
      private var §?9§:Texture;
      
      private var §2!g§:Rectangle;
      
      private var §2v§:Rectangle;
      
      private var §?!g§:Boolean;
      
      private var §-&§:BitmapData;
      
      public function §^m§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§?9§ = param1;
         this.§?!g§ = param3;
         if(param2 == null)
         {
            this.§7![§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§7![§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?!g§)
         {
            this.§?9§.dispose();
         }
         if(this.§-&§)
         {
            this.§-&§.dispose();
            this.§-&§ = null;
         }
         super.dispose();
      }
      
      private function §7![§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§2!g§ = param1;
         this.§2v§ = param1.clone();
         var _loc2_:§^m§ = this.§?9§ as §^m§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2!g§;
            this.§2v§.x = _loc3_.x + this.§2v§.x * _loc3_.width;
            this.§2v§.y = _loc3_.y + this.§2v§.y * _loc3_.height;
            this.§2v§.width *= _loc3_.width;
            this.§2v§.height *= _loc3_.height;
            _loc2_ = _loc2_.§?9§ as §^m§;
         }
      }
      
      override public function adjustVertexData(param1:§;P§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§2v§.x;
         var _loc5_:Number = this.§2v§.y;
         var _loc6_:Number = this.§2v§.width;
         var _loc7_:Number = this.§2v§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§5!C§);
            param1.setTexCoords(_loc9_,_loc4_ + §5!C§.x * _loc6_,_loc5_ + §5!C§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§?9§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§?9§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-&§)
         {
            return this.§-&§;
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
            this.§-&§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§-&§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§-&§;
      }
      
      public function get §,#"§() : Boolean
      {
         return this.§?!g§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§2v§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§?9§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§?9§.root;
      }
      
      override public function get width() : Number
      {
         return this.§?9§.width * this.§2!g§.width;
      }
      
      override public function get height() : Number
      {
         return this.§?9§.height * this.§2!g§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?9§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§?9§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§?9§.requestBaseTextureUpdate(param1);
      }
   }
}
