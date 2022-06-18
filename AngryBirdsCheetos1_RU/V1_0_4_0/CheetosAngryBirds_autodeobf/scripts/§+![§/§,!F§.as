package §+![§
{
   import §9![§.§%!L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!F§ extends Texture
   {
      
      private static var §@j§:Point = new Point();
       
      
      private var §8!%§:Texture;
      
      private var §]k§:Rectangle;
      
      private var § null§:Rectangle;
      
      private var §,?§:Boolean;
      
      private var §,L§:BitmapData;
      
      public function §,!F§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§8!%§ = param1;
         this.§,?§ = param3;
         if(param2 == null)
         {
            this.§ !D§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§ !D§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§,?§)
         {
            this.§8!%§.dispose();
         }
         if(this.§,L§)
         {
            this.§,L§.dispose();
            this.§,L§ = null;
         }
         super.dispose();
      }
      
      private function § !D§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§]k§ = param1;
         this.§ null§ = param1.clone();
         var _loc2_:§,!F§ = this.§8!%§ as §,!F§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§]k§;
            this.§ null§.x = _loc3_.x + this.§ null§.x * _loc3_.width;
            this.§ null§.y = _loc3_.y + this.§ null§.y * _loc3_.height;
            this.§ null§.width *= _loc3_.width;
            this.§ null§.height *= _loc3_.height;
            _loc2_ = _loc2_.§8!%§ as §,!F§;
         }
      }
      
      override public function adjustVertexData(param1:§%!L§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§ null§.x;
         var _loc5_:Number = this.§ null§.y;
         var _loc6_:Number = this.§ null§.width;
         var _loc7_:Number = this.§ null§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§@j§);
            param1.setTexCoords(_loc9_,_loc4_ + §@j§.x * _loc6_,_loc5_ + §@j§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§8!%§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§8!%§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,L§)
         {
            return this.§,L§;
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
            this.§,L§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§,L§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§,L§;
      }
      
      public function get §48§() : Boolean
      {
         return this.§,?§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ null§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§8!%§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§8!%§.root;
      }
      
      override public function get width() : Number
      {
         return this.§8!%§.width * this.§]k§.width;
      }
      
      override public function get height() : Number
      {
         return this.§8!%§.height * this.§]k§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§8!%§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§8!%§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§8!%§.requestBaseTextureUpdate(param1);
      }
   }
}
