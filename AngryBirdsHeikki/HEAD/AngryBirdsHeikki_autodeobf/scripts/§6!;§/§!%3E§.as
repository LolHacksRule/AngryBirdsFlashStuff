package §6!;§
{
   import §!!S§.§5!T§;
   import §!!S§.Texture;
   import §&L§.§'I§;
   import §&L§.§?]§;
   import §`>§.§6v§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §!>§ extends §;o§
   {
       
      
      private var §`!-§:Texture;
      
      private var §>!<§:String;
      
      private var §+6§:Boolean;
      
      private var §]R§:Boolean;
      
      private var §?!W§:§6v§;
      
      private var §6U§:Boolean;
      
      public function §!>§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§"!Y§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§`!-§ = param1;
         if(!param3)
         {
            this.§>!<§ = !!§?]§.§7!T§ ? §5!T§.NONE : §5!T§.§7!2§;
         }
         else
         {
            this.§>!<§ = !!§?]§.§7!T§ ? §5!T§.§7!2§ : §5!T§.§[i§;
            this.§6U§ = true;
         }
         this.§+6§ = param2;
         this.§]R§ = this.§+6§;
         this.§?!W§ = new §6v§(4,_loc7_);
         this.§4G§(true);
      }
      
      public static function §^D§(param1:Context3D, param2:Bitmap) : §!>§
      {
         return new §!>§(Texture.§^D§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§6U§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §]!D§.setTexCoords(0,0,0);
         §]!D§.setTexCoords(1,1,0);
         §]!D§.setTexCoords(2,0,1);
         §]!D§.setTexCoords(3,1,1);
      }
      
      private function §4G§(param1:Boolean = false) : void
      {
         §]!D§.copyTo(this.§?!W§,0,1,this.§+6§ || param1,null);
         this.§`!-§.adjustVertexData(this.§?!W§,0,4);
      }
      
      public function §5!0§() : void
      {
         var _loc1_:Rectangle = this.texture.§"!Y§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §]!D§.setPosition(0,0,0);
         §]!D§.setPosition(1,_loc2_,0);
         §]!D§.setPosition(2,0,_loc3_);
         §]!D§.setPosition(3,_loc2_,_loc3_);
         this.§4G§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §]!D§.setTexCoords(param1,param2.x,param2.y);
         this.§4G§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §]!D§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§6v§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§?!W§.copyTo(param1,param2,param3,this.§+6§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§`!-§;
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
         if(param1 != this.§`!-§)
         {
            this.§`!-§ = param1;
            _loc2_ = this.texture.§"!Y§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§`!-§.premultipliedAlpha);
            this.§4G§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§>!<§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§5!T§.§[!N§(param1))
         {
            this.§>!<§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§4G§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§4G§();
      }
      
      override public function render(param1:§'I§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§`!-§,this.§>!<§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§+6§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§+6§ = this.§]R§;
         }
         else
         {
            this.§+6§ = true;
         }
         super.color = param1;
         this.§4G§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§+6§ = this.§]R§;
         }
         else
         {
            this.§+6§ = true;
         }
         this.§4G§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§`!-§.clippedBitmapData;
      }
   }
}
