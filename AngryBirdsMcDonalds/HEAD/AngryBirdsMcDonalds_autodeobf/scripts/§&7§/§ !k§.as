package §&7§
{
   import §>!a§.§;!V§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !k§ extends Texture
   {
      
      private static var §5f§:Point = new Point();
       
      
      private var §]K§:Texture;
      
      private var §package§:Rectangle;
      
      private var §&-§:Rectangle;
      
      private var §?!M§:Boolean;
      
      private var §`!M§:BitmapData;
      
      public function § !k§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§]K§ = param1;
         this.§?!M§ = param3;
         if(param2 == null)
         {
            this.§^!C§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§^!C§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?!M§)
         {
            this.§]K§.dispose();
         }
         if(this.§`!M§)
         {
            this.§`!M§.dispose();
            this.§`!M§ = null;
         }
         super.dispose();
      }
      
      private function §^!C§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§package§ = param1;
         this.§&-§ = param1.clone();
         var _loc2_:§ !k§ = this.§]K§ as § !k§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§package§;
            this.§&-§.x = _loc3_.x + this.§&-§.x * _loc3_.width;
            this.§&-§.y = _loc3_.y + this.§&-§.y * _loc3_.height;
            this.§&-§.width *= _loc3_.width;
            this.§&-§.height *= _loc3_.height;
            _loc2_ = _loc2_.§]K§ as § !k§;
         }
      }
      
      override public function adjustVertexData(param1:§;!V§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§&-§.x;
         var _loc5_:Number = this.§&-§.y;
         var _loc6_:Number = this.§&-§.width;
         var _loc7_:Number = this.§&-§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§5f§);
            param1.setTexCoords(_loc9_,_loc4_ + §5f§.x * _loc6_,_loc5_ + §5f§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§]K§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]K§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§`!M§)
         {
            return this.§`!M§;
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
            this.§`!M§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§`!M§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§`!M§;
      }
      
      public function get §9!X§() : Boolean
      {
         return this.§?!M§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§&-§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§]K§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§]K§.root;
      }
      
      override public function get width() : Number
      {
         return this.§]K§.width * this.§package§.width;
      }
      
      override public function get height() : Number
      {
         return this.§]K§.height * this.§package§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]K§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]K§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§]K§.requestBaseTextureUpdate(param1);
      }
   }
}
