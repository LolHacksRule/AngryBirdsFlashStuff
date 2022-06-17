package §""'§
{
   import §#"l§.§ #b§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<"A§ extends Texture
   {
      
      private static var §@"j§:Point = new Point();
       
      
      private var §6#O§:Texture;
      
      private var §6"Z§:§4$1§;
      
      private var §=[§:Rectangle;
      
      private var §7$6§:Rectangle;
      
      private var § $'§:Boolean;
      
      private var §=$2§:BitmapData;
      
      public function §<"A§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§6#O§ = param1;
         this.§ $'§ = param3;
         this.§6"Z§ = this.§6#O§.root;
         if(param2 == null)
         {
            this.§25§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§25§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§ $'§)
         {
            this.§6#O§.dispose();
         }
         if(this.§=$2§)
         {
            this.§=$2§.dispose();
            this.§=$2§ = null;
         }
         super.dispose();
      }
      
      private function §25§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§=[§ = param1;
         this.§7$6§ = param1.clone();
         var _loc2_:§<"A§ = this.§6#O§ as §<"A§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§=[§;
            this.§7$6§.x = _loc3_.x + this.§7$6§.x * _loc3_.width;
            this.§7$6§.y = _loc3_.y + this.§7$6§.y * _loc3_.height;
            this.§7$6§.width *= _loc3_.width;
            this.§7$6§.height *= _loc3_.height;
            _loc2_ = _loc2_.§6#O§ as §<"A§;
         }
      }
      
      override public function adjustVertexData(param1:§ #b§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§7$6§.x;
         var _loc5_:Number = this.§7$6§.y;
         var _loc6_:Number = this.§7$6§.width;
         var _loc7_:Number = this.§7$6§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§@"j§);
            param1.setTexCoords(_loc9_,_loc4_ + §@"j§.x * _loc6_,_loc5_ + §@"j§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§6#O§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§6#O§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§=$2§)
         {
            return this.§=$2§;
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
            this.§=$2§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§=$2§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§=$2§;
      }
      
      public function get §!"O§() : Boolean
      {
         return this.§ $'§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=[§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§6#O§.getBase(param1);
      }
      
      override public function get root() : §4$1§
      {
         return this.§6"Z§;
      }
      
      override public function get format() : String
      {
         return this.§6#O§.format;
      }
      
      override public function get width() : Number
      {
         return this.§6#O§.width * this.§=[§.width;
      }
      
      override public function get height() : Number
      {
         return this.§6#O§.height * this.§=[§.height;
      }
      
      override public function get nativeWidth() : Number
      {
         return this.§6#O§.nativeWidth * this.§=[§.width;
      }
      
      override public function get nativeHeight() : Number
      {
         return this.§6#O§.nativeHeight * this.§=[§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§6#O§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§6#O§.premultipliedAlpha;
      }
      
      override public function get scale() : Number
      {
         return this.§6#O§.scale;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§6#O§.requestBaseTextureUpdate(param1);
      }
   }
}
