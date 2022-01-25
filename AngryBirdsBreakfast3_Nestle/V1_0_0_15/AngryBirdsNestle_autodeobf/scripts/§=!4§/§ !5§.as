package §=!4§
{
   import §^!^§.§#!_§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !5§ extends Texture
   {
      
      private static var §0u§:Point = new Point();
       
      
      private var §->§:Texture;
      
      private var § !$§:Rectangle;
      
      private var §8Q§:Rectangle;
      
      private var §#!!§:Boolean;
      
      private var §3!g§:BitmapData;
      
      public function § !5§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§->§ = param1;
         this.§#!!§ = param3;
         if(param2 == null)
         {
            this.§,B§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§,B§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#!!§)
         {
            this.§->§.dispose();
         }
         if(this.§3!g§)
         {
            this.§3!g§.dispose();
            this.§3!g§ = null;
         }
         super.dispose();
      }
      
      private function §,B§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§ !$§ = param1;
         this.§8Q§ = param1.clone();
         var _loc2_:§ !5§ = this.§->§ as § !5§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§ !$§;
            this.§8Q§.x = _loc3_.x + this.§8Q§.x * _loc3_.width;
            this.§8Q§.y = _loc3_.y + this.§8Q§.y * _loc3_.height;
            this.§8Q§.width *= _loc3_.width;
            this.§8Q§.height *= _loc3_.height;
            _loc2_ = _loc2_.§->§ as § !5§;
         }
      }
      
      override public function adjustVertexData(param1:§#!_§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§8Q§.x;
         var _loc5_:Number = this.§8Q§.y;
         var _loc6_:Number = this.§8Q§.width;
         var _loc7_:Number = this.§8Q§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§0u§);
            param1.setTexCoords(_loc9_,_loc4_ + §0u§.x * _loc6_,_loc5_ + §0u§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§->§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§->§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3!g§)
         {
            return this.§3!g§;
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
            this.§3!g§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§3!g§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§3!g§;
      }
      
      public function get §16§() : Boolean
      {
         return this.§#!!§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8Q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§->§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§->§.root;
      }
      
      override public function get width() : Number
      {
         return this.§->§.width * this.§ !$§.width;
      }
      
      override public function get height() : Number
      {
         return this.§->§.height * this.§ !$§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§->§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§->§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§->§.requestBaseTextureUpdate(param1);
      }
   }
}
