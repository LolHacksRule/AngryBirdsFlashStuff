package §<!-§
{
   import §"!<§.§7$§;
   import §"!<§.Texture;
   import §;!F§.§1!2§;
   import §?!5§.§2d§;
   import §?!5§.§;P§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^B§ extends §8J§
   {
       
      
      private var §]m§:Texture;
      
      private var §4J§:String;
      
      private var §0o§:Boolean;
      
      private var §4!!§:Boolean;
      
      private var §-!P§:§1!2§;
      
      private var §@4§:Boolean;
      
      public function §^B§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§>$§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§]m§ = param1;
         if(!param3)
         {
            this.§4J§ = !!§2d§.§#<§ ? §7$§.NONE : §7$§.§6!!§;
         }
         else
         {
            this.§4J§ = !!§2d§.§#<§ ? §7$§.§6!!§ : §7$§.§'@§;
            this.§@4§ = true;
         }
         this.§0o§ = param2;
         this.§4!!§ = this.§0o§;
         this.§-!P§ = new §1!2§(4,_loc7_);
         this.§]!A§(true);
      }
      
      public static function §93§(param1:Context3D, param2:Bitmap) : §^B§
      {
         return new §^B§(Texture.§93§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§@4§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §#!Y§.setTexCoords(0,0,0);
         §#!Y§.setTexCoords(1,1,0);
         §#!Y§.setTexCoords(2,0,1);
         §#!Y§.setTexCoords(3,1,1);
      }
      
      private function §]!A§(param1:Boolean = false) : void
      {
         §#!Y§.copyTo(this.§-!P§,0,1,this.§0o§ || param1,null);
         this.§]m§.adjustVertexData(this.§-!P§,0,4);
      }
      
      public function §=!F§() : void
      {
         var _loc1_:Rectangle = this.texture.§>$§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §#!Y§.setPosition(0,0,0);
         §#!Y§.setPosition(1,_loc2_,0);
         §#!Y§.setPosition(2,0,_loc3_);
         §#!Y§.setPosition(3,_loc2_,_loc3_);
         this.§]!A§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §#!Y§.setTexCoords(param1,param2.x,param2.y);
         this.§]!A§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §#!Y§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§1!2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§-!P§.copyTo(param1,param2,param3,this.§0o§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§]m§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§]m§)
         {
            this.§]m§ = param1;
            §#!Y§.setPremultipliedAlpha(this.§]m§.premultipliedAlpha);
            this.§]!A§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§4J§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§7$§.§]z§(param1))
         {
            this.§4J§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§]!A§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§]!A§();
      }
      
      override public function render(param1:§;P§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§]m§,this.§4J§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§0o§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§0o§ = this.§4!!§;
         }
         else
         {
            this.§0o§ = true;
         }
         super.color = param1;
         this.§]!A§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§]m§.clippedBitmapData;
      }
   }
}
