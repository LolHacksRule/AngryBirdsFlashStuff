package §4G§
{
   import §"`§.§#X§;
   import §"`§.Texture;
   import §#!5§.§case §;
   import §>w§.§"!,§;
   import §>w§.;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`l§ extends §5T§
   {
       
      
      private var §>a§:Texture;
      
      private var §`_§:String;
      
      private var §<a§:Boolean;
      
      private var §`R§:Boolean;
      
      private var §[j§:§case §;
      
      private var §6x§:Boolean;
      
      public function §`l§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§,!&§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§>a§ = param1;
         if(!param3)
         {
            this.§`_§ = !!§#0§.§3!<§ ? §#X§.NONE : §#X§.§8O§;
         }
         else
         {
            this.§`_§ = !!§#0§.§3!<§ ? §#X§.§8O§ : §#X§.§5w§;
            this.§6x§ = true;
         }
         this.§<a§ = param2;
         this.§`R§ = this.§<a§;
         this.§[j§ = new §case §(4,_loc7_);
         this.§^G§(true);
      }
      
      public static function §^$§(param1:Context3D, param2:Bitmap) : §`l§
      {
         return new §`l§(Texture.§^$§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§6x§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §=i§.setTexCoords(0,0,0);
         §=i§.setTexCoords(1,1,0);
         §=i§.setTexCoords(2,0,1);
         §=i§.setTexCoords(3,1,1);
      }
      
      private function §^G§(param1:Boolean = false) : void
      {
         §=i§.copyTo(this.§[j§,0,1,this.§<a§ || param1,null);
         this.§>a§.adjustVertexData(this.§[j§,0,4);
      }
      
      public function §3p§() : void
      {
         var _loc1_:Rectangle = this.texture.§,!&§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §=i§.setPosition(0,0,0);
         §=i§.setPosition(1,_loc2_,0);
         §=i§.setPosition(2,0,_loc3_);
         §=i§.setPosition(3,_loc2_,_loc3_);
         this.§^G§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §=i§.setTexCoords(param1,param2.x,param2.y);
         this.§^G§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §=i§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§case §, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[j§.copyTo(param1,param2,param3,this.§<a§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§>a§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§>a§)
         {
            this.§>a§ = param1;
            §=i§.setPremultipliedAlpha(this.§>a§.premultipliedAlpha);
            this.§^G§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§`_§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§#X§.§^!'§(param1))
         {
            this.§`_§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§^G§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§^G§();
      }
      
      override public function render(param1:§"!,§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§>a§,this.§`_§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<a§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§<a§ = this.§`R§;
         }
         else
         {
            this.§<a§ = true;
         }
         super.color = param1;
         this.§^G§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>a§.clippedBitmapData;
      }
   }
}
