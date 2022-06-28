package §4>§
{
   import §9!k§.§=A§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § !C§ extends Texture
   {
      
      private static var §'v§:Point = new Point();
       
      
      private var §8!Q§:Texture;
      
      private var §,!s§:Rectangle;
      
      private var §9K§:Rectangle;
      
      private var §`"§:Boolean;
      
      private var §1!Q§:BitmapData;
      
      public function § !C§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§8!Q§ = param1;
         this.§`"§ = param3;
         if(param2 == null)
         {
            this.§1! §(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§1! §(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§`"§)
         {
            this.§8!Q§.dispose();
         }
         if(this.§1!Q§)
         {
            this.§1!Q§.dispose();
            this.§1!Q§ = null;
         }
         super.dispose();
      }
      
      private function §1! §(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§,!s§ = param1;
         this.§9K§ = param1.clone();
         var _loc2_:§ !C§ = this.§8!Q§ as § !C§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,!s§;
            this.§9K§.x = _loc3_.x + this.§9K§.x * _loc3_.width;
            this.§9K§.y = _loc3_.y + this.§9K§.y * _loc3_.height;
            this.§9K§.width *= _loc3_.width;
            this.§9K§.height *= _loc3_.height;
            _loc2_ = _loc2_.§8!Q§ as § !C§;
         }
      }
      
      override public function adjustVertexData(param1:§=A§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§9K§.x;
         var _loc5_:Number = this.§9K§.y;
         var _loc6_:Number = this.§9K§.width;
         var _loc7_:Number = this.§9K§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§'v§);
            param1.setTexCoords(_loc9_,_loc4_ + §'v§.x * _loc6_,_loc5_ + §'v§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§8!Q§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8!Q§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§1!Q§)
         {
            return this.§1!Q§;
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
            this.§1!Q§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§1!Q§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§1!Q§;
      }
      
      public function get §]!_§() : Boolean
      {
         return this.§`"§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§9K§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§8!Q§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§8!Q§.root;
      }
      
      override public function get width() : Number
      {
         return this.§8!Q§.width * this.§,!s§.width;
      }
      
      override public function get height() : Number
      {
         return this.§8!Q§.height * this.§,!s§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8!Q§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8!Q§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8!Q§.requestBaseTextureUpdate(param1);
      }
   }
}
