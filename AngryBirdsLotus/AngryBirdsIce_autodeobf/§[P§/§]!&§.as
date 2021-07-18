package §[P§
{
   import §3!$§.§+^§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §]!&§ extends Texture
   {
      
      private static var §0!3§:Point = new Point();
       
      
      private var §67§:Texture;
      
      private var §2,§:Rectangle;
      
      private var §8p§:Rectangle;
      
      private var §@W§:Boolean;
      
      private var §+!4§:BitmapData;
      
      public function §]!&§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§67§ = param1;
         this.§@W§ = param3;
         if(param2 == null)
         {
            this.§-n§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§-n§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§@W§)
         {
            this.§67§.dispose();
         }
         if(this.§+!4§)
         {
            this.§+!4§.dispose();
            this.§+!4§ = null;
         }
         super.dispose();
      }
      
      private function §-n§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§2,§ = param1;
         this.§8p§ = param1.clone();
         var _loc2_:§]!&§ = this.§67§ as §]!&§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§2,§;
            this.§8p§.x = _loc3_.x + this.§8p§.x * _loc3_.width;
            this.§8p§.y = _loc3_.y + this.§8p§.y * _loc3_.height;
            this.§8p§.width *= _loc3_.width;
            this.§8p§.height *= _loc3_.height;
            _loc2_ = _loc2_.§67§ as §]!&§;
         }
      }
      
      override public function adjustVertexData(param1:§+^§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§8p§.x;
         var _loc5_:Number = this.§8p§.y;
         var _loc6_:Number = this.§8p§.width;
         var _loc7_:Number = this.§8p§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§0!3§);
            param1.setTexCoords(_loc9_,_loc4_ + §0!3§.x * _loc6_,_loc5_ + §0!3§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§67§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§67§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§+!4§)
         {
            return this.§+!4§;
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
            this.§+!4§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§+!4§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§+!4§;
      }
      
      public function get §+C§() : Boolean
      {
         return this.§@W§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8p§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§67§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§67§.root;
      }
      
      override public function get width() : Number
      {
         return this.§67§.width * this.§2,§.width;
      }
      
      override public function get height() : Number
      {
         return this.§67§.height * this.§2,§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§67§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§67§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§67§.requestBaseTextureUpdate(param1);
      }
   }
}
