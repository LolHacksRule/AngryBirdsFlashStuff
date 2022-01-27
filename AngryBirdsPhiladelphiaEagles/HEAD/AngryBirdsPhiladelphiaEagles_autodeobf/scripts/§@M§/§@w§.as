package §@M§
{
   import §-!A§.§1!K§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@w§ extends Texture
   {
      
      private static var §0V§:Point = new Point();
       
      
      private var §9K§:Texture;
      
      private var §3!$§:Rectangle;
      
      private var §1P§:Rectangle;
      
      private var §#;§:Boolean;
      
      private var §!c§:BitmapData;
      
      public function §@w§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9K§ = param1;
         this.§#;§ = param3;
         if(param2 == null)
         {
            this.§@"§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§@"§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§#;§)
         {
            this.§9K§.dispose();
         }
         if(this.§!c§)
         {
            this.§!c§.dispose();
            this.§!c§ = null;
         }
         super.dispose();
      }
      
      private function §@"§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§3!$§ = param1;
         this.§1P§ = param1.clone();
         var _loc2_:§@w§ = this.§9K§ as §@w§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§3!$§;
            this.§1P§.x = _loc3_.x + this.§1P§.x * _loc3_.width;
            this.§1P§.y = _loc3_.y + this.§1P§.y * _loc3_.height;
            this.§1P§.width *= _loc3_.width;
            this.§1P§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9K§ as §@w§;
         }
      }
      
      override public function adjustVertexData(param1:§1!K§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§1P§.x;
         var _loc5_:Number = this.§1P§.y;
         var _loc6_:Number = this.§1P§.width;
         var _loc7_:Number = this.§1P§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§0V§);
            param1.setTexCoords(_loc9_,_loc4_ + §0V§.x * _loc6_,_loc5_ + §0V§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9K§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9K§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§!c§)
         {
            return this.§!c§;
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
            this.§!c§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§!c§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§!c§;
      }
      
      public function get §<u§() : Boolean
      {
         return this.§#;§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§1P§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9K§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§9K§.root;
      }
      
      override public function get width() : Number
      {
         return this.§9K§.width * this.§3!$§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9K§.height * this.§3!$§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9K§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9K§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9K§.requestBaseTextureUpdate(param1);
      }
   }
}
