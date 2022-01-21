package §",§
{
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!4§ extends Texture
   {
      
      private static var §8!'§:Point = new Point();
       
      
      private var §`!D§:Texture;
      
      private var §9h§:Rectangle;
      
      private var §+!j§:Rectangle;
      
      private var §[F§:Boolean;
      
      private var §9!^§:BitmapData;
      
      public function §<!4§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§`!D§ = param1;
         this.§[F§ = param3;
         if(param2 == null)
         {
            this.§]!'§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§]!'§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§[F§)
         {
            this.§`!D§.dispose();
         }
         if(this.§9!^§)
         {
            this.§9!^§.dispose();
            this.§9!^§ = null;
         }
         super.dispose();
      }
      
      private function §]!'§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§9h§ = param1;
         this.§+!j§ = param1.clone();
         var _loc2_:§<!4§ = this.§`!D§ as §<!4§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9h§;
            this.§+!j§.x = _loc3_.x + this.§+!j§.x * _loc3_.width;
            this.§+!j§.y = _loc3_.y + this.§+!j§.y * _loc3_.height;
            this.§+!j§.width *= _loc3_.width;
            this.§+!j§.height *= _loc3_.height;
            _loc2_ = _loc2_.§`!D§ as §<!4§;
         }
      }
      
      override public function adjustVertexData(param1:§!i§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§+!j§.x;
         var _loc5_:Number = this.§+!j§.y;
         var _loc6_:Number = this.§+!j§.width;
         var _loc7_:Number = this.§+!j§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§8!'§);
            param1.setTexCoords(_loc9_,_loc4_ + §8!'§.x * _loc6_,_loc5_ + §8!'§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§`!D§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!D§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§9!^§)
         {
            return this.§9!^§;
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
            this.§9!^§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§9!^§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§9!^§;
      }
      
      public function get §0w§() : Boolean
      {
         return this.§[F§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§+!j§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§`!D§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§`!D§.root;
      }
      
      override public function get width() : Number
      {
         return this.§`!D§.width * this.§9h§.width;
      }
      
      override public function get height() : Number
      {
         return this.§`!D§.height * this.§9h§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§`!D§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§`!D§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§`!D§.requestBaseTextureUpdate(param1);
      }
   }
}
