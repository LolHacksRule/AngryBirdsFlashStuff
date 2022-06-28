package §9W§
{
   import §#!;§.§;T§;
   import §#!;§.§?h§;
   import §5!@§.§7!=§;
   import §5!@§.Texture;
   import §@e§.§;2§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §6!0§ extends §3g§
   {
       
      
      private var §7#§:Texture;
      
      private var §@n§:String;
      
      private var §36§:Boolean;
      
      private var §?E§:Boolean;
      
      private var §-0§:§;2§;
      
      private var §&%§:Boolean;
      
      public function §6!0§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§`! §) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§7#§ = param1;
         if(!param3)
         {
            this.§@n§ = !!§;T§.§>!,§ ? §7!=§.NONE : §7!=§.§1%§;
         }
         else
         {
            this.§@n§ = !!§;T§.§>!,§ ? §7!=§.§1%§ : §7!=§.§"V§;
            this.§&%§ = true;
         }
         this.§36§ = param2;
         this.§?E§ = this.§36§;
         this.§-0§ = new §;2§(4,_loc7_);
         this.§,R§(true);
      }
      
      public static function §?g§(param1:Context3D, param2:Bitmap) : §6!0§
      {
         return new §6!0§(Texture.§?g§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§&%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §5J§.setTexCoords(0,0,0);
         §5J§.setTexCoords(1,1,0);
         §5J§.setTexCoords(2,0,1);
         §5J§.setTexCoords(3,1,1);
      }
      
      private function §,R§(param1:Boolean = false) : void
      {
         §5J§.copyTo(this.§-0§,0,1,this.§36§ || param1,null);
         this.§7#§.adjustVertexData(this.§-0§,0,4);
      }
      
      public function §8!=§() : void
      {
         var _loc1_:Rectangle = this.texture.§`! §;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §5J§.setPosition(0,0,0);
         §5J§.setPosition(1,_loc2_,0);
         §5J§.setPosition(2,0,_loc3_);
         §5J§.setPosition(3,_loc2_,_loc3_);
         this.§,R§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §5J§.setTexCoords(param1,param2.x,param2.y);
         this.§,R§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §5J§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§-0§.copyTo(param1,param2,param3,this.§36§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§7#§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§7#§)
         {
            this.§7#§ = param1;
            §5J§.setPremultipliedAlpha(this.§7#§.premultipliedAlpha);
            this.§,R§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@n§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§7!=§.isValid(param1))
         {
            this.§@n§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§,R§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§,R§();
      }
      
      override public function render(param1:§?h§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§7#§,this.§@n§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§36§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§36§ = this.§?E§;
         }
         else
         {
            this.§36§ = true;
         }
         super.color = param1;
         this.§,R§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§7#§.clippedBitmapData;
      }
   }
}
