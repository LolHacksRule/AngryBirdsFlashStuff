package §#!6§
{
   import §6K§.§#!-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3R§ extends Texture
   {
      
      private static var §-!U§:Point = new Point();
       
      
      private var §5!^§:Texture;
      
      private var §;9§:Rectangle;
      
      private var §,!H§:Rectangle;
      
      private var §@`§:Boolean;
      
      private var § P§:BitmapData;
      
      public function §3R§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§5!^§ = param1;
         this.§@`§ = param3;
         if(param2 == null)
         {
            this.§&8§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§&8§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@`§)
         {
            this.§5!^§.dispose();
         }
         if(this.§ P§)
         {
            this.§ P§.dispose();
            this.§ P§ = null;
         }
         super.dispose();
      }
      
      private function §&8§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§;9§ = param1;
         this.§,!H§ = param1.clone();
         var _loc2_:§3R§ = this.§5!^§ as §3R§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;9§;
            this.§,!H§.x = _loc3_.x + this.§,!H§.x * _loc3_.width;
            this.§,!H§.y = _loc3_.y + this.§,!H§.y * _loc3_.height;
            this.§,!H§.width *= _loc3_.width;
            this.§,!H§.height *= _loc3_.height;
            _loc2_ = _loc2_.§5!^§ as §3R§;
         }
      }
      
      override public function adjustVertexData(param1:§#!-§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§,!H§.x;
         var _loc5_:Number = this.§,!H§.y;
         var _loc6_:Number = this.§,!H§.width;
         var _loc7_:Number = this.§,!H§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§-!U§);
            param1.setTexCoords(_loc9_,_loc4_ + §-!U§.x * _loc6_,_loc5_ + §-!U§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§5!^§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§5!^§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§ P§)
         {
            return this.§ P§;
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
            this.§ P§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§ P§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§ P§;
      }
      
      public function get §;!M§() : Boolean
      {
         return this.§@`§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§,!H§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§5!^§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§5!^§.root;
      }
      
      override public function get width() : Number
      {
         return this.§5!^§.width * this.§;9§.width;
      }
      
      override public function get height() : Number
      {
         return this.§5!^§.height * this.§;9§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§5!^§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5!^§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§5!^§.requestBaseTextureUpdate(param1);
      }
   }
}
