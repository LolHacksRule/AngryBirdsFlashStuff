package §@'§
{
   import §%Q§.§`j§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § D§ extends Texture
   {
      
      private static var §1!C§:Point = new Point();
       
      
      private var §;c§:Texture;
      
      private var §[u§:Rectangle;
      
      private var §"!J§:Rectangle;
      
      private var §>!C§:Boolean;
      
      private var §;!I§:BitmapData;
      
      public function § D§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§;c§ = param1;
         this.§>!C§ = param3;
         if(param2 == null)
         {
            this.§8!H§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§8!H§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§>!C§)
         {
            this.§;c§.dispose();
         }
         if(this.§;!I§)
         {
            this.§;!I§.dispose();
            this.§;!I§ = null;
         }
         super.dispose();
      }
      
      private function §8!H§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§[u§ = param1;
         this.§"!J§ = param1.clone();
         var _loc2_:§ D§ = this.§;c§ as § D§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§[u§;
            this.§"!J§.x = _loc3_.x + this.§"!J§.x * _loc3_.width;
            this.§"!J§.y = _loc3_.y + this.§"!J§.y * _loc3_.height;
            this.§"!J§.width *= _loc3_.width;
            this.§"!J§.height *= _loc3_.height;
            _loc2_ = _loc2_.§;c§ as § D§;
         }
      }
      
      override public function adjustVertexData(param1:§`j§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§"!J§.x;
         var _loc5_:Number = this.§"!J§.y;
         var _loc6_:Number = this.§"!J§.width;
         var _loc7_:Number = this.§"!J§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§1!C§);
            param1.setTexCoords(_loc9_,_loc4_ + §1!C§.x * _loc6_,_loc5_ + §1!C§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§;c§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§;c§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§;!I§)
         {
            return this.§;!I§;
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
            this.§;!I§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§;!I§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§;!I§;
      }
      
      public function get § 0§() : Boolean
      {
         return this.§>!C§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§"!J§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§;c§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§;c§.root;
      }
      
      override public function get width() : Number
      {
         return this.§;c§.width * this.§[u§.width;
      }
      
      override public function get height() : Number
      {
         return this.§;c§.height * this.§[u§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;c§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;c§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§;c§.requestBaseTextureUpdate(param1);
      }
   }
}
