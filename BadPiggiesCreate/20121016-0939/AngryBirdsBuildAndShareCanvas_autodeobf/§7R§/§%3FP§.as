package §7R§
{
   import §3W§.§>!-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?P§ extends Texture
   {
      
      private static var §;m§:Point = new Point();
       
      
      private var §,#§:Texture;
      
      private var §=" §:Rectangle;
      
      private var §%Q§:Rectangle;
      
      private var §+&§:Boolean;
      
      private var §%&§:BitmapData;
      
      public function §?P§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§,#§ = param1;
         this.§+&§ = param3;
         if(param2 == null)
         {
            this.§2"6§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§2"6§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§+&§)
         {
            this.§,#§.dispose();
         }
         if(this.§%&§)
         {
            this.§%&§.dispose();
            this.§%&§ = null;
         }
         super.dispose();
      }
      
      private function §2"6§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§=" § = param1;
         this.§%Q§ = param1.clone();
         var _loc2_:§?P§ = this.§,#§ as §?P§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§=" §;
            this.§%Q§.x = _loc3_.x + this.§%Q§.x * _loc3_.width;
            this.§%Q§.y = _loc3_.y + this.§%Q§.y * _loc3_.height;
            this.§%Q§.width *= _loc3_.width;
            this.§%Q§.height *= _loc3_.height;
            _loc2_ = _loc2_.§,#§ as §?P§;
         }
      }
      
      override public function adjustVertexData(param1:§>!-§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§%Q§.x;
         var _loc5_:Number = this.§%Q§.y;
         var _loc6_:Number = this.§%Q§.width;
         var _loc7_:Number = this.§%Q§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§;m§);
            param1.setTexCoords(_loc9_,_loc4_ + §;m§.x * _loc6_,_loc5_ + §;m§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§,#§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,#§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§%&§)
         {
            return this.§%&§;
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
            this.§%&§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§%&§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§%&§;
      }
      
      public function get §+"!§() : Boolean
      {
         return this.§+&§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%Q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§,#§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§,#§.root;
      }
      
      override public function get width() : Number
      {
         return this.§,#§.width * this.§=" §.width;
      }
      
      override public function get height() : Number
      {
         return this.§,#§.height * this.§=" §.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,#§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,#§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§,#§.requestBaseTextureUpdate(param1);
      }
   }
}
