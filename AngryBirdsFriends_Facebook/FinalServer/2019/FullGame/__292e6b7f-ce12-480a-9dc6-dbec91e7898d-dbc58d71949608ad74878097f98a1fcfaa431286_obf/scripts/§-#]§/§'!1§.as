package §-#]§
{
   import §8#p§.§>!B§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!1§ extends Texture
   {
      
      private static var §7">§:Point = new Point();
       
      
      private var §&!R§:Texture;
      
      private var §6!R§:§7"z§;
      
      private var §;$B§:Rectangle;
      
      private var §9$?§:Rectangle;
      
      private var §="b§:Boolean;
      
      private var §7"s§:BitmapData;
      
      public function §'!1§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§&!R§ = param1;
         this.§="b§ = param3;
         this.§6!R§ = this.§&!R§.root;
         if(param2 == null)
         {
            this.§`#z§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§`#z§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§="b§)
         {
            this.§&!R§.dispose();
         }
         if(this.§7"s§)
         {
            this.§7"s§.dispose();
            this.§7"s§ = null;
         }
         super.dispose();
      }
      
      private function §`#z§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§;$B§ = param1;
         this.§9$?§ = param1.clone();
         var _loc2_:§'!1§ = this.§&!R§ as §'!1§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§;$B§;
            this.§9$?§.x = _loc3_.x + this.§9$?§.x * _loc3_.width;
            this.§9$?§.y = _loc3_.y + this.§9$?§.y * _loc3_.height;
            this.§9$?§.width *= _loc3_.width;
            this.§9$?§.height *= _loc3_.height;
            _loc2_ = _loc2_.§&!R§ as §'!1§;
         }
      }
      
      override public function adjustVertexData(param1:§>!B§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§9$?§.x;
         var _loc5_:Number = this.§9$?§.y;
         var _loc6_:Number = this.§9$?§.width;
         var _loc7_:Number = this.§9$?§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§7">§);
            param1.setTexCoords(_loc9_,_loc4_ + §7">§.x * _loc6_,_loc5_ + §7">§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§&!R§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§&!R§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§7"s§)
         {
            return this.§7"s§;
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
            this.§7"s§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§7"s§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§7"s§;
      }
      
      public function get §`!l§() : Boolean
      {
         return this.§="b§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§;$B§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§&!R§.getBase(param1);
      }
      
      override public function get root() : §7"z§
      {
         return this.§6!R§;
      }
      
      override public function get format() : String
      {
         return this.§&!R§.format;
      }
      
      override public function get width() : Number
      {
         return this.§&!R§.width * this.§;$B§.width;
      }
      
      override public function get height() : Number
      {
         return this.§&!R§.height * this.§;$B§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§&!R§.nativeWidth * this.§;$B§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§&!R§.nativeHeight * this.§;$B§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§&!R§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§&!R§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§&!R§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§&!R§.requestBaseTextureUpdate(param1);
      }
   }
}
