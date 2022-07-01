package §^z§
{
   import §`!"§.§&-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § p§ extends Texture
   {
      
      private static var §#s§:Point = new Point();
       
      
      private var §"!1§:Texture;
      
      private var §<z§:Rectangle;
      
      private var §>6§:Rectangle;
      
      private var §7l§:Boolean;
      
      private var §'C§:BitmapData;
      
      public function § p§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§"!1§ = param1;
         this.§7l§ = param3;
         if(param2 == null)
         {
            this.§&[§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§&[§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§7l§)
         {
            this.§"!1§.dispose();
         }
         if(this.§'C§)
         {
            this.§'C§.dispose();
            this.§'C§ = null;
         }
         super.dispose();
      }
      
      private function §&[§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§<z§ = param1;
         this.§>6§ = param1.clone();
         var _loc2_:§ p§ = this.§"!1§ as § p§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<z§;
            this.§>6§.x = _loc3_.x + this.§>6§.x * _loc3_.width;
            this.§>6§.y = _loc3_.y + this.§>6§.y * _loc3_.height;
            this.§>6§.width *= _loc3_.width;
            this.§>6§.height *= _loc3_.height;
            _loc2_ = _loc2_.§"!1§ as § p§;
         }
      }
      
      override public function adjustVertexData(param1:§&-§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§>6§.x;
         var _loc5_:Number = this.§>6§.y;
         var _loc6_:Number = this.§>6§.width;
         var _loc7_:Number = this.§>6§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§#s§);
            param1.setTexCoords(_loc9_,_loc4_ + §#s§.x * _loc6_,_loc5_ + §#s§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§"!1§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§"!1§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§'C§)
         {
            return this.§'C§;
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
            this.§'C§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§'C§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§'C§;
      }
      
      public function get §`i§() : Boolean
      {
         return this.§7l§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§>6§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§"!1§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§"!1§.root;
      }
      
      override public function get width() : Number
      {
         return this.§"!1§.width * this.§<z§.width;
      }
      
      override public function get height() : Number
      {
         return this.§"!1§.height * this.§<z§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§"!1§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§"!1§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§"!1§.requestBaseTextureUpdate(param1);
      }
   }
}
