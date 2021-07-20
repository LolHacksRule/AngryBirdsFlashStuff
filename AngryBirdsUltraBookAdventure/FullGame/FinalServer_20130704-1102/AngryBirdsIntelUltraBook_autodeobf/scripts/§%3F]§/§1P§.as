package §?]§
{
   import §7H§.§'!w§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1P§ extends Texture
   {
      
      private static var §'Q§:Point = new Point();
       
      
      private var §3I§:Texture;
      
      private var §]" §:Rectangle;
      
      private var §1Y§:Rectangle;
      
      private var §?!j§:Boolean;
      
      private var §3!v§:BitmapData;
      
      public function §1P§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§3I§ = param1;
         this.§?!j§ = param3;
         if(param2 == null)
         {
            this.§5!L§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§5!L§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§?!j§)
         {
            this.§3I§.dispose();
         }
         if(this.§3!v§)
         {
            this.§3!v§.dispose();
            this.§3!v§ = null;
         }
         super.dispose();
      }
      
      private function §5!L§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§]" § = param1;
         this.§1Y§ = param1.clone();
         var _loc2_:§1P§ = this.§3I§ as §1P§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§]" §;
            this.§1Y§.x = _loc3_.x + this.§1Y§.x * _loc3_.width;
            this.§1Y§.y = _loc3_.y + this.§1Y§.y * _loc3_.height;
            this.§1Y§.width *= _loc3_.width;
            this.§1Y§.height *= _loc3_.height;
            _loc2_ = _loc2_.§3I§ as §1P§;
         }
      }
      
      override public function adjustVertexData(param1:§'!w§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§1Y§.x;
         var _loc5_:Number = this.§1Y§.y;
         var _loc6_:Number = this.§1Y§.width;
         var _loc7_:Number = this.§1Y§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§'Q§);
            param1.setTexCoords(_loc9_,_loc4_ + §'Q§.x * _loc6_,_loc5_ + §'Q§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§3I§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§3I§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3!v§)
         {
            return this.§3!v§;
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
            this.§3!v§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§3!v§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§3!v§;
      }
      
      public function get §'v§() : Boolean
      {
         return this.§?!j§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§1Y§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§3I§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§3I§.root;
      }
      
      override public function get width() : Number
      {
         return this.§3I§.width * this.§]" §.width;
      }
      
      override public function get height() : Number
      {
         return this.§3I§.height * this.§]" §.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§3I§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§3I§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§3I§.requestBaseTextureUpdate(param1);
      }
   }
}
