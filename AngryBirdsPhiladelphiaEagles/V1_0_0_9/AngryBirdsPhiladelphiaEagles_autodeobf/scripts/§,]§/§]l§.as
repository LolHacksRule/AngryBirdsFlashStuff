package §,]§
{
   import §5D§.§3L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]l§ extends Texture
   {
      
      private static var §44§:Point = new Point();
       
      
      private var §^E§:Texture;
      
      private var §#W§:Rectangle;
      
      private var §&!N§:Rectangle;
      
      private var §9U§:Boolean;
      
      private var §9h§:BitmapData;
      
      public function §]l§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§^E§ = param1;
         this.§9U§ = param3;
         if(param2 == null)
         {
            this.§5!§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§5!§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§9U§)
         {
            this.§^E§.dispose();
         }
         if(this.§9h§)
         {
            this.§9h§.dispose();
            this.§9h§ = null;
         }
         super.dispose();
      }
      
      private function §5!§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§#W§ = param1;
         this.§&!N§ = param1.clone();
         var _loc2_:§]l§ = this.§^E§ as §]l§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§#W§;
            this.§&!N§.x = _loc3_.x + this.§&!N§.x * _loc3_.width;
            this.§&!N§.y = _loc3_.y + this.§&!N§.y * _loc3_.height;
            this.§&!N§.width *= _loc3_.width;
            this.§&!N§.height *= _loc3_.height;
            _loc2_ = _loc2_.§^E§ as §]l§;
         }
      }
      
      override public function adjustVertexData(param1:§3L§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§&!N§.x;
         var _loc5_:Number = this.§&!N§.y;
         var _loc6_:Number = this.§&!N§.width;
         var _loc7_:Number = this.§&!N§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§44§);
            param1.setTexCoords(_loc9_,_loc4_ + §44§.x * _loc6_,_loc5_ + §44§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§^E§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§^E§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§9h§)
         {
            return this.§9h§;
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
            this.§9h§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§9h§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§9h§;
      }
      
      public function get §2§() : Boolean
      {
         return this.§9U§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§&!N§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§^E§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§^E§.root;
      }
      
      override public function get width() : Number
      {
         return this.§^E§.width * this.§#W§.width;
      }
      
      override public function get height() : Number
      {
         return this.§^E§.height * this.§#W§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§^E§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§^E§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§^E§.requestBaseTextureUpdate(param1);
      }
   }
}
