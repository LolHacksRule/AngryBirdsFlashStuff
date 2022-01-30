package §@!#§
{
   import §+<§.§^"9§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`"<§ extends Texture
   {
      
      private static var §1!^§:Point = new Point();
       
      
      private var §54§:Texture;
      
      private var §[3§:Rectangle;
      
      private var §@!§:Rectangle;
      
      private var §75§:Boolean;
      
      private var §3§:BitmapData;
      
      public function §`"<§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§54§ = param1;
         this.§75§ = param3;
         if(param2 == null)
         {
            this.§"!W§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§"!W§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§75§)
         {
            this.§54§.dispose();
         }
         if(this.§3§)
         {
            this.§3§.dispose();
            this.§3§ = null;
         }
         super.dispose();
      }
      
      private function §"!W§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§[3§ = param1;
         this.§@!§ = param1.clone();
         var _loc2_:§`"<§ = this.§54§ as §`"<§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§[3§;
            this.§@!§.x = _loc3_.x + this.§@!§.x * _loc3_.width;
            this.§@!§.y = _loc3_.y + this.§@!§.y * _loc3_.height;
            this.§@!§.width *= _loc3_.width;
            this.§@!§.height *= _loc3_.height;
            _loc2_ = _loc2_.§54§ as §`"<§;
         }
      }
      
      override public function adjustVertexData(param1:§^"9§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§@!§.x;
         var _loc5_:Number = this.§@!§.y;
         var _loc6_:Number = this.§@!§.width;
         var _loc7_:Number = this.§@!§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§1!^§);
            param1.setTexCoords(_loc9_,_loc4_ + §1!^§.x * _loc6_,_loc5_ + §1!^§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§54§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§54§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3§)
         {
            return this.§3§;
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
            this.§3§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§3§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§3§;
      }
      
      public function get §1!2§() : Boolean
      {
         return this.§75§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§@!§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§54§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§54§.root;
      }
      
      override public function get width() : Number
      {
         return this.§54§.width * this.§[3§.width;
      }
      
      override public function get height() : Number
      {
         return this.§54§.height * this.§[3§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§54§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§54§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§54§.requestBaseTextureUpdate(param1);
      }
   }
}
