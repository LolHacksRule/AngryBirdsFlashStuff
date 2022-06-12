package §]!v§
{
   import §+!F§.§1!D§;
   import §+!F§.§<!l§;
   import §8!8§.§`g§;
   import §?7§.§'!6§;
   import §?7§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §'!=§ extends §+!`§
   {
       
      
      private var §&P§:Texture;
      
      private var §'";§:String;
      
      private var § "?§:Boolean;
      
      private var §@!^§:Boolean;
      
      private var §-!G§:§`g§;
      
      private var §^<§:Boolean;
      
      public function §'!=§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§&P§ = param1;
         if(!param3)
         {
            this.§'";§ = !!§1!D§.§9"I§ ? §'!6§.NONE : §'!6§.§!!6§;
         }
         else
         {
            this.§'";§ = !!§1!D§.§9"I§ ? §'!6§.§!!6§ : §'!6§.§,j§;
            this.§^<§ = true;
         }
         this.§ "?§ = param2;
         this.§@!^§ = this.§ "?§;
         this.§-!G§ = new §`g§(4,_loc7_);
         this.§2!T§(true);
      }
      
      public static function §^!I§(param1:Context3D, param2:Bitmap) : §'!=§
      {
         return new §'!=§(Texture.§^!I§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^<§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §`!a§.setTexCoords(0,0,0);
         §`!a§.setTexCoords(1,1,0);
         §`!a§.setTexCoords(2,0,1);
         §`!a§.setTexCoords(3,1,1);
      }
      
      private function §2!T§(param1:Boolean = false) : void
      {
         §`!a§.copyTo(this.§-!G§,0,1,this.§ "?§ || param1,null);
         this.§&P§.adjustVertexData(this.§-!G§,0,4);
      }
      
      public function §="%§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §`!a§.setPosition(0,0,0);
         §`!a§.setPosition(1,_loc2_,0);
         §`!a§.setPosition(2,0,_loc3_);
         §`!a§.setPosition(3,_loc2_,_loc3_);
         this.§2!T§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §`!a§.setTexCoords(param1,param2.x,param2.y);
         this.§2!T§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §`!a§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§`g§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§-!G§.copyTo(param1,param2,param3,this.§ "?§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§&P§;
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
         if(param1 != this.§&P§)
         {
            this.§&P§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§&P§.premultipliedAlpha);
            this.§2!T§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'";§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§'!6§.§1!m§(param1))
         {
            this.§'";§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§2!T§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§2!T§();
      }
      
      override public function render(param1:§<!l§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§&P§,this.§'";§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§ "?§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§ "?§ = this.§@!^§;
         }
         else
         {
            this.§ "?§ = true;
         }
         super.color = param1;
         this.§2!T§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§ "?§ = this.§@!^§;
         }
         else
         {
            this.§ "?§ = true;
         }
         this.§2!T§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§&P§.clippedBitmapData;
      }
   }
}
