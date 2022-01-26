package §3§
{
   import §+![§.§;7§;
   import §+![§.Texture;
   import §9![§.§%!L§;
   import §94§.§#!a§;
   import §94§.§&!7§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!!§ extends §2?§
   {
       
      
      private var §>b§:Texture;
      
      private var §[!T§:String;
      
      private var §1!7§:Boolean;
      
      private var §;J§:Boolean;
      
      private var §"!G§:§%!L§;
      
      private var §5`§:Boolean;
      
      public function §4!!§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§`b§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§>b§ = param1;
         if(!param3)
         {
            this.§[!T§ = !!§&!7§.§+X§ ? §;7§.NONE : §;7§.§^,§;
         }
         else
         {
            this.§[!T§ = !!§&!7§.§+X§ ? §;7§.§^,§ : §;7§.§-!O§;
            this.§5`§ = true;
         }
         this.§1!7§ = param2;
         this.§;J§ = this.§1!7§;
         this.§"!G§ = new §%!L§(4,_loc7_);
         this.§>t§(true);
      }
      
      public static function §,C§(param1:Context3D, param2:Bitmap) : §4!!§
      {
         return new §4!!§(Texture.§,C§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§5`§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §5h§.setTexCoords(0,0,0);
         §5h§.setTexCoords(1,1,0);
         §5h§.setTexCoords(2,0,1);
         §5h§.setTexCoords(3,1,1);
      }
      
      private function §>t§(param1:Boolean = false) : void
      {
         §5h§.copyTo(this.§"!G§,0,1,this.§1!7§ || param1,null);
         this.§>b§.adjustVertexData(this.§"!G§,0,4);
      }
      
      public function §,K§() : void
      {
         var _loc1_:Rectangle = this.texture.§`b§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §5h§.setPosition(0,0,0);
         §5h§.setPosition(1,_loc2_,0);
         §5h§.setPosition(2,0,_loc3_);
         §5h§.setPosition(3,_loc2_,_loc3_);
         this.§>t§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §5h§.setTexCoords(param1,param2.x,param2.y);
         this.§>t§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §5h§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§%!L§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"!G§.copyTo(param1,param2,param3,this.§1!7§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§>b§;
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
         if(param1 != this.§>b§)
         {
            this.§>b§ = param1;
            _loc2_ = this.texture.§`b§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§>b§.premultipliedAlpha);
            this.§>t§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§[!T§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§;7§.§&!b§(param1))
         {
            this.§[!T§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§>t§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§>t§();
      }
      
      override public function render(param1:§#!a§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§>b§,this.§[!T§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§1!7§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§1!7§ = this.§;J§;
         }
         else
         {
            this.§1!7§ = true;
         }
         super.color = param1;
         this.§>t§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>b§.clippedBitmapData;
      }
   }
}
