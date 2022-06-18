package §<-§
{
   import §2!+§.§5!§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<!,§ extends Texture
   {
      
      private static var §3z§:Point = new Point();
       
      
      private var §&!&§:Texture;
      
      private var §5!9§:Rectangle;
      
      private var §#K§:Rectangle;
      
      private var § v§:Boolean;
      
      private var §6P§:BitmapData;
      
      public function §<!,§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§&!&§ = param1;
         this.§ v§ = param3;
         if(param2 == null)
         {
            this.§?R§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§?R§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§ v§)
         {
            this.§&!&§.dispose();
         }
         if(this.§6P§)
         {
            this.§6P§.dispose();
            this.§6P§ = null;
         }
         super.dispose();
      }
      
      private function §?R§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§5!9§ = param1;
         this.§#K§ = param1.clone();
         var _loc2_:§<!,§ = this.§&!&§ as §<!,§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§5!9§;
            this.§#K§.x = _loc3_.x + this.§#K§.x * _loc3_.width;
            this.§#K§.y = _loc3_.y + this.§#K§.y * _loc3_.height;
            this.§#K§.width *= _loc3_.width;
            this.§#K§.height *= _loc3_.height;
            _loc2_ = _loc2_.§&!&§ as §<!,§;
         }
      }
      
      override public function adjustVertexData(param1:§5!§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§#K§.x;
         var _loc5_:Number = this.§#K§.y;
         var _loc6_:Number = this.§#K§.width;
         var _loc7_:Number = this.§#K§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§3z§);
            param1.setTexCoords(_loc9_,_loc4_ + §3z§.x * _loc6_,_loc5_ + §3z§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&!&§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!&§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§6P§)
         {
            return this.§6P§;
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
            this.§6P§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§6P§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§6P§;
      }
      
      public function get § get§() : Boolean
      {
         return this.§ v§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§#K§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&!&§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§&!&§.root;
      }
      
      override public function get width() : Number
      {
         return this.§&!&§.width * this.§5!9§.width;
      }
      
      override public function get height() : Number
      {
         return this.§&!&§.height * this.§5!9§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&!&§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&!&§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&!&§.requestBaseTextureUpdate(param1);
      }
   }
}
