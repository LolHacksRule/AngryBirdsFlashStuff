package §^Q§
{
   import §!p§.§'%§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § 5§ extends Texture
   {
      
      private static var §3&§:Point = new Point();
       
      
      private var §0"1§:Texture;
      
      private var §+!E§:Rectangle;
      
      private var §+O§:Rectangle;
      
      private var §#"8§:Boolean;
      
      private var §<!J§:BitmapData;
      
      public function § 5§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§0"1§ = param1;
         this.§#"8§ = param3;
         if(param2 == null)
         {
            this.§<'§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§<'§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#"8§)
         {
            this.§0"1§.dispose();
         }
         if(this.§<!J§)
         {
            this.§<!J§.dispose();
            this.§<!J§ = null;
         }
         super.dispose();
      }
      
      private function §<'§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§+!E§ = param1;
         this.§+O§ = param1.clone();
         var _loc2_:§ 5§ = this.§0"1§ as § 5§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§+!E§;
            this.§+O§.x = _loc3_.x + this.§+O§.x * _loc3_.width;
            this.§+O§.y = _loc3_.y + this.§+O§.y * _loc3_.height;
            this.§+O§.width *= _loc3_.width;
            this.§+O§.height *= _loc3_.height;
            _loc2_ = _loc2_.§0"1§ as § 5§;
         }
      }
      
      override public function adjustVertexData(param1:§'%§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§+O§.x;
         var _loc5_:Number = this.§+O§.y;
         var _loc6_:Number = this.§+O§.width;
         var _loc7_:Number = this.§+O§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§3&§);
            param1.setTexCoords(_loc9_,_loc4_ + §3&§.x * _loc6_,_loc5_ + §3&§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§0"1§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§0"1§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§<!J§)
         {
            return this.§<!J§;
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
            this.§<!J§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§<!J§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§<!J§;
      }
      
      public function get §[A§() : Boolean
      {
         return this.§#"8§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§+O§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§0"1§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§0"1§.root;
      }
      
      override public function get width() : Number
      {
         return this.§0"1§.width * this.§+!E§.width;
      }
      
      override public function get height() : Number
      {
         return this.§0"1§.height * this.§+!E§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§0"1§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§0"1§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§0"1§.requestBaseTextureUpdate(param1);
      }
   }
}
