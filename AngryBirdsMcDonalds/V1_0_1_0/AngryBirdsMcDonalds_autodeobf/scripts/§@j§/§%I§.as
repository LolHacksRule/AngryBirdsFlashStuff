package §@j§
{
   import §=E§.§`F§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%I§ extends Texture
   {
      
      private static var §[!D§:Point = new Point();
       
      
      private var §@P§:Texture;
      
      private var §3_§:Rectangle;
      
      private var §%G§:Rectangle;
      
      private var §<!E§:Boolean;
      
      private var §3z§:BitmapData;
      
      public function §%I§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§@P§ = param1;
         this.§<!E§ = param3;
         if(param2 == null)
         {
            this.§8!f§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§8!f§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§<!E§)
         {
            this.§@P§.dispose();
         }
         if(this.§3z§)
         {
            this.§3z§.dispose();
            this.§3z§ = null;
         }
         super.dispose();
      }
      
      private function §8!f§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§3_§ = param1;
         this.§%G§ = param1.clone();
         var _loc2_:§%I§ = this.§@P§ as §%I§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3_§;
            this.§%G§.x = _loc3_.x + this.§%G§.x * _loc3_.width;
            this.§%G§.y = _loc3_.y + this.§%G§.y * _loc3_.height;
            this.§%G§.width *= _loc3_.width;
            this.§%G§.height *= _loc3_.height;
            _loc2_ = _loc2_.§@P§ as §%I§;
         }
      }
      
      override public function adjustVertexData(param1:§`F§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§%G§.x;
         var _loc5_:Number = this.§%G§.y;
         var _loc6_:Number = this.§%G§.width;
         var _loc7_:Number = this.§%G§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§[!D§);
            param1.setTexCoords(_loc9_,_loc4_ + §[!D§.x * _loc6_,_loc5_ + §[!D§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§@P§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§@P§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§3z§)
         {
            return this.§3z§;
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
            this.§3z§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§3z§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§3z§;
      }
      
      public function get §#4§() : Boolean
      {
         return this.§<!E§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%G§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§@P§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§@P§.root;
      }
      
      override public function get width() : Number
      {
         return this.§@P§.width * this.§3_§.width;
      }
      
      override public function get height() : Number
      {
         return this.§@P§.height * this.§3_§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§@P§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§@P§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§@P§.requestBaseTextureUpdate(param1);
      }
   }
}
