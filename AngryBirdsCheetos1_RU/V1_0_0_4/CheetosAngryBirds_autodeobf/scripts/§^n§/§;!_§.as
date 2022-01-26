package §^n§
{
   import §5L§.§^!C§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!_§ extends Texture
   {
      
      private static var §do§:Point = new Point();
       
      
      private var §0!X§:Texture;
      
      private var §>y§:Rectangle;
      
      private var §5!&§:Rectangle;
      
      private var §2g§:Boolean;
      
      private var §,!Y§:BitmapData;
      
      public function §;!_§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§0!X§ = param1;
         this.§2g§ = param3;
         if(param2 == null)
         {
            this.§[e§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§[e§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§2g§)
         {
            this.§0!X§.dispose();
         }
         if(this.§,!Y§)
         {
            this.§,!Y§.dispose();
            this.§,!Y§ = null;
         }
         super.dispose();
      }
      
      private function §[e§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§>y§ = param1;
         this.§5!&§ = param1.clone();
         var _loc2_:§;!_§ = this.§0!X§ as §;!_§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§>y§;
            this.§5!&§.x = _loc3_.x + this.§5!&§.x * _loc3_.width;
            this.§5!&§.y = _loc3_.y + this.§5!&§.y * _loc3_.height;
            this.§5!&§.width *= _loc3_.width;
            this.§5!&§.height *= _loc3_.height;
            _loc2_ = _loc2_.§0!X§ as §;!_§;
         }
      }
      
      override public function adjustVertexData(param1:§^!C§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§5!&§.x;
         var _loc5_:Number = this.§5!&§.y;
         var _loc6_:Number = this.§5!&§.width;
         var _loc7_:Number = this.§5!&§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§do§);
            param1.setTexCoords(_loc9_,_loc4_ + §do§.x * _loc6_,_loc5_ + §do§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§0!X§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0!X§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§,!Y§)
         {
            return this.§,!Y§;
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
            this.§,!Y§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§,!Y§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§,!Y§;
      }
      
      public function get §#!§() : Boolean
      {
         return this.§2g§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§5!&§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§0!X§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§0!X§.root;
      }
      
      override public function get width() : Number
      {
         return this.§0!X§.width * this.§>y§.width;
      }
      
      override public function get height() : Number
      {
         return this.§0!X§.height * this.§>y§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§0!X§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§0!X§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§0!X§.requestBaseTextureUpdate(param1);
      }
   }
}
