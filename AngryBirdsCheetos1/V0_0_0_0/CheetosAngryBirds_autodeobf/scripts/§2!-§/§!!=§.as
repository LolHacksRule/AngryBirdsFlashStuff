package §2!-§
{
   import §<!M§.§;Z§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!!=§ extends Texture
   {
      
      private static var §-$§:Point = new Point();
       
      
      private var §,q§:Texture;
      
      private var §1=§:Rectangle;
      
      private var §8!<§:Rectangle;
      
      private var §?4§:Boolean;
      
      private var §1M§:BitmapData;
      
      public function §!!=§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§,q§ = param1;
         this.§?4§ = param3;
         if(param2 == null)
         {
            this.§`y§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§`y§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?4§)
         {
            this.§,q§.dispose();
         }
         if(this.§1M§)
         {
            this.§1M§.dispose();
            this.§1M§ = null;
         }
         super.dispose();
      }
      
      private function §`y§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§1=§ = param1;
         this.§8!<§ = param1.clone();
         var _loc2_:§!!=§ = this.§,q§ as §!!=§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1=§;
            this.§8!<§.x = _loc3_.x + this.§8!<§.x * _loc3_.width;
            this.§8!<§.y = _loc3_.y + this.§8!<§.y * _loc3_.height;
            this.§8!<§.width *= _loc3_.width;
            this.§8!<§.height *= _loc3_.height;
            _loc2_ = _loc2_.§,q§ as §!!=§;
         }
      }
      
      override public function adjustVertexData(param1:§;Z§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§8!<§.x;
         var _loc5_:Number = this.§8!<§.y;
         var _loc6_:Number = this.§8!<§.width;
         var _loc7_:Number = this.§8!<§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§-$§);
            param1.setTexCoords(_loc9_,_loc4_ + §-$§.x * _loc6_,_loc5_ + §-$§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§,q§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,q§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§1M§)
         {
            return this.§1M§;
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
            this.§1M§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§1M§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§1M§;
      }
      
      public function get §6]§() : Boolean
      {
         return this.§?4§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8!<§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§,q§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§,q§.root;
      }
      
      override public function get width() : Number
      {
         return this.§,q§.width * this.§1=§.width;
      }
      
      override public function get height() : Number
      {
         return this.§,q§.height * this.§1=§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,q§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,q§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§,q§.requestBaseTextureUpdate(param1);
      }
   }
}
