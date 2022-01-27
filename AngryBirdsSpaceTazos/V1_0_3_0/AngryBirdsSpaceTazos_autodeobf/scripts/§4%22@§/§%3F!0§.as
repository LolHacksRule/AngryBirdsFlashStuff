package §4"@§
{
   import §'@§.§>"6§;
   import §'@§.Texture;
   import §1f§.§&"@§;
   import §1f§.§9H§;
   import §[4§.§0!r§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!0§ extends §6p§
   {
       
      
      private var §^!N§:Texture;
      
      private var §0,§:String;
      
      private var §#7§:Boolean;
      
      private var §&M§:Boolean;
      
      private var §55§:§0!r§;
      
      private var §,"6§:Boolean;
      
      public function §?!0§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§?a§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§^!N§ = param1;
         if(!param3)
         {
            this.§0,§ = !!§9H§.§&!V§ ? §>"6§.NONE : §>"6§.§]!w§;
         }
         else
         {
            this.§0,§ = !!§9H§.§&!V§ ? §>"6§.§]!w§ : §>"6§.§;" §;
            this.§,"6§ = true;
         }
         this.§#7§ = param2;
         this.§&M§ = this.§#7§;
         this.§55§ = new §0!r§(4,_loc7_);
         this.§0!0§(true);
      }
      
      public static function §^"#§(param1:Context3D, param2:Bitmap) : §?!0§
      {
         return new §?!0§(Texture.§^"#§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§,"6§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §#g§.setTexCoords(0,0,0);
         §#g§.setTexCoords(1,1,0);
         §#g§.setTexCoords(2,0,1);
         §#g§.setTexCoords(3,1,1);
      }
      
      private function §0!0§(param1:Boolean = false) : void
      {
         §#g§.copyTo(this.§55§,0,1,this.§#7§ || param1,null);
         this.§^!N§.adjustVertexData(this.§55§,0,4);
      }
      
      public function §^"2§() : void
      {
         var _loc1_:Rectangle = this.texture.§?a§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §#g§.setPosition(0,0,0);
         §#g§.setPosition(1,_loc2_,0);
         §#g§.setPosition(2,0,_loc3_);
         §#g§.setPosition(3,_loc2_,_loc3_);
         this.§0!0§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §#g§.setTexCoords(param1,param2.x,param2.y);
         this.§0!0§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §#g§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§0!r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§55§.copyTo(param1,param2,param3,this.§#7§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§^!N§;
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
         if(param1 != this.§^!N§)
         {
            this.§^!N§ = param1;
            _loc2_ = this.texture.§?a§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§^!N§.premultipliedAlpha);
            this.§0!0§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§0,§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§>"6§.§#0§(param1))
         {
            this.§0,§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§0!0§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§0!0§();
      }
      
      override public function render(param1:§&"@§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§^!N§,this.§0,§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§#7§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§#7§ = this.§&M§;
         }
         else
         {
            this.§#7§ = true;
         }
         super.color = param1;
         this.§0!0§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§#7§ = this.§&M§;
         }
         else
         {
            this.§#7§ = true;
         }
         this.§0!0§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§^!N§.clippedBitmapData;
      }
   }
}
