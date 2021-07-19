package §%q§
{
   import §+o§.§3C§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<w§ extends Texture
   {
      
      private static var §3j§:Point = new Point();
       
      
      private var §4-§:Texture;
      
      private var §1G§:Rectangle;
      
      private var §`l§:Rectangle;
      
      private var §;!i§:Boolean;
      
      private var §6!T§:BitmapData;
      
      public function §<w§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§4-§ = param1;
         this.§;!i§ = param3;
         if(param2 == null)
         {
            this.§ -§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§ -§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!i§)
         {
            this.§4-§.dispose();
         }
         if(this.§6!T§)
         {
            this.§6!T§.dispose();
            this.§6!T§ = null;
         }
         super.dispose();
      }
      
      private function § -§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§1G§ = param1;
         this.§`l§ = param1.clone();
         var _loc2_:§<w§ = this.§4-§ as §<w§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1G§;
            this.§`l§.x = _loc3_.x + this.§`l§.x * _loc3_.width;
            this.§`l§.y = _loc3_.y + this.§`l§.y * _loc3_.height;
            this.§`l§.width *= _loc3_.width;
            this.§`l§.height *= _loc3_.height;
            _loc2_ = _loc2_.§4-§ as §<w§;
         }
      }
      
      override public function adjustVertexData(param1:§3C§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§`l§.x;
         var _loc5_:Number = this.§`l§.y;
         var _loc6_:Number = this.§`l§.width;
         var _loc7_:Number = this.§`l§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§3j§);
            param1.setTexCoords(_loc9_,_loc4_ + §3j§.x * _loc6_,_loc5_ + §3j§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§4-§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§4-§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§6!T§)
         {
            return this.§6!T§;
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
            this.§6!T§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§6!T§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§6!T§;
      }
      
      public function get §#"!§() : Boolean
      {
         return this.§;!i§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§`l§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§4-§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§4-§.root;
      }
      
      override public function get width() : Number
      {
         return this.§4-§.width * this.§1G§.width;
      }
      
      override public function get height() : Number
      {
         return this.§4-§.height * this.§1G§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4-§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§4-§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§4-§.requestBaseTextureUpdate(param1);
      }
   }
}
