package §default§
{
   import §3W§.§>!-§;
   import §6p§.§5!W§;
   import §6p§.§?%§;
   import §7R§.§=!O§;
   import §7R§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!Z§ extends §^$§
   {
       
      
      private var §+!m§:Texture;
      
      private var §;";§:String;
      
      private var §@!E§:Boolean;
      
      private var §'!s§:Boolean;
      
      private var §0!a§:§>!-§;
      
      private var §3z§:Boolean;
      
      public function §=!Z§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§+!m§ = param1;
         if(!param3)
         {
            this.§;";§ = !!§?%§.§ !J§ ? §=!O§.NONE : §=!O§.§;!U§;
         }
         else
         {
            this.§;";§ = !!§?%§.§ !J§ ? §=!O§.§;!U§ : §=!O§.§ l§;
            this.§3z§ = true;
         }
         this.§@!E§ = param2;
         this.§'!s§ = this.§@!E§;
         this.§0!a§ = new §>!-§(4,_loc7_);
         this.§1!v§(true);
      }
      
      public static function §5s§(param1:Context3D, param2:Bitmap) : §=!Z§
      {
         return new §=!Z§(Texture.§5s§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§3z§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §8!m§.setTexCoords(0,0,0);
         §8!m§.setTexCoords(1,1,0);
         §8!m§.setTexCoords(2,0,1);
         §8!m§.setTexCoords(3,1,1);
      }
      
      private function §1!v§(param1:Boolean = false) : void
      {
         §8!m§.copyTo(this.§0!a§,0,1,this.§@!E§ || param1,null);
         this.§+!m§.adjustVertexData(this.§0!a§,0,4);
      }
      
      public function §<V§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §8!m§.setPosition(0,0,0);
         §8!m§.setPosition(1,_loc2_,0);
         §8!m§.setPosition(2,0,_loc3_);
         §8!m§.setPosition(3,_loc2_,_loc3_);
         this.§1!v§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §8!m§.setTexCoords(param1,param2.x,param2.y);
         this.§1!v§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §8!m§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§>!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§0!a§.copyTo(param1,param2,param3,this.§@!E§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§+!m§;
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
         if(param1 != this.§+!m§)
         {
            this.§+!m§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§+!m§.premultipliedAlpha);
            this.§1!v§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§;";§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§=!O§.§!!Q§(param1))
         {
            this.§;";§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§1!v§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§1!v§();
      }
      
      override public function render(param1:§5!W§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§+!m§,this.§;";§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§@!E§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§@!E§ = this.§'!s§;
         }
         else
         {
            this.§@!E§ = true;
         }
         super.color = param1;
         this.§1!v§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§+!m§.clippedBitmapData;
      }
   }
}
