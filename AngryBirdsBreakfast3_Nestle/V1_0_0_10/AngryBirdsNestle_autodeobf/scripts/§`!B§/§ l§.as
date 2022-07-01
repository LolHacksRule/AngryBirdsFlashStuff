package §`!B§
{
   import §1Q§.§=!6§;
   import §6s§.§<O§;
   import §6s§.Texture;
   import §=!d§.§5!5§;
   import §=!d§.§`J§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § l§ extends §]!J§
   {
       
      
      private var §^V§:Texture;
      
      private var §'@§:String;
      
      private var §5!y§:Boolean;
      
      private var §8!3§:Boolean;
      
      private var §'x§:§=!6§;
      
      private var §2i§:Boolean;
      
      public function § l§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§6!m§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§^V§ = param1;
         if(!param3)
         {
            this.§'@§ = !!§5!5§.§ 4§ ? §<O§.NONE : §<O§.§9!I§;
         }
         else
         {
            this.§'@§ = !!§5!5§.§ 4§ ? §<O§.§9!I§ : §<O§.§`!"§;
            this.§2i§ = true;
         }
         this.§5!y§ = param2;
         this.§8!3§ = this.§5!y§;
         this.§'x§ = new §=!6§(4,_loc7_);
         this.§]P§(true);
      }
      
      public static function §"!I§(param1:Context3D, param2:Bitmap) : § l§
      {
         return new § l§(Texture.§"!I§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§2i§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §[n§.setTexCoords(0,0,0);
         §[n§.setTexCoords(1,1,0);
         §[n§.setTexCoords(2,0,1);
         §[n§.setTexCoords(3,1,1);
      }
      
      private function §]P§(param1:Boolean = false) : void
      {
         §[n§.copyTo(this.§'x§,0,1,this.§5!y§ || param1,null);
         this.§^V§.adjustVertexData(this.§'x§,0,4);
      }
      
      public function §8n§(param1:Vector.<Point>) : void
      {
         §[n§.setPosition(0,param1[0].x,param1[0].y);
         §[n§.setPosition(1,param1[1].x,param1[1].y);
         §[n§.setPosition(2,param1[2].x,param1[2].y);
         §[n§.setPosition(3,param1[3].x,param1[3].y);
         this.§]P§();
      }
      
      public function §5q§() : void
      {
         var _loc1_:Rectangle = this.texture.§6!m§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §[n§.setPosition(0,0,0);
         §[n§.setPosition(1,_loc2_,0);
         §[n§.setPosition(2,0,_loc3_);
         §[n§.setPosition(3,_loc2_,_loc3_);
         this.§]P§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §[n§.setTexCoords(param1,param2.x,param2.y);
         this.§]P§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §[n§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§=!6§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§'x§.copyTo(param1,param2,param3,this.§5!y§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§^V§;
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
         if(param1 != this.§^V§)
         {
            this.§^V§ = param1;
            _loc2_ = this.texture.§6!m§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§^V§.premultipliedAlpha);
            this.§]P§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'@§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§<O§.§9!y§(param1))
         {
            this.§'@§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§]P§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§]P§();
      }
      
      override public function render(param1:§`J§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§^V§,this.§'@§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§5!y§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§5!y§ = this.§8!3§;
         }
         else
         {
            this.§5!y§ = true;
         }
         super.color = param1;
         this.§]P§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§5!y§ = this.§8!3§;
         }
         else
         {
            this.§5!y§ = true;
         }
         this.§]P§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§^V§.clippedBitmapData;
      }
   }
}
