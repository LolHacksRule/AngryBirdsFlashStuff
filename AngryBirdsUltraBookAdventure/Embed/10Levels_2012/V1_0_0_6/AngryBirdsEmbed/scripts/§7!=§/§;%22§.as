package §7!=§
{
   import §,G§.§ u§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;"§ extends Texture
   {
      
      private static var §%v§:Point = new Point();
       
      
      private var §<u§:Texture;
      
      private var §70§:Rectangle;
      
      private var §5V§:Rectangle;
      
      private var §[!!§:Boolean;
      
      private var §57§:BitmapData;
      
      public function §;"§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§<u§ = param1;
         this.§[!!§ = param3;
         if(param2 == null)
         {
            this.§`!§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§`!§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§[!!§)
         {
            this.§<u§.dispose();
         }
         if(this.§57§)
         {
            this.§57§.dispose();
            this.§57§ = null;
         }
         super.dispose();
      }
      
      private function §`!§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§70§ = param1;
         this.§5V§ = param1.clone();
         var _loc2_:§;"§ = this.§<u§ as §;"§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§70§;
            this.§5V§.x = _loc3_.x + this.§5V§.x * _loc3_.width;
            this.§5V§.y = _loc3_.y + this.§5V§.y * _loc3_.height;
            this.§5V§.width *= _loc3_.width;
            this.§5V§.height *= _loc3_.height;
            _loc2_ = _loc2_.§<u§ as §;"§;
         }
      }
      
      override public function adjustVertexData(param1:§ u§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§5V§.x;
         var _loc5_:Number = this.§5V§.y;
         var _loc6_:Number = this.§5V§.width;
         var _loc7_:Number = this.§5V§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§%v§);
            param1.setTexCoords(_loc9_,_loc4_ + §%v§.x * _loc6_,_loc5_ + §%v§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§<u§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§<u§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§57§)
         {
            return this.§57§;
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
            this.§57§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§57§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§57§;
      }
      
      public function get §"!3§() : Boolean
      {
         return this.§[!!§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§5V§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§<u§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§<u§.root;
      }
      
      override public function get width() : Number
      {
         return this.§<u§.width * this.§70§.width;
      }
      
      override public function get height() : Number
      {
         return this.§<u§.height * this.§70§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<u§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<u§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§<u§.requestBaseTextureUpdate(param1);
      }
   }
}
