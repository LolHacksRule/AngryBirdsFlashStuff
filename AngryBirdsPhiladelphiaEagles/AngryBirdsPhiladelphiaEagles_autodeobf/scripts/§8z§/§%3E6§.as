package §8z§
{
   import §+§.§0&§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>6§ extends Texture
   {
      
      private static var §6!D§:Point = new Point();
       
      
      private var §'#§:Texture;
      
      private var §,!3§:Rectangle;
      
      private var §%!I§:Rectangle;
      
      private var §3!%§:Boolean;
      
      private var §<!J§:BitmapData;
      
      public function §>6§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§'#§ = param1;
         this.§3!%§ = param3;
         if(param2 == null)
         {
            this.§-G§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§-G§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§3!%§)
         {
            this.§'#§.dispose();
         }
         if(this.§<!J§)
         {
            this.§<!J§.dispose();
            this.§<!J§ = null;
         }
         super.dispose();
      }
      
      private function §-G§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§,!3§ = param1;
         this.§%!I§ = param1.clone();
         var _loc2_:§>6§ = this.§'#§ as §>6§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,!3§;
            this.§%!I§.x = _loc3_.x + this.§%!I§.x * _loc3_.width;
            this.§%!I§.y = _loc3_.y + this.§%!I§.y * _loc3_.height;
            this.§%!I§.width *= _loc3_.width;
            this.§%!I§.height *= _loc3_.height;
            _loc2_ = _loc2_.§'#§ as §>6§;
         }
      }
      
      override public function adjustVertexData(param1:§0&§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§%!I§.x;
         var _loc5_:Number = this.§%!I§.y;
         var _loc6_:Number = this.§%!I§.width;
         var _loc7_:Number = this.§%!I§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§6!D§);
            param1.setTexCoords(_loc9_,_loc4_ + §6!D§.x * _loc6_,_loc5_ + §6!D§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§'#§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§'#§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§<!J§)
         {
            return this.§<!J§;
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
            this.§<!J§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§<!J§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§<!J§;
      }
      
      public function get §3!+§() : Boolean
      {
         return this.§3!%§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%!I§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§'#§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§'#§.root;
      }
      
      override public function get width() : Number
      {
         return this.§'#§.width * this.§,!3§.width;
      }
      
      override public function get height() : Number
      {
         return this.§'#§.height * this.§,!3§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§'#§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§'#§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§'#§.requestBaseTextureUpdate(param1);
      }
   }
}
