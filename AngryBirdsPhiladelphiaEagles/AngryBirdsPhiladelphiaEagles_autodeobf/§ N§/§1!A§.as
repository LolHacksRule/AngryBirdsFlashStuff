package § N§
{
   import §+§.§0&§;
   import §5Z§.§4]§;
   import §5Z§.§[Z§;
   import §8z§.Texture;
   import §8z§.§^,§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!A§ extends §6!O§
   {
       
      
      private var §-`§:Texture;
      
      private var §'!P§:String;
      
      private var §`?§:Boolean;
      
      private var §'!=§:Boolean;
      
      private var §%!F§:§0&§;
      
      private var §[[§:Boolean;
      
      public function §1!A§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.§#6§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§-`§ = param1;
         if(!param3)
         {
            this.§'!P§ = !!§[Z§.§-D§ ? §^,§.NONE : §^,§.§#b§;
         }
         else
         {
            this.§'!P§ = !!§[Z§.§-D§ ? §^,§.§#b§ : §^,§.§1K§;
            this.§[[§ = true;
         }
         this.§`?§ = param2;
         this.§'!=§ = this.§`?§;
         this.§%!F§ = new §0&§(4,_loc7_);
         this.§,'§(true);
      }
      
      public static function §@!-§(param1:Context3D, param2:Bitmap) : §1!A§
      {
         return new §1!A§(Texture.§@!-§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[[§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §"!F§.setTexCoords(0,0,0);
         §"!F§.setTexCoords(1,1,0);
         §"!F§.setTexCoords(2,0,1);
         §"!F§.setTexCoords(3,1,1);
      }
      
      private function §,'§(param1:Boolean = false) : void
      {
         §"!F§.copyTo(this.§%!F§,0,1,this.§`?§ || param1,null);
         this.§-`§.adjustVertexData(this.§%!F§,0,4);
      }
      
      public function §`!@§() : void
      {
         var _loc1_:Rectangle = this.texture.§#6§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §"!F§.setPosition(0,0,0);
         §"!F§.setPosition(1,_loc2_,0);
         §"!F§.setPosition(2,0,_loc3_);
         §"!F§.setPosition(3,_loc2_,_loc3_);
         this.§,'§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §"!F§.setTexCoords(param1,param2.x,param2.y);
         this.§,'§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §"!F§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§0&§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§%!F§.copyTo(param1,param2,param3,this.§`?§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§-`§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§-`§)
         {
            this.§-`§ = param1;
            §"!F§.setPremultipliedAlpha(this.§-`§.premultipliedAlpha);
            this.§,'§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'!P§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§^,§.§1!6§(param1))
         {
            this.§'!P§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§,'§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§,'§();
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§-`§,this.§'!P§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§`?§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§`?§ = this.§'!=§;
         }
         else
         {
            this.§`?§ = true;
         }
         super.color = param1;
         this.§,'§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§-`§.clippedBitmapData;
      }
   }
}
