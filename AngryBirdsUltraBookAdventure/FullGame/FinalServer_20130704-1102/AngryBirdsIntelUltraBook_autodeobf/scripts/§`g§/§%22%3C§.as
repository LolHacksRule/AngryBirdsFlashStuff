package §`g§
{
   import §2m§.§<!?§;
   import §2m§.§@>§;
   import §7H§.§'!w§;
   import §?]§.§7l§;
   import §?]§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"<§ extends § O§
   {
       
      
      private var §!=§:Texture;
      
      private var §>!1§:String;
      
      private var §7!W§:Boolean;
      
      private var §1!!§:Boolean;
      
      private var §'!?§:§'!w§;
      
      private var §^!T§:Boolean;
      
      public function §"<§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!=§ = param1;
         if(!param3)
         {
            this.§>!1§ = !!§<!?§.§@!_§ ? §7l§.NONE : §7l§.§6!%§;
         }
         else
         {
            this.§>!1§ = !!§<!?§.§@!_§ ? §7l§.§6!%§ : §7l§.§`!,§;
            this.§^!T§ = true;
         }
         this.§7!W§ = param2;
         this.§1!!§ = this.§7!W§;
         this.§'!?§ = new §'!w§(4,_loc7_);
         this.§#!3§(true);
      }
      
      public static function §`!s§(param1:Context3D, param2:Bitmap) : §"<§
      {
         return new §"<§(Texture.§`!s§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^!T§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §[!K§.setTexCoords(0,0,0);
         §[!K§.setTexCoords(1,1,0);
         §[!K§.setTexCoords(2,0,1);
         §[!K§.setTexCoords(3,1,1);
      }
      
      private function §#!3§(param1:Boolean = false) : void
      {
         §[!K§.copyTo(this.§'!?§,0,1,this.§7!W§ || param1,null);
         this.§!=§.adjustVertexData(this.§'!?§,0,4);
      }
      
      public function §2H§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §[!K§.setPosition(0,0,0);
         §[!K§.setPosition(1,_loc2_,0);
         §[!K§.setPosition(2,0,_loc3_);
         §[!K§.setPosition(3,_loc2_,_loc3_);
         this.§#!3§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §[!K§.setTexCoords(param1,param2.x,param2.y);
         this.§#!3§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §[!K§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§'!w§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§'!?§.copyTo(param1,param2,param3,this.§7!W§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§!=§;
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
         if(param1 != this.§!=§)
         {
            this.§!=§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§!=§.premultipliedAlpha);
            this.§#!3§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§>!1§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§7l§.§7"#§(param1))
         {
            this.§>!1§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§#!3§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§#!3§();
      }
      
      override public function render(param1:§@>§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§!=§,this.§>!1§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§7!W§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§7!W§ = this.§1!!§;
         }
         else
         {
            this.§7!W§ = true;
         }
         super.color = param1;
         this.§#!3§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§7!W§ = this.§1!!§;
         }
         else
         {
            this.§7!W§ = true;
         }
         this.§#!3§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!=§.clippedBitmapData;
      }
   }
}
