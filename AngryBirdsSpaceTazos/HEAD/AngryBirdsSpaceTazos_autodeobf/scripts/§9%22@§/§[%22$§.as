package §9"@§
{
   import §6!5§.§>"C§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §["$§ extends Texture
   {
      
      private static var §8=§:Point = new Point();
       
      
      private var §1"%§:Texture;
      
      private var §3!n§:Rectangle;
      
      private var § q§:Rectangle;
      
      private var §="F§:Boolean;
      
      private var §>!3§:BitmapData;
      
      public function §["$§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§1"%§ = param1;
         this.§="F§ = param3;
         if(param2 == null)
         {
            this.§?"B§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§?"B§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§="F§)
         {
            this.§1"%§.dispose();
         }
         if(this.§>!3§)
         {
            this.§>!3§.dispose();
            this.§>!3§ = null;
         }
         super.dispose();
      }
      
      private function §?"B§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§3!n§ = param1;
         this.§ q§ = param1.clone();
         var _loc2_:§["$§ = this.§1"%§ as §["$§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3!n§;
            this.§ q§.x = _loc3_.x + this.§ q§.x * _loc3_.width;
            this.§ q§.y = _loc3_.y + this.§ q§.y * _loc3_.height;
            this.§ q§.width *= _loc3_.width;
            this.§ q§.height *= _loc3_.height;
            _loc2_ = _loc2_.§1"%§ as §["$§;
         }
      }
      
      override public function adjustVertexData(param1:§>"C§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§ q§.x;
         var _loc5_:Number = this.§ q§.y;
         var _loc6_:Number = this.§ q§.width;
         var _loc7_:Number = this.§ q§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§8=§);
            param1.setTexCoords(_loc9_,_loc4_ + §8=§.x * _loc6_,_loc5_ + §8=§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§1"%§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§1"%§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§>!3§)
         {
            return this.§>!3§;
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
            this.§>!3§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§>!3§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§>!3§;
      }
      
      public function get §7"E§() : Boolean
      {
         return this.§="F§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§ q§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§1"%§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§1"%§.root;
      }
      
      override public function get width() : Number
      {
         return this.§1"%§.width * this.§3!n§.width;
      }
      
      override public function get height() : Number
      {
         return this.§1"%§.height * this.§3!n§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§1"%§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§1"%§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§1"%§.requestBaseTextureUpdate(param1);
      }
   }
}
