package §0!Y§
{
   import §5!W§.§>P§;
   import §5!W§.§`+§;
   import §^z§.§&!q§;
   import §^z§.Texture;
   import §`!"§.§&-§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#"5§ extends §-f§
   {
       
      
      private var §^!T§:Texture;
      
      private var §@V§:String;
      
      private var §#!?§:Boolean;
      
      private var §>7§:Boolean;
      
      private var §7!H§:§&-§;
      
      private var §@n§:Boolean;
      
      public function §#"5§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§!F§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§^!T§ = param1;
         if(!param3)
         {
            this.§@V§ = !!§>P§.§case § ? §&!q§.NONE : §&!q§.§2"2§;
         }
         else
         {
            this.§@V§ = !!§>P§.§case § ? §&!q§.§2"2§ : §&!q§.§2"1§;
            this.§@n§ = true;
         }
         this.§#!?§ = param2;
         this.§>7§ = this.§#!?§;
         this.§7!H§ = new §&-§(4,_loc7_);
         this.§<!P§(true);
      }
      
      public static function §8!y§(param1:Context3D, param2:Bitmap) : §#"5§
      {
         return new §#"5§(Texture.§8!y§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§@n§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §use§.setTexCoords(0,0,0);
         §use§.setTexCoords(1,1,0);
         §use§.setTexCoords(2,0,1);
         §use§.setTexCoords(3,1,1);
      }
      
      private function §<!P§(param1:Boolean = false) : void
      {
         §use§.copyTo(this.§7!H§,0,1,this.§#!?§ || param1,null);
         this.§^!T§.adjustVertexData(this.§7!H§,0,4);
      }
      
      public function §2!2§() : void
      {
         var _loc1_:Rectangle = this.texture.§!F§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §use§.setPosition(0,0,0);
         §use§.setPosition(1,_loc2_,0);
         §use§.setPosition(2,0,_loc3_);
         §use§.setPosition(3,_loc2_,_loc3_);
         this.§<!P§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §use§.setTexCoords(param1,param2.x,param2.y);
         this.§<!P§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §use§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§&-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§7!H§.copyTo(param1,param2,param3,this.§#!?§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§^!T§;
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
         if(param1 != this.§^!T§)
         {
            this.§^!T§ = param1;
            _loc2_ = this.texture.§!F§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§^!T§.premultipliedAlpha);
            this.§<!P§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@V§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§&!q§.§;!"§(param1))
         {
            this.§@V§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§<!P§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§<!P§();
      }
      
      override public function render(param1:§`+§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§^!T§,this.§@V§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§#!?§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§#!?§ = this.§>7§;
         }
         else
         {
            this.§#!?§ = true;
         }
         super.color = param1;
         this.§<!P§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§#!?§ = this.§>7§;
         }
         else
         {
            this.§#!?§ = true;
         }
         this.§<!P§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§^!T§.clippedBitmapData;
      }
   }
}
