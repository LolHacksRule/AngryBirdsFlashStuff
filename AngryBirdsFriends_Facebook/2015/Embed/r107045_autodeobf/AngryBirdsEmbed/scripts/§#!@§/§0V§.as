package §#!@§
{
   import §1#§.§7!@§;
   import §1#§.Texture;
   import §7!§.§ 0§;
   import §7!§.§,L§;
   import §@!E§.§ !#§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0V§ extends §?h§
   {
       
      
      private var §"<§:Texture;
      
      private var §'B§:String;
      
      private var §#!1§:Boolean;
      
      private var §%b§:Boolean;
      
      private var §?5§:§ !#§;
      
      private var §3C§:Boolean;
      
      public function §0V§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§^b§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§"<§ = param1;
         if(!param3)
         {
            this.§'B§ = !!§,L§.§'>§ ? §7!@§.NONE : §7!@§.§=!C§;
         }
         else
         {
            this.§'B§ = !!§,L§.§'>§ ? §7!@§.§=!C§ : §7!@§.§#n§;
            this.§3C§ = true;
         }
         this.§#!1§ = param2;
         this.§%b§ = this.§#!1§;
         this.§?5§ = new § !#§(4,_loc7_);
         this.§5o§(true);
      }
      
      public static function §1!@§(param1:Context3D, param2:Bitmap) : §0V§
      {
         return new §0V§(Texture.§1!@§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§3C§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §@!,§.setTexCoords(0,0,0);
         §@!,§.setTexCoords(1,1,0);
         §@!,§.setTexCoords(2,0,1);
         §@!,§.setTexCoords(3,1,1);
      }
      
      private function §5o§(param1:Boolean = false) : void
      {
         §@!,§.copyTo(this.§?5§,0,1,this.§#!1§ || param1,null);
         this.§"<§.adjustVertexData(this.§?5§,0,4);
      }
      
      public function §0!#§() : void
      {
         var _loc1_:Rectangle = this.texture.§^b§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §@!,§.setPosition(0,0,0);
         §@!,§.setPosition(1,_loc2_,0);
         §@!,§.setPosition(2,0,_loc3_);
         §@!,§.setPosition(3,_loc2_,_loc3_);
         this.§5o§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §@!,§.setTexCoords(param1,param2.x,param2.y);
         this.§5o§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §@!,§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§ !#§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§?5§.copyTo(param1,param2,param3,this.§#!1§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§"<§;
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
         if(param1 != this.§"<§)
         {
            this.§"<§ = param1;
            _loc2_ = this.texture.§^b§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§"<§.premultipliedAlpha);
            this.§5o§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'B§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§7!@§.isValid(param1))
         {
            this.§'B§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§5o§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§5o§();
      }
      
      override public function render(param1:§ 0§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§"<§,this.§'B§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§#!1§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§#!1§ = this.§%b§;
         }
         else
         {
            this.§#!1§ = true;
         }
         super.color = param1;
         this.§5o§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§#!1§ = this.§%b§;
         }
         else
         {
            this.§#!1§ = true;
         }
         this.§5o§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§"<§.clippedBitmapData;
      }
   }
}
