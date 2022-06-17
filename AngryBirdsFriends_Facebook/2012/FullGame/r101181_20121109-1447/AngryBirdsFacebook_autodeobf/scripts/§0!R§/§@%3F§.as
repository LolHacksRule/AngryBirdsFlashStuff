package §0!R§
{
   import §1V§.§1!-§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@?§ extends Texture
   {
      
      private static var §`!f§:Point = new Point();
       
      
      private var §[!N§:Texture;
      
      private var §!!d§:Rectangle;
      
      private var §!5§:Rectangle;
      
      private var §@!z§:Boolean;
      
      private var §'T§:BitmapData;
      
      public function §@?§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§[!N§ = param1;
         this.§@!z§ = param3;
         if(param2 == null)
         {
            this.§]B§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§]B§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@!z§)
         {
            this.§[!N§.dispose();
         }
         if(this.§'T§)
         {
            this.§'T§.dispose();
            this.§'T§ = null;
         }
         super.dispose();
      }
      
      private function §]B§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§!!d§ = param1;
         this.§!5§ = param1.clone();
         var _loc2_:§@?§ = this.§[!N§ as §@?§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§!!d§;
            this.§!5§.x = _loc3_.x + this.§!5§.x * _loc3_.width;
            this.§!5§.y = _loc3_.y + this.§!5§.y * _loc3_.height;
            this.§!5§.width *= _loc3_.width;
            this.§!5§.height *= _loc3_.height;
            _loc2_ = _loc2_.§[!N§ as §@?§;
         }
      }
      
      override public function adjustVertexData(param1:§1!-§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§!5§.x;
         var _loc5_:Number = this.§!5§.y;
         var _loc6_:Number = this.§!5§.width;
         var _loc7_:Number = this.§!5§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§`!f§);
            param1.setTexCoords(_loc9_,_loc4_ + §`!f§.x * _loc6_,_loc5_ + §`!f§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§[!N§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§[!N§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§'T§)
         {
            return this.§'T§;
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
            this.§'T§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§'T§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§'T§;
      }
      
      public function get §7!=§() : Boolean
      {
         return this.§@!z§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§!5§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§[!N§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§[!N§.root;
      }
      
      override public function get width() : Number
      {
         return this.§[!N§.width * this.§!!d§.width;
      }
      
      override public function get height() : Number
      {
         return this.§[!N§.height * this.§!!d§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§[!N§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§[!N§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§[!N§.requestBaseTextureUpdate(param1);
      }
   }
}
