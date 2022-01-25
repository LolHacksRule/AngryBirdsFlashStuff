package §6!4§
{
   import §@!a§.§try§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!7§ extends Texture
   {
      
      private static var §;s§:Point = new Point();
       
      
      private var §;!G§:Texture;
      
      private var §`!X§:Rectangle;
      
      private var §^!4§:Rectangle;
      
      private var §`!@§:Boolean;
      
      private var §[!K§:BitmapData;
      
      public function §6!7§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§;!G§ = param1;
         this.§`!@§ = param3;
         if(param2 == null)
         {
            this.get(new Rectangle(0,0,1,1));
         }
         else
         {
            this.get(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§`!@§)
         {
            this.§;!G§.dispose();
         }
         if(this.§[!K§)
         {
            this.§[!K§.dispose();
            this.§[!K§ = null;
         }
         super.dispose();
      }
      
      private function get(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§`!X§ = param1;
         this.§^!4§ = param1.clone();
         var _loc2_:§6!7§ = this.§;!G§ as §6!7§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`!X§;
            this.§^!4§.x = _loc3_.x + this.§^!4§.x * _loc3_.width;
            this.§^!4§.y = _loc3_.y + this.§^!4§.y * _loc3_.height;
            this.§^!4§.width *= _loc3_.width;
            this.§^!4§.height *= _loc3_.height;
            _loc2_ = _loc2_.§;!G§ as §6!7§;
         }
      }
      
      override public function adjustVertexData(param1:§try§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§^!4§.x;
         var _loc5_:Number = this.§^!4§.y;
         var _loc6_:Number = this.§^!4§.width;
         var _loc7_:Number = this.§^!4§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§;s§);
            param1.setTexCoords(_loc9_,_loc4_ + §;s§.x * _loc6_,_loc5_ + §;s§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§;!G§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§;!G§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§[!K§)
         {
            return this.§[!K§;
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
            this.§[!K§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§[!K§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§[!K§;
      }
      
      public function get §"9§() : Boolean
      {
         return this.§`!@§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§^!4§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§;!G§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§;!G§.root;
      }
      
      override public function get width() : Number
      {
         return this.§;!G§.width * this.§`!X§.width;
      }
      
      override public function get height() : Number
      {
         return this.§;!G§.height * this.§`!X§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;!G§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;!G§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§;!G§.requestBaseTextureUpdate(param1);
      }
   }
}
