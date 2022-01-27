package §!!U§
{
   import §&#H§.§%"H§;
   import §&#H§.§3#J§;
   import §&v§.§ +§;
   import §&v§.Texture;
   import §=]§.§%"G§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#"t§ extends §2"D§
   {
       
      
      private var §^"R§:Texture;
      
      private var § "A§:String;
      
      private var §8!F§:Boolean;
      
      private var §'"m§:Boolean;
      
      private var §"!_§:§%"G§;
      
      private var §3" §:Boolean;
      
      public function §#"t§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§^"R§ = param1;
         if(!param3)
         {
            this.§ "A§ = !!§3#J§.§3!s§ ? § +§.NONE : § +§.§1#B§;
         }
         else
         {
            this.§ "A§ = !!§3#J§.§3!s§ ? § +§.§1#B§ : § +§.§5!^§;
            this.§3" § = true;
         }
         this.§8!F§ = param2;
         this.§'"m§ = this.§8!F§;
         this.§"!_§ = new §%"G§(4,_loc7_);
         this.§3!E§(true);
      }
      
      public static function §`"J§(param1:Context3D, param2:Bitmap) : §#"t§
      {
         return new §#"t§(Texture.§`"J§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§3" §;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §;q§.setTexCoords(0,0,0);
         §;q§.setTexCoords(1,1,0);
         §;q§.setTexCoords(2,0,1);
         §;q§.setTexCoords(3,1,1);
      }
      
      private function §3!E§(param1:Boolean = false) : void
      {
         §;q§.copyTo(this.§"!_§,0,1,this.§8!F§ || param1,null);
         this.§^"R§.adjustVertexData(this.§"!_§,0,4);
      }
      
      public function §+!l§(param1:Vector.<Point>) : void
      {
         §;q§.setPosition(0,param1[0].x,param1[0].y);
         §;q§.setPosition(1,param1[1].x,param1[1].y);
         §;q§.setPosition(2,param1[2].x,param1[2].y);
         §;q§.setPosition(3,param1[3].x,param1[3].y);
         this.§3!E§();
      }
      
      public function §#"i§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §;q§.setPosition(0,0,0);
         §;q§.setPosition(1,_loc2_,0);
         §;q§.setPosition(2,0,_loc3_);
         §;q§.setPosition(3,_loc2_,_loc3_);
         this.§3!E§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §;q§.setTexCoords(param1,param2.x,param2.y);
         this.§3!E§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §;q§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§%"G§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"!_§.copyTo(param1,param2,param3,this.§8!F§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§^"R§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§^"R§)
         {
            this.§^"R§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§^"R§.premultipliedAlpha);
            this.§3!E§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§ "A§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§ +§.§%"_§(param1))
         {
            this.§ "A§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§3!E§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§3!E§();
      }
      
      override public function render(param1:§%"H§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§^"R§,this.§ "A§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§8!F§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§8!F§ = this.§'"m§;
         }
         else
         {
            this.§8!F§ = true;
         }
         super.color = param1;
         this.§3!E§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§8!F§ = this.§'"m§;
         }
         else
         {
            this.§8!F§ = true;
         }
         this.§3!E§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§^"R§.clippedBitmapData;
      }
   }
}
