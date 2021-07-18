package §`!#§
{
   import §&!Z§.§6!r§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!X§ extends Texture
   {
      
      private static var §+!d§:Point = new Point();
       
      
      private var §]!&§:Texture;
      
      private var §,!d§:Rectangle;
      
      private var § T§:Rectangle;
      
      private var §,!I§:Boolean;
      
      private var §<o§:BitmapData;
      
      public function §`!X§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§]!&§ = param1;
         this.§,!I§ = param3;
         if(param2 == null)
         {
            this.§`!q§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§`!q§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§,!I§)
         {
            this.§]!&§.dispose();
         }
         if(this.§<o§)
         {
            this.§<o§.dispose();
            this.§<o§ = null;
         }
         super.dispose();
      }
      
      private function §`!q§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§,!d§ = param1;
         this.§ T§ = param1.clone();
         var _loc2_:§`!X§ = this.§]!&§ as §`!X§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,!d§;
            this.§ T§.x = _loc3_.x + this.§ T§.x * _loc3_.width;
            this.§ T§.y = _loc3_.y + this.§ T§.y * _loc3_.height;
            this.§ T§.width *= _loc3_.width;
            this.§ T§.height *= _loc3_.height;
            _loc2_ = _loc2_.§]!&§ as §`!X§;
         }
      }
      
      override public function adjustVertexData(param1:§6!r§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§ T§.x;
         var _loc5_:Number = this.§ T§.y;
         var _loc6_:Number = this.§ T§.width;
         var _loc7_:Number = this.§ T§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§+!d§);
            param1.setTexCoords(_loc9_,_loc4_ + §+!d§.x * _loc6_,_loc5_ + §+!d§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§]!&§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§]!&§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§<o§)
         {
            return this.§<o§;
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
            this.§<o§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§<o§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§<o§;
      }
      
      public function get § !]§() : Boolean
      {
         return this.§,!I§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ T§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§]!&§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§]!&§.root;
      }
      
      override public function get width() : Number
      {
         return this.§]!&§.width * this.§,!d§.width;
      }
      
      override public function get height() : Number
      {
         return this.§]!&§.height * this.§,!d§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§]!&§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§]!&§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§]!&§.requestBaseTextureUpdate(param1);
      }
   }
}
