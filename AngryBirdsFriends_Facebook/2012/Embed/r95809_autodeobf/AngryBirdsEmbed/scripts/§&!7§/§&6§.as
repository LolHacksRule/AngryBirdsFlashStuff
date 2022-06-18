package §&!7§
{
   import §<§.§?!5§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&6§ extends Texture
   {
      
      private static var §=9§:Point = new Point();
       
      
      private var §1L§:Texture;
      
      private var §8!#§:Rectangle;
      
      private var §<s§:Rectangle;
      
      private var §;a§:Boolean;
      
      private var § %§:BitmapData;
      
      public function §&6§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§1L§ = param1;
         this.§;a§ = param3;
         if(param2 == null)
         {
            this.§8!9§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§8!9§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;a§)
         {
            this.§1L§.dispose();
         }
         if(this.§ %§)
         {
            this.§ %§.dispose();
            this.§ %§ = null;
         }
         super.dispose();
      }
      
      private function §8!9§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§8!#§ = param1;
         this.§<s§ = param1.clone();
         var _loc2_:§&6§ = this.§1L§ as §&6§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§8!#§;
            this.§<s§.x = _loc3_.x + this.§<s§.x * _loc3_.width;
            this.§<s§.y = _loc3_.y + this.§<s§.y * _loc3_.height;
            this.§<s§.width *= _loc3_.width;
            this.§<s§.height *= _loc3_.height;
            _loc2_ = _loc2_.§1L§ as §&6§;
         }
      }
      
      override public function adjustVertexData(param1:§?!5§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§<s§.x;
         var _loc5_:Number = this.§<s§.y;
         var _loc6_:Number = this.§<s§.width;
         var _loc7_:Number = this.§<s§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§=9§);
            param1.setTexCoords(_loc9_,_loc4_ + §=9§.x * _loc6_,_loc5_ + §=9§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§1L§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§1L§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§ %§)
         {
            return this.§ %§;
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
            this.§ %§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§ %§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§ %§;
      }
      
      public function get §+6§() : Boolean
      {
         return this.§;a§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§<s§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§1L§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§1L§.root;
      }
      
      override public function get width() : Number
      {
         return this.§1L§.width * this.§8!#§.width;
      }
      
      override public function get height() : Number
      {
         return this.§1L§.height * this.§8!#§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§1L§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1L§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§1L§.requestBaseTextureUpdate(param1);
      }
   }
}
