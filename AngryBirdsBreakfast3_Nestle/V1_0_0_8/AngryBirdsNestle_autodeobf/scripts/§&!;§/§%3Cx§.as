package §&!;§
{
   import §"!t§.§&s§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<x§ extends Texture
   {
      
      private static var §0!b§:Point = new Point();
       
      
      private var §1!8§:Texture;
      
      private var §%R§:Rectangle;
      
      private var §3I§:Rectangle;
      
      private var §>G§:Boolean;
      
      private var §]! §:BitmapData;
      
      public function §<x§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§1!8§ = param1;
         this.§>G§ = param3;
         if(param2 == null)
         {
            this.§[j§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§[j§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§>G§)
         {
            this.§1!8§.dispose();
         }
         if(this.§]! §)
         {
            this.§]! §.dispose();
            this.§]! § = null;
         }
         super.dispose();
      }
      
      private function §[j§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§%R§ = param1;
         this.§3I§ = param1.clone();
         var _loc2_:§<x§ = this.§1!8§ as §<x§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§%R§;
            this.§3I§.x = _loc3_.x + this.§3I§.x * _loc3_.width;
            this.§3I§.y = _loc3_.y + this.§3I§.y * _loc3_.height;
            this.§3I§.width *= _loc3_.width;
            this.§3I§.height *= _loc3_.height;
            _loc2_ = _loc2_.§1!8§ as §<x§;
         }
      }
      
      override public function adjustVertexData(param1:§&s§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§3I§.x;
         var _loc5_:Number = this.§3I§.y;
         var _loc6_:Number = this.§3I§.width;
         var _loc7_:Number = this.§3I§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§0!b§);
            param1.setTexCoords(_loc9_,_loc4_ + §0!b§.x * _loc6_,_loc5_ + §0!b§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§1!8§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§1!8§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§]! §)
         {
            return this.§]! §;
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
            this.§]! § = new BitmapData(_loc3_,_loc4_,true,0);
            this.§]! §.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§]! §;
      }
      
      public function get §<0§() : Boolean
      {
         return this.§>G§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§3I§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§1!8§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§1!8§.root;
      }
      
      override public function get width() : Number
      {
         return this.§1!8§.width * this.§%R§.width;
      }
      
      override public function get height() : Number
      {
         return this.§1!8§.height * this.§%R§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§1!8§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1!8§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§1!8§.requestBaseTextureUpdate(param1);
      }
   }
}
