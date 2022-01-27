package §0l§
{
   import §#M§.§+L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`j§ extends Texture
   {
      
      private static var §[!5§:Point = new Point();
       
      
      private var §3X§:Texture;
      
      private var §2!L§:Rectangle;
      
      private var §-C§:Rectangle;
      
      private var §9l§:Boolean;
      
      private var §,N§:BitmapData;
      
      public function §`j§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§3X§ = param1;
         this.§9l§ = param3;
         if(param2 == null)
         {
            this.§[F§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§[F§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§9l§)
         {
            this.§3X§.dispose();
         }
         if(this.§,N§)
         {
            this.§,N§.dispose();
            this.§,N§ = null;
         }
         super.dispose();
      }
      
      private function §[F§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§2!L§ = param1;
         this.§-C§ = param1.clone();
         var _loc2_:§`j§ = this.§3X§ as §`j§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2!L§;
            this.§-C§.x = _loc3_.x + this.§-C§.x * _loc3_.width;
            this.§-C§.y = _loc3_.y + this.§-C§.y * _loc3_.height;
            this.§-C§.width *= _loc3_.width;
            this.§-C§.height *= _loc3_.height;
            _loc2_ = _loc2_.§3X§ as §`j§;
         }
      }
      
      override public function adjustVertexData(param1:§+L§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§-C§.x;
         var _loc5_:Number = this.§-C§.y;
         var _loc6_:Number = this.§-C§.width;
         var _loc7_:Number = this.§-C§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§[!5§);
            param1.setTexCoords(_loc9_,_loc4_ + §[!5§.x * _loc6_,_loc5_ + §[!5§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3X§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3X§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,N§)
         {
            return this.§,N§;
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
            this.§,N§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§,N§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§,N§;
      }
      
      public function get §%%§() : Boolean
      {
         return this.§9l§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-C§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3X§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3X§.root;
      }
      
      override public function get width() : Number
      {
         return this.§3X§.width * this.§2!L§.width;
      }
      
      override public function get height() : Number
      {
         return this.§3X§.height * this.§2!L§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3X§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3X§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§3X§.requestBaseTextureUpdate(param1);
      }
   }
}
