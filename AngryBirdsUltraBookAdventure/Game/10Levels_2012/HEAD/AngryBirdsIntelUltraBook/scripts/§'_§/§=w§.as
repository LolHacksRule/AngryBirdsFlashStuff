package §'_§
{
   import §@2§.VertexData;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=w§ extends Texture
   {
      
      private static var §^n§:Point = new Point();
       
      
      private var §3!<§:Texture;
      
      private var §<c§:Rectangle;
      
      private var §6!S§:Rectangle;
      
      private var §;!8§:Boolean;
      
      private var §^!;§:BitmapData;
      
      public function §=w§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§3!<§ = param1;
         this.§;!8§ = param3;
         if(param2 == null)
         {
            this.§'`§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§'`§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!8§)
         {
            this.§3!<§.dispose();
         }
         if(this.§^!;§)
         {
            this.§^!;§.dispose();
            this.§^!;§ = null;
         }
         super.dispose();
      }
      
      private function §'`§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§<c§ = param1;
         this.§6!S§ = param1.clone();
         var _loc2_:§=w§ = this.§3!<§ as §=w§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<c§;
            this.§6!S§.x = _loc3_.x + this.§6!S§.x * _loc3_.width;
            this.§6!S§.y = _loc3_.y + this.§6!S§.y * _loc3_.height;
            this.§6!S§.width *= _loc3_.width;
            this.§6!S§.height *= _loc3_.height;
            _loc2_ = _loc2_.§3!<§ as §=w§;
         }
      }
      
      override public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§6!S§.x;
         var _loc5_:Number = this.§6!S§.y;
         var _loc6_:Number = this.§6!S§.width;
         var _loc7_:Number = this.§6!S§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§^n§);
            param1.setTexCoords(_loc9_,_loc4_ + §^n§.x * _loc6_,_loc5_ + §^n§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3!<§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3!<§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§^!;§)
         {
            return this.§^!;§;
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
            this.§^!;§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§^!;§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§^!;§;
      }
      
      public function get §"d§() : Boolean
      {
         return this.§;!8§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§6!S§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3!<§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3!<§.root;
      }
      
      override public function get width() : Number
      {
         return this.§3!<§.width * this.§<c§.width;
      }
      
      override public function get height() : Number
      {
         return this.§3!<§.height * this.§<c§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3!<§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3!<§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§3!<§.requestBaseTextureUpdate(param1);
      }
   }
}
