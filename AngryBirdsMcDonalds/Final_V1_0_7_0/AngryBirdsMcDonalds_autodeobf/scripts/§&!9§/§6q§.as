package §&!9§
{
   import §'!>§.§3K§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6q§ extends Texture
   {
      
      private static var §^X§:Point = new Point();
       
      
      private var §?!I§:Texture;
      
      private var §<y§:Rectangle;
      
      private var §,!4§:Rectangle;
      
      private var §7N§:Boolean;
      
      private var §'!n§:BitmapData;
      
      public function §6q§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§?!I§ = param1;
         this.§7N§ = param3;
         if(param2 == null)
         {
            this.§^!=§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§^!=§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§7N§)
         {
            this.§?!I§.dispose();
         }
         if(this.§'!n§)
         {
            this.§'!n§.dispose();
            this.§'!n§ = null;
         }
         super.dispose();
      }
      
      private function §^!=§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§<y§ = param1;
         this.§,!4§ = param1.clone();
         var _loc2_:§6q§ = this.§?!I§ as §6q§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§<y§;
            this.§,!4§.x = _loc3_.x + this.§,!4§.x * _loc3_.width;
            this.§,!4§.y = _loc3_.y + this.§,!4§.y * _loc3_.height;
            this.§,!4§.width *= _loc3_.width;
            this.§,!4§.height *= _loc3_.height;
            _loc2_ = _loc2_.§?!I§ as §6q§;
         }
      }
      
      override public function adjustVertexData(param1:§3K§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§,!4§.x;
         var _loc5_:Number = this.§,!4§.y;
         var _loc6_:Number = this.§,!4§.width;
         var _loc7_:Number = this.§,!4§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§^X§);
            param1.setTexCoords(_loc9_,_loc4_ + §^X§.x * _loc6_,_loc5_ + §^X§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§?!I§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§?!I§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§'!n§)
         {
            return this.§'!n§;
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
            this.§'!n§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§'!n§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§'!n§;
      }
      
      public function get §+!G§() : Boolean
      {
         return this.§7N§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§,!4§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§?!I§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§?!I§.root;
      }
      
      override public function get width() : Number
      {
         return this.§?!I§.width * this.§<y§.width;
      }
      
      override public function get height() : Number
      {
         return this.§?!I§.height * this.§<y§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§?!I§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§?!I§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§?!I§.requestBaseTextureUpdate(param1);
      }
   }
}
