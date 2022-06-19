package §]!a§
{
   import §4v§.§40§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!!§ extends Texture
   {
      
      private static var §=T§:Point = new Point();
       
      
      private var §&!c§:Texture;
      
      private var §&'§:Rectangle;
      
      private var §-L§:Rectangle;
      
      private var §`!$§:Boolean;
      
      private var §8!1§:BitmapData;
      
      public function §^!!§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§&!c§ = param1;
         this.§`!$§ = param3;
         if(param2 == null)
         {
            this.§!w§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§!w§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§`!$§)
         {
            this.§&!c§.dispose();
         }
         if(this.§8!1§)
         {
            this.§8!1§.dispose();
            this.§8!1§ = null;
         }
         super.dispose();
      }
      
      private function §!w§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§&'§ = param1;
         this.§-L§ = param1.clone();
         var _loc2_:§^!!§ = this.§&!c§ as §^!!§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&'§;
            this.§-L§.x = _loc3_.x + this.§-L§.x * _loc3_.width;
            this.§-L§.y = _loc3_.y + this.§-L§.y * _loc3_.height;
            this.§-L§.width *= _loc3_.width;
            this.§-L§.height *= _loc3_.height;
            _loc2_ = _loc2_.§&!c§ as §^!!§;
         }
      }
      
      override public function adjustVertexData(param1:§40§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§-L§.x;
         var _loc5_:Number = this.§-L§.y;
         var _loc6_:Number = this.§-L§.width;
         var _loc7_:Number = this.§-L§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§=T§);
            param1.setTexCoords(_loc9_,_loc4_ + §=T§.x * _loc6_,_loc5_ + §=T§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&!c§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!c§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§8!1§)
         {
            return this.§8!1§;
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
            this.§8!1§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§8!1§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§8!1§;
      }
      
      public function get §=!C§() : Boolean
      {
         return this.§`!$§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-L§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&!c§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§&!c§.root;
      }
      
      override public function get width() : Number
      {
         return this.§&!c§.width * this.§&'§.width;
      }
      
      override public function get height() : Number
      {
         return this.§&!c§.height * this.§&'§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&!c§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&!c§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&!c§.requestBaseTextureUpdate(param1);
      }
   }
}
