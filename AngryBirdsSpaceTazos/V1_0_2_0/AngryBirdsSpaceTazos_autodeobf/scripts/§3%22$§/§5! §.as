package §3"$§
{
   import §!!a§.§-!F§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5! § extends Texture
   {
      
      private static var § if§:Point = new Point();
       
      
      private var §<;§:Texture;
      
      private var §5w§:Rectangle;
      
      private var §=[§:Rectangle;
      
      private var §1n§:Boolean;
      
      private var §+[§:BitmapData;
      
      public function §5! §(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§<;§ = param1;
         this.§1n§ = param3;
         if(param2 == null)
         {
            this.§#"4§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§#"4§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§1n§)
         {
            this.§<;§.dispose();
         }
         if(this.§+[§)
         {
            this.§+[§.dispose();
            this.§+[§ = null;
         }
         super.dispose();
      }
      
      private function §#"4§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§5w§ = param1;
         this.§=[§ = param1.clone();
         var _loc2_:§5! § = this.§<;§ as §5! §;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§5w§;
            this.§=[§.x = _loc3_.x + this.§=[§.x * _loc3_.width;
            this.§=[§.y = _loc3_.y + this.§=[§.y * _loc3_.height;
            this.§=[§.width *= _loc3_.width;
            this.§=[§.height *= _loc3_.height;
            _loc2_ = _loc2_.§<;§ as §5! §;
         }
      }
      
      override public function adjustVertexData(param1:§-!F§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§=[§.x;
         var _loc5_:Number = this.§=[§.y;
         var _loc6_:Number = this.§=[§.width;
         var _loc7_:Number = this.§=[§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§ if§);
            param1.setTexCoords(_loc9_,_loc4_ + § if§.x * _loc6_,_loc5_ + § if§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§<;§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§<;§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+[§)
         {
            return this.§+[§;
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
            this.§+[§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+[§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+[§;
      }
      
      public function get § !y§() : Boolean
      {
         return this.§1n§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§=[§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§<;§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§<;§.root;
      }
      
      override public function get width() : Number
      {
         return this.§<;§.width * this.§5w§.width;
      }
      
      override public function get height() : Number
      {
         return this.§<;§.height * this.§5w§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§<;§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§<;§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§<;§.requestBaseTextureUpdate(param1);
      }
   }
}
