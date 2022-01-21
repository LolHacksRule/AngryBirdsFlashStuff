package §2!g§
{
   import §"v§.§&!i§;
   import §"v§.§5!T§;
   import §=E§.§`F§;
   import §@j§.§8!'§;
   import §@j§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §<7§ extends §2c§
   {
       
      
      private var §6l§:Texture;
      
      private var §8g§:String;
      
      private var §51§:Boolean;
      
      private var §'!-§:Boolean;
      
      private var §@!-§:§`F§;
      
      private var §#!>§:Boolean;
      
      public function §<7§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§6g§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§6l§ = param1;
         if(!param3)
         {
            this.§8g§ = !!§5!T§.§3h§ ? §8!'§.NONE : §8!'§.§%!>§;
         }
         else
         {
            this.§8g§ = !!§5!T§.§3h§ ? §8!'§.§%!>§ : §8!'§.§?z§;
            this.§#!>§ = true;
         }
         this.§51§ = param2;
         this.§'!-§ = this.§51§;
         this.§@!-§ = new §`F§(4,_loc7_);
         this.§,! §(true);
      }
      
      public static function §;e§(param1:Context3D, param2:Bitmap) : §<7§
      {
         return new §<7§(Texture.§;e§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§#!>§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §+s§.setTexCoords(0,0,0);
         §+s§.setTexCoords(1,1,0);
         §+s§.setTexCoords(2,0,1);
         §+s§.setTexCoords(3,1,1);
      }
      
      private function §,! §(param1:Boolean = false) : void
      {
         §+s§.copyTo(this.§@!-§,0,1,this.§51§ || param1,null);
         this.§6l§.adjustVertexData(this.§@!-§,0,4);
      }
      
      public function §6'§() : void
      {
         var _loc1_:Rectangle = this.texture.§6g§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §+s§.setPosition(0,0,0);
         §+s§.setPosition(1,_loc2_,0);
         §+s§.setPosition(2,0,_loc3_);
         §+s§.setPosition(3,_loc2_,_loc3_);
         this.§,! §();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §+s§.setTexCoords(param1,param2.x,param2.y);
         this.§,! §();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §+s§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§`F§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@!-§.copyTo(param1,param2,param3,this.§51§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§6l§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§6l§)
         {
            this.§6l§ = param1;
            §+s§.setPremultipliedAlpha(this.§6l§.premultipliedAlpha);
            this.§,! §();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§8g§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§8!'§.§"J§(param1))
         {
            this.§8g§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§,! §();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§,! §();
      }
      
      override public function render(param1:§&!i§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§6l§,this.§8g§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§51§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§51§ = this.§'!-§;
         }
         else
         {
            this.§51§ = true;
         }
         super.color = param1;
         this.§,! §();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§6l§.clippedBitmapData;
      }
   }
}
