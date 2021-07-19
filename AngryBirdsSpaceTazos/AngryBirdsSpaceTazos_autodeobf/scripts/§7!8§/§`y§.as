package §7!8§
{
   import §&!Z§.§6!r§;
   import §5Q§.§%!t§;
   import §5Q§.§^!e§;
   import §`!#§.§-!k§;
   import §`!#§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`y§ extends §&!D§
   {
       
      
      private var §2-§:Texture;
      
      private var §!U§:String;
      
      private var §4!z§:Boolean;
      
      private var §5!c§:Boolean;
      
      private var §""7§:§6!r§;
      
      private var §>v§:Boolean;
      
      public function §`y§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.§`6§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§2-§ = param1;
         if(!param3)
         {
            this.§!U§ = !!§^!e§.§use§ ? §-!k§.NONE : §-!k§.§?F§;
         }
         else
         {
            this.§!U§ = !!§^!e§.§use§ ? §-!k§.§?F§ : §-!k§.§+!%§;
            this.§>v§ = true;
         }
         this.§4!z§ = param2;
         this.§5!c§ = this.§4!z§;
         this.§""7§ = new §6!r§(4,_loc7_);
         this.§[!M§(true);
      }
      
      public static function §3<§(param1:Context3D, param2:Bitmap) : §`y§
      {
         return new §`y§(Texture.§3<§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§>v§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §'!O§.setTexCoords(0,0,0);
         §'!O§.setTexCoords(1,1,0);
         §'!O§.setTexCoords(2,0,1);
         §'!O§.setTexCoords(3,1,1);
      }
      
      private function §[!M§(param1:Boolean = false) : void
      {
         §'!O§.copyTo(this.§""7§,0,1,this.§4!z§ || param1,null);
         this.§2-§.adjustVertexData(this.§""7§,0,4);
      }
      
      public function §7+§() : void
      {
         var _loc1_:Rectangle = this.texture.§`6§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §'!O§.setPosition(0,0,0);
         §'!O§.setPosition(1,_loc2_,0);
         §'!O§.setPosition(2,0,_loc3_);
         §'!O§.setPosition(3,_loc2_,_loc3_);
         this.§[!M§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §'!O§.setTexCoords(param1,param2.x,param2.y);
         this.§[!M§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §'!O§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§6!r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§""7§.copyTo(param1,param2,param3,this.§4!z§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§2-§;
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
         if(param1 != this.§2-§)
         {
            this.§2-§ = param1;
            _loc2_ = this.texture.§`6§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§2-§.premultipliedAlpha);
            this.§[!M§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§!U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§-!k§.§2!G§(param1))
         {
            this.§!U§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§[!M§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§[!M§();
      }
      
      override public function render(param1:§%!t§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§2-§,this.§!U§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§4!z§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§4!z§ = this.§5!c§;
         }
         else
         {
            this.§4!z§ = true;
         }
         super.color = param1;
         this.§[!M§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§4!z§ = this.§5!c§;
         }
         else
         {
            this.§4!z§ = true;
         }
         this.§[!M§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§2-§.clippedBitmapData;
      }
   }
}
