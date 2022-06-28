package §7i§
{
   import §8g§.VertexData;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § %§ extends Texture
   {
      
      private static var §=!J§:Point = new Point();
       
      
      private var §+w§:Texture;
      
      private var §;!J§:Rectangle;
      
      private var § !T§:Rectangle;
      
      private var §2-§:Boolean;
      
      private var §,L§:BitmapData;
      
      public function § %§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§+w§ = param1;
         this.§2-§ = param3;
         if(param2 == null)
         {
            this.§9g§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§9g§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§2-§)
         {
            this.§+w§.dispose();
         }
         if(this.§,L§)
         {
            this.§,L§.dispose();
            this.§,L§ = null;
         }
         super.dispose();
      }
      
      private function §9g§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§;!J§ = param1;
         this.§ !T§ = param1.clone();
         var _loc2_:§ %§ = this.§+w§ as § %§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;!J§;
            this.§ !T§.x = _loc3_.x + this.§ !T§.x * _loc3_.width;
            this.§ !T§.y = _loc3_.y + this.§ !T§.y * _loc3_.height;
            this.§ !T§.width *= _loc3_.width;
            this.§ !T§.height *= _loc3_.height;
            _loc2_ = _loc2_.§+w§ as § %§;
         }
      }
      
      override public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§ !T§.x;
         var _loc5_:Number = this.§ !T§.y;
         var _loc6_:Number = this.§ !T§.width;
         var _loc7_:Number = this.§ !T§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§=!J§);
            param1.setTexCoords(_loc9_,_loc4_ + §=!J§.x * _loc6_,_loc5_ + §=!J§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§+w§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§+w§.bitmapData;
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
      
      public function get §1!<§() : Boolean
      {
         return this.§2-§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ !T§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§+w§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§+w§.root;
      }
      
      override public function get width() : Number
      {
         return this.§+w§.width * this.§;!J§.width;
      }
      
      override public function get height() : Number
      {
         return this.§+w§.height * this.§;!J§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§+w§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§+w§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§+w§.requestBaseTextureUpdate(param1);
      }
   }
}
