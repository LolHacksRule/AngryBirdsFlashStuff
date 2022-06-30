package
{
   import §=9§.§?!2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!_§ extends Texture
   {
      
      private static var §7g§:Point = new Point();
       
      
      private var §>!Z§:Texture;
      
      private var §3n§:Rectangle;
      
      private var §6q§:Rectangle;
      
      private var §;!#§:Boolean;
      
      private var §0H§:BitmapData;
      
      public function §[!_§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§>!Z§ = param1;
         this.§;!#§ = param3;
         if(param2 == null)
         {
            this.§&S§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§&S§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!#§)
         {
            this.§>!Z§.dispose();
         }
         if(this.§0H§)
         {
            this.§0H§.dispose();
            this.§0H§ = null;
         }
         super.dispose();
      }
      
      private function §&S§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§3n§ = param1;
         this.§6q§ = param1.clone();
         var _loc2_:§[!_§ = this.§>!Z§ as §[!_§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3n§;
            this.§6q§.x = _loc3_.x + this.§6q§.x * _loc3_.width;
            this.§6q§.y = _loc3_.y + this.§6q§.y * _loc3_.height;
            this.§6q§.width *= _loc3_.width;
            this.§6q§.height *= _loc3_.height;
            _loc2_ = _loc2_.§>!Z§ as §[!_§;
         }
      }
      
      override public function adjustVertexData(param1:§?!2§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§6q§.x;
         var _loc5_:Number = this.§6q§.y;
         var _loc6_:Number = this.§6q§.width;
         var _loc7_:Number = this.§6q§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§7g§);
            param1.setTexCoords(_loc9_,_loc4_ + §7g§.x * _loc6_,_loc5_ + §7g§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§>!Z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>!Z§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§0H§)
         {
            return this.§0H§;
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
            this.§0H§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§0H§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§0H§;
      }
      
      public function get §^T§() : Boolean
      {
         return this.§;!#§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§6q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§>!Z§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§>!Z§.root;
      }
      
      override public function get width() : Number
      {
         return this.§>!Z§.width * this.§3n§.width;
      }
      
      override public function get height() : Number
      {
         return this.§>!Z§.height * this.§3n§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§>!Z§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>!Z§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§>!Z§.requestBaseTextureUpdate(param1);
      }
   }
}
