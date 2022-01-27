package §1"s§
{
   import §3"e§.§;P§;
   import §9!!§.§ _§;
   import §9!!§.§=!S§;
   import §<"L§.Texture;
   import §<"L§.§]!7§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-i§ extends §#"b§
   {
       
      
      private var §!!Z§:Texture;
      
      private var §4S§:String;
      
      private var §"L§:Boolean;
      
      private var § "j§:Boolean;
      
      private var §7!2§:§;P§;
      
      private var §#P§:Boolean;
      
      public function §-i§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!!Z§ = param1;
         if(!param3)
         {
            this.§4S§ = !!§=!S§.§&!n§ ? §]!7§.NONE : §]!7§.§#!5§;
         }
         else
         {
            this.§4S§ = !!§=!S§.§&!n§ ? §]!7§.§#!5§ : §]!7§.§""`§;
            this.§#P§ = true;
         }
         this.§"L§ = param2;
         this.§ "j§ = this.§"L§;
         this.§7!2§ = new §;P§(4,_loc7_);
         this.§^!_§(true);
      }
      
      public static function §-2§(param1:Context3D, param2:Bitmap) : §-i§
      {
         return new §-i§(Texture.§-2§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§#P§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §0#4§.setTexCoords(0,0,0);
         §0#4§.setTexCoords(1,1,0);
         §0#4§.setTexCoords(2,0,1);
         §0#4§.setTexCoords(3,1,1);
      }
      
      private function §^!_§(param1:Boolean = false) : void
      {
         §0#4§.copyTo(this.§7!2§,0,1,this.§"L§ || param1,null);
         this.§!!Z§.adjustVertexData(this.§7!2§,0,4);
      }
      
      public function §%!6§(param1:Vector.<Point>) : void
      {
         §0#4§.setPosition(0,param1[0].x,param1[0].y);
         §0#4§.setPosition(1,param1[1].x,param1[1].y);
         §0#4§.setPosition(2,param1[2].x,param1[2].y);
         §0#4§.setPosition(3,param1[3].x,param1[3].y);
         this.§^!_§();
      }
      
      public function §`V§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §0#4§.setPosition(0,0,0);
         §0#4§.setPosition(1,_loc2_,0);
         §0#4§.setPosition(2,0,_loc3_);
         §0#4§.setPosition(3,_loc2_,_loc3_);
         this.§^!_§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §0#4§.setTexCoords(param1,param2.x,param2.y);
         this.§^!_§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §0#4§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;P§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§7!2§.copyTo(param1,param2,param3,this.§"L§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§!!Z§;
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
         if(param1 != this.§!!Z§)
         {
            this.§!!Z§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§!!Z§.premultipliedAlpha);
            this.§^!_§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§4S§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§]!7§.§^#0§(param1))
         {
            this.§4S§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§^!_§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§^!_§();
      }
      
      override public function render(param1:§ _§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§!!Z§,this.§4S§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§"L§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§"L§ = this.§ "j§;
         }
         else
         {
            this.§"L§ = true;
         }
         super.color = param1;
         this.§^!_§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§"L§ = this.§ "j§;
         }
         else
         {
            this.§"L§ = true;
         }
         this.§^!_§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!!Z§.clippedBitmapData;
      }
   }
}
