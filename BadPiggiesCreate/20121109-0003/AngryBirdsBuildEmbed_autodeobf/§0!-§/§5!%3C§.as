package §0!-§
{
   import §6x§.§9!§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5!<§ extends Texture
   {
      
      private static var §[!Y§:Point = new Point();
       
      
      private var §5!'§:Texture;
      
      private var §7C§:Rectangle;
      
      private var §7!V§:Rectangle;
      
      private var §8i§:Boolean;
      
      private var §#j§:BitmapData;
      
      public function §5!<§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§5!'§ = param1;
         this.§8i§ = param3;
         if(param2 == null)
         {
            this.§]!i§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§]!i§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§8i§)
         {
            this.§5!'§.dispose();
         }
         if(this.§#j§)
         {
            this.§#j§.dispose();
            this.§#j§ = null;
         }
         super.dispose();
      }
      
      private function §]!i§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§7C§ = param1;
         this.§7!V§ = param1.clone();
         var _loc2_:§5!<§ = this.§5!'§ as §5!<§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§7C§;
            this.§7!V§.x = _loc3_.x + this.§7!V§.x * _loc3_.width;
            this.§7!V§.y = _loc3_.y + this.§7!V§.y * _loc3_.height;
            this.§7!V§.width *= _loc3_.width;
            this.§7!V§.height *= _loc3_.height;
            _loc2_ = _loc2_.§5!'§ as §5!<§;
         }
      }
      
      override public function adjustVertexData(param1:§9!§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§7!V§.x;
         var _loc5_:Number = this.§7!V§.y;
         var _loc6_:Number = this.§7!V§.width;
         var _loc7_:Number = this.§7!V§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§[!Y§);
            param1.setTexCoords(_loc9_,_loc4_ + §[!Y§.x * _loc6_,_loc5_ + §[!Y§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§5!'§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§5!'§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§#j§)
         {
            return this.§#j§;
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
            this.§#j§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§#j§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§#j§;
      }
      
      public function get §;U§() : Boolean
      {
         return this.§8i§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§7!V§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§5!'§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§5!'§.root;
      }
      
      override public function get width() : Number
      {
         return this.§5!'§.width * this.§7C§.width;
      }
      
      override public function get height() : Number
      {
         return this.§5!'§.height * this.§7C§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§5!'§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§5!'§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§5!'§.requestBaseTextureUpdate(param1);
      }
   }
}
