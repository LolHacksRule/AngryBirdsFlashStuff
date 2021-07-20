package §!!S§
{
   import §`>§.§6v§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7%§ extends Texture
   {
      
      private static var §6!7§:Point = new Point();
       
      
      private var §^!R§:Texture;
      
      private var §,!4§:Rectangle;
      
      private var §-!5§:Rectangle;
      
      private var §]q§:Boolean;
      
      private var §"!"§:BitmapData;
      
      public function §7%§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§^!R§ = param1;
         this.§]q§ = param3;
         if(param2 == null)
         {
            this.§7!Z§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§7!Z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§]q§)
         {
            this.§^!R§.dispose();
         }
         if(this.§"!"§)
         {
            this.§"!"§.dispose();
            this.§"!"§ = null;
         }
         super.dispose();
      }
      
      private function §7!Z§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§,!4§ = param1;
         this.§-!5§ = param1.clone();
         var _loc2_:§7%§ = this.§^!R§ as §7%§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§,!4§;
            this.§-!5§.x = _loc3_.x + this.§-!5§.x * _loc3_.width;
            this.§-!5§.y = _loc3_.y + this.§-!5§.y * _loc3_.height;
            this.§-!5§.width *= _loc3_.width;
            this.§-!5§.height *= _loc3_.height;
            _loc2_ = _loc2_.§^!R§ as §7%§;
         }
      }
      
      override public function adjustVertexData(param1:§6v§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§-!5§.x;
         var _loc5_:Number = this.§-!5§.y;
         var _loc6_:Number = this.§-!5§.width;
         var _loc7_:Number = this.§-!5§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§6!7§);
            param1.setTexCoords(_loc9_,_loc4_ + §6!7§.x * _loc6_,_loc5_ + §6!7§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§^!R§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^!R§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§"!"§)
         {
            return this.§"!"§;
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
            this.§"!"§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§"!"§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§"!"§;
      }
      
      public function get §2!`§() : Boolean
      {
         return this.§]q§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-!5§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§^!R§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§^!R§.root;
      }
      
      override public function get width() : Number
      {
         return this.§^!R§.width * this.§,!4§.width;
      }
      
      override public function get height() : Number
      {
         return this.§^!R§.height * this.§,!4§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^!R§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§^!R§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§^!R§.requestBaseTextureUpdate(param1);
      }
   }
}
