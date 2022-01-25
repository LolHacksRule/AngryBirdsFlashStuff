package §#!a§
{
   import §^!L§.§-2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!J§ extends Texture
   {
      
      private static var §!G§:Point = new Point();
       
      
      private var §>'§:Texture;
      
      private var §=b§:Rectangle;
      
      private var §=!3§:Rectangle;
      
      private var §!!J§:Boolean;
      
      private var §9!6§:BitmapData;
      
      public function §=!J§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§>'§ = param1;
         this.§!!J§ = param3;
         if(param2 == null)
         {
            this.§%?§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§%?§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!!J§)
         {
            this.§>'§.dispose();
         }
         if(this.§9!6§)
         {
            this.§9!6§.dispose();
            this.§9!6§ = null;
         }
         super.dispose();
      }
      
      private function §%?§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§=b§ = param1;
         this.§=!3§ = param1.clone();
         var _loc2_:§=!J§ = this.§>'§ as §=!J§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§=b§;
            this.§=!3§.x = _loc3_.x + this.§=!3§.x * _loc3_.width;
            this.§=!3§.y = _loc3_.y + this.§=!3§.y * _loc3_.height;
            this.§=!3§.width *= _loc3_.width;
            this.§=!3§.height *= _loc3_.height;
            _loc2_ = _loc2_.§>'§ as §=!J§;
         }
      }
      
      override public function adjustVertexData(param1:§-2§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§=!3§.x;
         var _loc5_:Number = this.§=!3§.y;
         var _loc6_:Number = this.§=!3§.width;
         var _loc7_:Number = this.§=!3§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§!G§);
            param1.setTexCoords(_loc9_,_loc4_ + §!G§.x * _loc6_,_loc5_ + §!G§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§>'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>'§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§9!6§)
         {
            return this.§9!6§;
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
            this.§9!6§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§9!6§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§9!6§;
      }
      
      public function get §;!H§() : Boolean
      {
         return this.§!!J§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=!3§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§>'§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§>'§.root;
      }
      
      override public function get width() : Number
      {
         return this.§>'§.width * this.§=b§.width;
      }
      
      override public function get height() : Number
      {
         return this.§>'§.height * this.§=b§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§>'§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>'§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§>'§.requestBaseTextureUpdate(param1);
      }
   }
}
