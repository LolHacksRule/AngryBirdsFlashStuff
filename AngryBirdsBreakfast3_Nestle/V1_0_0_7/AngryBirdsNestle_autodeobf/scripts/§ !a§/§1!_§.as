package § !a§
{
   import §=D§.§3a§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!_§ extends Texture
   {
      
      private static var §!!v§:Point = new Point();
       
      
      private var §,l§:Texture;
      
      private var §4O§:Rectangle;
      
      private var §each §:Rectangle;
      
      private var §,3§:Boolean;
      
      private var §-" §:BitmapData;
      
      public function §1!_§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§,l§ = param1;
         this.§,3§ = param3;
         if(param2 == null)
         {
            this.§8!>§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§8!>§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§,3§)
         {
            this.§,l§.dispose();
         }
         if(this.§-" §)
         {
            this.§-" §.dispose();
            this.§-" § = null;
         }
         super.dispose();
      }
      
      private function §8!>§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§4O§ = param1;
         this.§each § = param1.clone();
         var _loc2_:§1!_§ = this.§,l§ as §1!_§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§4O§;
            this.§each §.x = _loc3_.x + this.§each §.x * _loc3_.width;
            this.§each §.y = _loc3_.y + this.§each §.y * _loc3_.height;
            this.§each §.width *= _loc3_.width;
            this.§each §.height *= _loc3_.height;
            _loc2_ = _loc2_.§,l§ as §1!_§;
         }
      }
      
      override public function adjustVertexData(param1:§3a§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§each §.x;
         var _loc5_:Number = this.§each §.y;
         var _loc6_:Number = this.§each §.width;
         var _loc7_:Number = this.§each §.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§!!v§);
            param1.setTexCoords(_loc9_,_loc4_ + §!!v§.x * _loc6_,_loc5_ + §!!v§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§,l§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§,l§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§-" §)
         {
            return this.§-" §;
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
            this.§-" § = new BitmapData(_loc3_,_loc4_,true,0);
            this.§-" §.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§-" §;
      }
      
      public function get §'2§() : Boolean
      {
         return this.§,3§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§each §.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§,l§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§,l§.root;
      }
      
      override public function get width() : Number
      {
         return this.§,l§.width * this.§4O§.width;
      }
      
      override public function get height() : Number
      {
         return this.§,l§.height * this.§4O§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§,l§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§,l§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§,l§.requestBaseTextureUpdate(param1);
      }
   }
}
