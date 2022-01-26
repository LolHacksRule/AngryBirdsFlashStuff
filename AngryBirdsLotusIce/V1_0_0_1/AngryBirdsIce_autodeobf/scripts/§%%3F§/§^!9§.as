package §%?§
{
   import §5!3§.§^x§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^!9§ extends Texture
   {
      
      private static var §?!1§:Point = new Point();
       
      
      private var §1!'§:Texture;
      
      private var §&! §:Rectangle;
      
      private var §;n§:Rectangle;
      
      private var § %§:Boolean;
      
      private var §>n§:BitmapData;
      
      public function §^!9§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§1!'§ = param1;
         this.§ %§ = param3;
         if(param2 == null)
         {
            this.§3!4§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§3!4§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§ %§)
         {
            this.§1!'§.dispose();
         }
         if(this.§>n§)
         {
            this.§>n§.dispose();
            this.§>n§ = null;
         }
         super.dispose();
      }
      
      private function §3!4§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§&! § = param1;
         this.§;n§ = param1.clone();
         var _loc2_:§^!9§ = this.§1!'§ as §^!9§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&! §;
            this.§;n§.x = _loc3_.x + this.§;n§.x * _loc3_.width;
            this.§;n§.y = _loc3_.y + this.§;n§.y * _loc3_.height;
            this.§;n§.width *= _loc3_.width;
            this.§;n§.height *= _loc3_.height;
            _loc2_ = _loc2_.§1!'§ as §^!9§;
         }
      }
      
      override public function adjustVertexData(param1:§^x§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§;n§.x;
         var _loc5_:Number = this.§;n§.y;
         var _loc6_:Number = this.§;n§.width;
         var _loc7_:Number = this.§;n§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§?!1§);
            param1.setTexCoords(_loc9_,_loc4_ + §?!1§.x * _loc6_,_loc5_ + §?!1§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§1!'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§1!'§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§>n§)
         {
            return this.§>n§;
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
            this.§>n§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§>n§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§>n§;
      }
      
      public function get §>c§() : Boolean
      {
         return this.§ %§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§;n§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§1!'§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§1!'§.root;
      }
      
      override public function get width() : Number
      {
         return this.§1!'§.width * this.§&! §.width;
      }
      
      override public function get height() : Number
      {
         return this.§1!'§.height * this.§&! §.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§1!'§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1!'§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§1!'§.requestBaseTextureUpdate(param1);
      }
   }
}
