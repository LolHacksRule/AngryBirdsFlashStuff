package § !^§
{
   import §6!J§.§%!k§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<t§ extends Texture
   {
      
      private static var §2!%§:Point = new Point();
       
      
      private var §9s§:Texture;
      
      private var §`#§:Rectangle;
      
      private var §8!A§:Rectangle;
      
      private var §;!;§:Boolean;
      
      private var §9J§:BitmapData;
      
      public function §<t§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         super();
         this.§9s§ = param1;
         this.§;!;§ = param3;
         if(param2 == null)
         {
            this.§7!M§(new Rectangle(0,0,1,1));
         }
         else
         {
            this.§7!M§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
         }
      }
      
      override public function dispose() : void
      {
         if(this.§;!;§)
         {
            this.§9s§.dispose();
         }
         if(this.§9J§)
         {
            this.§9J§.dispose();
            this.§9J§ = null;
         }
         super.dispose();
      }
      
      private function §7!M§(param1:Rectangle) : void
      {
         var _loc3_:Rectangle = null;
         this.§`#§ = param1;
         this.§8!A§ = param1.clone();
         var _loc2_:§<t§ = this.§9s§ as §<t§;
         while(_loc2_)
         {
            _loc3_ = _loc2_.§`#§;
            this.§8!A§.x = _loc3_.x + this.§8!A§.x * _loc3_.width;
            this.§8!A§.y = _loc3_.y + this.§8!A§.y * _loc3_.height;
            this.§8!A§.width *= _loc3_.width;
            this.§8!A§.height *= _loc3_.height;
            _loc2_ = _loc2_.§9s§ as §<t§;
         }
      }
      
      override public function adjustVertexData(param1:§%!k§, param2:int, param3:int) : void
      {
         super.adjustVertexData(param1,param2,param3);
         var _loc4_:Number = this.§8!A§.x;
         var _loc5_:Number = this.§8!A§.y;
         var _loc6_:Number = this.§8!A§.width;
         var _loc7_:Number = this.§8!A§.height;
         var _loc8_:int = param2 + param3;
         var _loc9_:int = param2;
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§2!%§);
            param1.setTexCoords(_loc9_,_loc4_ + §2!%§.x * _loc6_,_loc5_ + §2!%§.y * _loc7_);
            _loc9_++;
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§9s§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§9s§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this.§9J§)
         {
            return this.§9J§;
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
            this.§9J§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§9J§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
         }
         return this.§9J§;
      }
      
      public function get §4Z§() : Boolean
      {
         return this.§;!;§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8!A§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§9s§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§9s§.root;
      }
      
      override public function get width() : Number
      {
         return this.§9s§.width * this.§`#§.width;
      }
      
      override public function get height() : Number
      {
         return this.§9s§.height * this.§`#§.height;
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§9s§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§9s§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         this.§9s§.requestBaseTextureUpdate(param1);
      }
   }
}
