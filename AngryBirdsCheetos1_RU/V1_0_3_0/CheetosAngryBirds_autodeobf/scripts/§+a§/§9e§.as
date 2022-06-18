package §+a§
{
   import §-!%§.§'-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9e§ extends Texture
   {
      
      private static var §+!9§:Point = new Point();
       
      
      private var §4%§:Texture;
      
      private var §1#§:Rectangle;
      
      private var §]i§:Rectangle;
      
      private var §!!D§:Boolean;
      
      private var §]!C§:BitmapData;
      
      public function §9e§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§4%§ = param1;
         this.§!!D§ = param3;
         if(param2 == null)
         {
            this.§7!H§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§7!H§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§!!D§)
         {
            this.§4%§.dispose();
         }
         if(this.§]!C§)
         {
            this.§]!C§.dispose();
            this.§]!C§ = null;
         }
         super.dispose();
      }
      
      private function §7!H§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§1#§ = param1;
         this.§]i§ = param1.clone();
         var _loc2_:§9e§ = this.§4%§ as §9e§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§1#§;
            this.§]i§.x = _loc3_.x + this.§]i§.x * _loc3_.width;
            this.§]i§.y = _loc3_.y + this.§]i§.y * _loc3_.height;
            this.§]i§.width *= _loc3_.width;
            this.§]i§.height *= _loc3_.height;
            _loc2_ = _loc2_.§4%§ as §9e§;
         }
      }
      
      override public function adjustVertexData(param1:§'-§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§]i§.x;
         var _loc5_:Number = this.§]i§.y;
         var _loc6_:Number = this.§]i§.width;
         var _loc7_:Number = this.§]i§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§+!9§);
            param1.setTexCoords(_loc9_,_loc4_ + §+!9§.x * _loc6_,_loc5_ + §+!9§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§4%§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§4%§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§]!C§)
         {
            return this.§]!C§;
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
            this.§]!C§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§]!C§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§]!C§;
      }
      
      public function get §&E§() : Boolean
      {
         return this.§!!D§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§]i§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§4%§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§4%§.root;
      }
      
      override public function get width() : Number
      {
         return this.§4%§.width * this.§1#§.width;
      }
      
      override public function get height() : Number
      {
         return this.§4%§.height * this.§1#§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§4%§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§4%§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§4%§.requestBaseTextureUpdate(param1);
      }
   }
}
