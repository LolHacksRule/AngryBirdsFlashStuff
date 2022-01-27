package §&"s§
{
   import §7"G§.§%!§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-Y§ extends Texture
   {
      
      private static var §%^§:Point = new Point();
       
      
      private var §&"c§:Texture;
      
      private var §0!n§:Rectangle;
      
      private var § V§:Rectangle;
      
      private var §1n§:Boolean;
      
      private var §5"E§:BitmapData;
      
      public function §-Y§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§&"c§ = param1;
         this.§1n§ = param3;
         if(param2 == null)
         {
            this.§"M§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§"M§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§1n§)
         {
            this.§&"c§.dispose();
         }
         if(this.§5"E§)
         {
            this.§5"E§.dispose();
            this.§5"E§ = null;
         }
         super.dispose();
      }
      
      private function §"M§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§0!n§ = param1;
         this.§ V§ = param1.clone();
         var _loc2_:§-Y§ = this.§&"c§ as §-Y§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§0!n§;
            this.§ V§.x = _loc3_.x + this.§ V§.x * _loc3_.width;
            this.§ V§.y = _loc3_.y + this.§ V§.y * _loc3_.height;
            this.§ V§.width *= _loc3_.width;
            this.§ V§.height *= _loc3_.height;
            _loc2_ = _loc2_.§&"c§ as §-Y§;
         }
      }
      
      override public function adjustVertexData(param1:§%!§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§ V§.x;
         var _loc5_:Number = this.§ V§.y;
         var _loc6_:Number = this.§ V§.width;
         var _loc7_:Number = this.§ V§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§%^§);
            param1.setTexCoords(_loc9_,_loc4_ + §%^§.x * _loc6_,_loc5_ + §%^§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&"c§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&"c§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§5"E§)
         {
            return this.§5"E§;
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
            this.§5"E§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§5"E§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§5"E§;
      }
      
      public function get §%"R§() : Boolean
      {
         return this.§1n§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ V§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&"c§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§&"c§.root;
      }
      
      override public function get width() : Number
      {
         return this.§&"c§.width * this.§0!n§.width;
      }
      
      override public function get height() : Number
      {
         return this.§&"c§.height * this.§0!n§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&"c§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&"c§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&"c§.requestBaseTextureUpdate(param1);
      }
   }
}
