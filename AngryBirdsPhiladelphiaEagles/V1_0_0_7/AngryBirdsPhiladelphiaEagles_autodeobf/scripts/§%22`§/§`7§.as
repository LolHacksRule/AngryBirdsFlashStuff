package §"`§
{
   import §#!5§.§case §;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`7§ extends Texture
   {
      
      private static var §<G§:Point = new Point();
       
      
      private var §6"§:Texture;
      
      private var §=q§:Rectangle;
      
      private var §^M§:Rectangle;
      
      private var §1!@§:Boolean;
      
      private var §6!N§:BitmapData;
      
      public function §`7§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§6"§ = param1;
         this.§1!@§ = param3;
         if(param2 == null)
         {
            this.§-N§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§-N§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§1!@§)
         {
            this.§6"§.dispose();
         }
         if(this.§6!N§)
         {
            this.§6!N§.dispose();
            this.§6!N§ = null;
         }
         super.dispose();
      }
      
      private function §-N§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§=q§ = param1;
         this.§^M§ = param1.clone();
         var _loc2_:§`7§ = this.§6"§ as §`7§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§=q§;
            this.§^M§.x = _loc3_.x + this.§^M§.x * _loc3_.width;
            this.§^M§.y = _loc3_.y + this.§^M§.y * _loc3_.height;
            this.§^M§.width *= _loc3_.width;
            this.§^M§.height *= _loc3_.height;
            _loc2_ = _loc2_.§6"§ as §`7§;
         }
      }
      
      override public function adjustVertexData(param1:§case §, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§^M§.x;
         var _loc5_:Number = this.§^M§.y;
         var _loc6_:Number = this.§^M§.width;
         var _loc7_:Number = this.§^M§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§<G§);
            param1.setTexCoords(_loc9_,_loc4_ + §<G§.x * _loc6_,_loc5_ + §<G§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§6"§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6"§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§6!N§)
         {
            return this.§6!N§;
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
            this.§6!N§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§6!N§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§6!N§;
      }
      
      public function get §7S§() : Boolean
      {
         return this.§1!@§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§^M§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§6"§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§6"§.root;
      }
      
      override public function get width() : Number
      {
         return this.§6"§.width * this.§=q§.width;
      }
      
      override public function get height() : Number
      {
         return this.§6"§.height * this.§=q§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6"§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6"§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6"§.requestBaseTextureUpdate(param1);
      }
   }
}
