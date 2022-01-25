package §+!S§
{
   import §?!Z§.§4k§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'R§ extends Texture
   {
      
      private static var §=M§:Point = new Point();
       
      
      private var §?2§:Texture;
      
      private var §,K§:Rectangle;
      
      private var §=!K§:Rectangle;
      
      private var §@!O§:Boolean;
      
      private var §+X§:BitmapData;
      
      public function §'R§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§?2§ = param1;
         this.§@!O§ = param3;
         if(param2 == null)
         {
            this.§%w§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§%w§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@!O§)
         {
            this.§?2§.dispose();
         }
         if(this.§+X§)
         {
            this.§+X§.dispose();
            this.§+X§ = null;
         }
         super.dispose();
      }
      
      private function §%w§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§,K§ = param1;
         this.§=!K§ = param1.clone();
         var _loc2_:§'R§ = this.§?2§ as §'R§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,K§;
            this.§=!K§.x = _loc3_.x + this.§=!K§.x * _loc3_.width;
            this.§=!K§.y = _loc3_.y + this.§=!K§.y * _loc3_.height;
            this.§=!K§.width *= _loc3_.width;
            this.§=!K§.height *= _loc3_.height;
            _loc2_ = _loc2_.§?2§ as §'R§;
         }
      }
      
      override public function adjustVertexData(param1:§4k§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§=!K§.x;
         var _loc5_:Number = this.§=!K§.y;
         var _loc6_:Number = this.§=!K§.width;
         var _loc7_:Number = this.§=!K§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§=M§);
            param1.setTexCoords(_loc9_,_loc4_ + §=M§.x * _loc6_,_loc5_ + §=M§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§?2§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§?2§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+X§)
         {
            return this.§+X§;
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
            this.§+X§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+X§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+X§;
      }
      
      public function get §5$§() : Boolean
      {
         return this.§@!O§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=!K§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§?2§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§?2§.root;
      }
      
      override public function get width() : Number
      {
         return this.§?2§.width * this.§,K§.width;
      }
      
      override public function get height() : Number
      {
         return this.§?2§.height * this.§,K§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?2§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§?2§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§?2§.requestBaseTextureUpdate(param1);
      }
   }
}
