package §]!B§
{
   import §;! §.§?!T§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#!§ extends Texture
   {
      
      private static var §?z§:Point = new Point();
       
      
      private var §`!Z§:Texture;
      
      private var §&f§:Rectangle;
      
      private var §%"§:Rectangle;
      
      private var §0T§:Boolean;
      
      private var §+!?§:BitmapData;
      
      public function §#!§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§`!Z§ = param1;
         this.§0T§ = param3;
         if(param2 == null)
         {
            this.§%U§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§%U§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§0T§)
         {
            this.§`!Z§.dispose();
         }
         if(this.§+!?§)
         {
            this.§+!?§.dispose();
            this.§+!?§ = null;
         }
         super.dispose();
      }
      
      private function §%U§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§&f§ = param1;
         this.§%"§ = param1.clone();
         var _loc2_:§#!§ = this.§`!Z§ as §#!§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§&f§;
            this.§%"§.x = _loc3_.x + this.§%"§.x * _loc3_.width;
            this.§%"§.y = _loc3_.y + this.§%"§.y * _loc3_.height;
            this.§%"§.width *= _loc3_.width;
            this.§%"§.height *= _loc3_.height;
            _loc2_ = _loc2_.§`!Z§ as §#!§;
         }
      }
      
      override public function adjustVertexData(param1:§?!T§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§%"§.x;
         var _loc5_:Number = this.§%"§.y;
         var _loc6_:Number = this.§%"§.width;
         var _loc7_:Number = this.§%"§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§?z§);
            param1.setTexCoords(_loc9_,_loc4_ + §?z§.x * _loc6_,_loc5_ + §?z§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§`!Z§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§`!Z§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+!?§)
         {
            return this.§+!?§;
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
            this.§+!?§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+!?§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+!?§;
      }
      
      public function get §7!&§() : Boolean
      {
         return this.§0T§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§%"§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§`!Z§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§`!Z§.root;
      }
      
      override public function get width() : Number
      {
         return this.§`!Z§.width * this.§&f§.width;
      }
      
      override public function get height() : Number
      {
         return this.§`!Z§.height * this.§&f§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§`!Z§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§`!Z§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§`!Z§.requestBaseTextureUpdate(param1);
      }
   }
}
