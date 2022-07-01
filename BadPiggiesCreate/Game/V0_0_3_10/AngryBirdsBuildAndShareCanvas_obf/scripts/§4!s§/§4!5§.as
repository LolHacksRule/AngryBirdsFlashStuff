package §4!S§
{
   import §="#§.§&-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!5§ extends Texture
   {
      
      private static var §98§:Point = new Point();
       
      
      private var §8"8§:Texture;
      
      private var §!N§:Rectangle;
      
      private var §<V§:Rectangle;
      
      private var §7!'§:Boolean;
      
      private var §+!;§:BitmapData;
      
      public function §4!5§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§8"8§ = param1;
         this.§7!'§ = param3;
         if(param2 == null)
         {
            this.§,%§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§,%§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§7!'§)
         {
            this.§8"8§.dispose();
         }
         if(this.§+!;§)
         {
            this.§+!;§.dispose();
            this.§+!;§ = null;
         }
         super.dispose();
      }
      
      private function §,%§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§!N§ = param1;
         this.§<V§ = param1.clone();
         var _loc2_:§4!5§ = this.§8"8§ as §4!5§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!N§;
            this.§<V§.x = _loc3_.x + this.§<V§.x * _loc3_.width;
            this.§<V§.y = _loc3_.y + this.§<V§.y * _loc3_.height;
            this.§<V§.width *= _loc3_.width;
            this.§<V§.height *= _loc3_.height;
            _loc2_ = _loc2_.§8"8§ as §4!5§;
         }
      }
      
      override public function adjustVertexData(param1:§&-§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§<V§.x;
         var _loc5_:Number = this.§<V§.y;
         var _loc6_:Number = this.§<V§.width;
         var _loc7_:Number = this.§<V§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§98§);
            param1.setTexCoords(_loc9_,_loc4_ + §98§.x * _loc6_,_loc5_ + §98§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§8"8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8"8§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+!;§)
         {
            return this.§+!;§;
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
            this.§+!;§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+!;§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+!;§;
      }
      
      public function get §+j§() : Boolean
      {
         return this.§7!'§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§<V§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§8"8§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§8"8§.root;
      }
      
      override public function get width() : Number
      {
         return this.§8"8§.width * this.§!N§.width;
      }
      
      override public function get height() : Number
      {
         return this.§8"8§.height * this.§!N§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8"8§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8"8§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8"8§.requestBaseTextureUpdate(param1);
      }
   }
}
