package §]p§
{
   import §9!V§.§3!B§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!C§ extends Texture
   {
      
      private static var §9i§:Point = new Point();
       
      
      private var §]!!§:Texture;
      
      private var § b§:Rectangle;
      
      private var §-!'§:Rectangle;
      
      private var §"!=§:Boolean;
      
      private var §4v§:BitmapData;
      
      public function §7!C§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§]!!§ = param1;
         this.§"!=§ = param3;
         if(param2 == null)
         {
            this.§#A§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§#A§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§"!=§)
         {
            this.§]!!§.dispose();
         }
         if(this.§4v§)
         {
            this.§4v§.dispose();
            this.§4v§ = null;
         }
         super.dispose();
      }
      
      private function §#A§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§ b§ = param1;
         this.§-!'§ = param1.clone();
         var _loc2_:§7!C§ = this.§]!!§ as §7!C§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ b§;
            this.§-!'§.x = _loc3_.x + this.§-!'§.x * _loc3_.width;
            this.§-!'§.y = _loc3_.y + this.§-!'§.y * _loc3_.height;
            this.§-!'§.width *= _loc3_.width;
            this.§-!'§.height *= _loc3_.height;
            _loc2_ = _loc2_.§]!!§ as §7!C§;
         }
      }
      
      override public function adjustVertexData(param1:§3!B§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§-!'§.x;
         var _loc5_:Number = this.§-!'§.y;
         var _loc6_:Number = this.§-!'§.width;
         var _loc7_:Number = this.§-!'§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§9i§);
            param1.setTexCoords(_loc9_,_loc4_ + §9i§.x * _loc6_,_loc5_ + §9i§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§]!!§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]!!§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§4v§)
         {
            return this.§4v§;
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
            this.§4v§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§4v§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§4v§;
      }
      
      public function get §&!3§() : Boolean
      {
         return this.§"!=§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-!'§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§]!!§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§]!!§.root;
      }
      
      override public function get width() : Number
      {
         return this.§]!!§.width * this.§ b§.width;
      }
      
      override public function get height() : Number
      {
         return this.§]!!§.height * this.§ b§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]!!§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]!!§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§]!!§.requestBaseTextureUpdate(param1);
      }
   }
}
