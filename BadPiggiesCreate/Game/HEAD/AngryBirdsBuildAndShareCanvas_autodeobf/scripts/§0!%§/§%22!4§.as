package §0!%§
{
   import §`!=§.§?!X§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!4§ extends Texture
   {
      
      private static var §'O§:Point = new Point();
       
      
      private var §6"4§:Texture;
      
      private var §@v§:Rectangle;
      
      private var §1!+§:Rectangle;
      
      private var §#m§:Boolean;
      
      private var §]!%§:BitmapData;
      
      public function §"!4§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§6"4§ = param1;
         this.§#m§ = param3;
         if(param2 == null)
         {
            this.§'Z§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§'Z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#m§)
         {
            this.§6"4§.dispose();
         }
         if(this.§]!%§)
         {
            this.§]!%§.dispose();
            this.§]!%§ = null;
         }
         super.dispose();
      }
      
      private function §'Z§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§@v§ = param1;
         this.§1!+§ = param1.clone();
         var _loc2_:§"!4§ = this.§6"4§ as §"!4§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§@v§;
            this.§1!+§.x = _loc3_.x + this.§1!+§.x * _loc3_.width;
            this.§1!+§.y = _loc3_.y + this.§1!+§.y * _loc3_.height;
            this.§1!+§.width *= _loc3_.width;
            this.§1!+§.height *= _loc3_.height;
            _loc2_ = _loc2_.§6"4§ as §"!4§;
         }
      }
      
      override public function adjustVertexData(param1:§?!X§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§1!+§.x;
         var _loc5_:Number = this.§1!+§.y;
         var _loc6_:Number = this.§1!+§.width;
         var _loc7_:Number = this.§1!+§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§'O§);
            param1.setTexCoords(_loc9_,_loc4_ + §'O§.x * _loc6_,_loc5_ + §'O§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§6"4§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6"4§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§]!%§)
         {
            return this.§]!%§;
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
            this.§]!%§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§]!%§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§]!%§;
      }
      
      public function get §!"9§() : Boolean
      {
         return this.§#m§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§1!+§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§6"4§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§6"4§.root;
      }
      
      override public function get width() : Number
      {
         return this.§6"4§.width * this.§@v§.width;
      }
      
      override public function get height() : Number
      {
         return this.§6"4§.height * this.§@v§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6"4§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6"4§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6"4§.requestBaseTextureUpdate(param1);
      }
   }
}
