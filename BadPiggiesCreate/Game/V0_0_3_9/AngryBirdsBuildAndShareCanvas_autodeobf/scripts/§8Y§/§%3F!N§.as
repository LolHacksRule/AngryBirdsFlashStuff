package §8Y§
{
   import §+M§.§7!M§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!N§ extends Texture
   {
      
      private static var §=5§:Point = new Point();
       
      
      private var §+!l§:Texture;
      
      private var §["1§:Rectangle;
      
      private var §?4§:Rectangle;
      
      private var §;! §:Boolean;
      
      private var §?!p§:BitmapData;
      
      public function §?!N§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§+!l§ = param1;
         this.§;! § = param3;
         if(param2 == null)
         {
            this.§?"&§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§?"&§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;! §)
         {
            this.§+!l§.dispose();
         }
         if(this.§?!p§)
         {
            this.§?!p§.dispose();
            this.§?!p§ = null;
         }
         super.dispose();
      }
      
      private function §?"&§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§["1§ = param1;
         this.§?4§ = param1.clone();
         var _loc2_:§?!N§ = this.§+!l§ as §?!N§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§["1§;
            this.§?4§.x = _loc3_.x + this.§?4§.x * _loc3_.width;
            this.§?4§.y = _loc3_.y + this.§?4§.y * _loc3_.height;
            this.§?4§.width *= _loc3_.width;
            this.§?4§.height *= _loc3_.height;
            _loc2_ = _loc2_.§+!l§ as §?!N§;
         }
      }
      
      override public function adjustVertexData(param1:§7!M§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§?4§.x;
         var _loc5_:Number = this.§?4§.y;
         var _loc6_:Number = this.§?4§.width;
         var _loc7_:Number = this.§?4§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§=5§);
            param1.setTexCoords(_loc9_,_loc4_ + §=5§.x * _loc6_,_loc5_ + §=5§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§+!l§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+!l§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§?!p§)
         {
            return this.§?!p§;
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
            this.§?!p§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§?!p§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§?!p§;
      }
      
      public function get §,X§() : Boolean
      {
         return this.§;! §;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§?4§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§+!l§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§+!l§.root;
      }
      
      override public function get width() : Number
      {
         return this.§+!l§.width * this.§["1§.width;
      }
      
      override public function get height() : Number
      {
         return this.§+!l§.height * this.§["1§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+!l§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+!l§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+!l§.requestBaseTextureUpdate(param1);
      }
   }
}
