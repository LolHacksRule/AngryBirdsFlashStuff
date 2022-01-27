package §[!A§
{
   import §7G§.§2r§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!&§ extends Texture
   {
      
      private static var §?!!§:Point = new Point();
       
      
      private var §5!"§:Texture;
      
      private var § !7§:Rectangle;
      
      private var §+p§:Rectangle;
      
      private var §!!§:Boolean;
      
      private var §+A§:BitmapData;
      
      public function §2!&§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§5!"§ = param1;
         this.§!!§ = param3;
         if(param2 == null)
         {
            this.§=K§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§=K§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!!§)
         {
            this.§5!"§.dispose();
         }
         if(this.§+A§)
         {
            this.§+A§.dispose();
            this.§+A§ = null;
         }
         super.dispose();
      }
      
      private function §=K§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§ !7§ = param1;
         this.§+p§ = param1.clone();
         var _loc2_:§2!&§ = this.§5!"§ as §2!&§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ !7§;
            this.§+p§.x = _loc3_.x + this.§+p§.x * _loc3_.width;
            this.§+p§.y = _loc3_.y + this.§+p§.y * _loc3_.height;
            this.§+p§.width *= _loc3_.width;
            this.§+p§.height *= _loc3_.height;
            _loc2_ = _loc2_.§5!"§ as §2!&§;
         }
      }
      
      override public function adjustVertexData(param1:§2r§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§+p§.x;
         var _loc5_:Number = this.§+p§.y;
         var _loc6_:Number = this.§+p§.width;
         var _loc7_:Number = this.§+p§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§?!!§);
            param1.setTexCoords(_loc9_,_loc4_ + §?!!§.x * _loc6_,_loc5_ + §?!!§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§5!"§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§5!"§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+A§)
         {
            return this.§+A§;
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
            this.§+A§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+A§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+A§;
      }
      
      public function get §#!,§() : Boolean
      {
         return this.§!!§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§+p§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§5!"§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§5!"§.root;
      }
      
      override public function get width() : Number
      {
         return this.§5!"§.width * this.§ !7§.width;
      }
      
      override public function get height() : Number
      {
         return this.§5!"§.height * this.§ !7§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§5!"§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5!"§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§5!"§.requestBaseTextureUpdate(param1);
      }
   }
}
