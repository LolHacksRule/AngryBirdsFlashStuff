package §?V§
{
   import §-$§.§6"5§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3k§ extends Texture
   {
      
      private static var §+'§:Point = new Point();
       
      
      private var §>w§:Texture;
      
      private var §9!i§:Rectangle;
      
      private var §3!`§:Rectangle;
      
      private var §5Q§:Boolean;
      
      private var §+!O§:BitmapData;
      
      public function §3k§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§>w§ = param1;
         this.§5Q§ = param3;
         if(param2 == null)
         {
            this.§"!,§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§"!,§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§5Q§)
         {
            this.§>w§.dispose();
         }
         if(this.§+!O§)
         {
            this.§+!O§.dispose();
            this.§+!O§ = null;
         }
         super.dispose();
      }
      
      private function §"!,§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§9!i§ = param1;
         this.§3!`§ = param1.clone();
         var _loc2_:§3k§ = this.§>w§ as §3k§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§9!i§;
            this.§3!`§.x = _loc3_.x + this.§3!`§.x * _loc3_.width;
            this.§3!`§.y = _loc3_.y + this.§3!`§.y * _loc3_.height;
            this.§3!`§.width *= _loc3_.width;
            this.§3!`§.height *= _loc3_.height;
            _loc2_ = _loc2_.§>w§ as §3k§;
         }
      }
      
      override public function adjustVertexData(param1:§6"5§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§3!`§.x;
         var _loc5_:Number = this.§3!`§.y;
         var _loc6_:Number = this.§3!`§.width;
         var _loc7_:Number = this.§3!`§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§+'§);
            param1.setTexCoords(_loc9_,_loc4_ + §+'§.x * _loc6_,_loc5_ + §+'§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§>w§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§>w§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+!O§)
         {
            return this.§+!O§;
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
            this.§+!O§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+!O§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+!O§;
      }
      
      public function get §>G§() : Boolean
      {
         return this.§5Q§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§3!`§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§>w§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§>w§.root;
      }
      
      override public function get width() : Number
      {
         return this.§>w§.width * this.§9!i§.width;
      }
      
      override public function get height() : Number
      {
         return this.§>w§.height * this.§9!i§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§>w§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§>w§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§>w§.requestBaseTextureUpdate(param1);
      }
   }
}
