package §`L§
{
   import §+<§.§^"9§;
   import §-!+§.§,7§;
   import §-!+§.§6"6§;
   import §@!#§.§3"8§;
   import §@!#§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-;§ extends §=!x§
   {
       
      
      private var §!"§:Texture;
      
      private var §'L§:String;
      
      private var §;!;§:Boolean;
      
      private var §3_§:Boolean;
      
      private var §#!T§:§^"9§;
      
      private var §?!3§:Boolean;
      
      public function §-;§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§!"§ = param1;
         if(!param3)
         {
            this.§'L§ = !!§6"6§.§5!f§ ? §3"8§.NONE : §3"8§.§7"%§;
         }
         else
         {
            this.§'L§ = !!§6"6§.§5!f§ ? §3"8§.§7"%§ : §3"8§.§"!I§;
            this.§?!3§ = true;
         }
         this.§;!;§ = param2;
         this.§3_§ = this.§;!;§;
         this.§#!T§ = new §^"9§(4,_loc7_);
         this.§9!9§(true);
      }
      
      public static function §&_§(param1:Context3D, param2:Bitmap) : §-;§
      {
         return new §-;§(Texture.§&_§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§?!3§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §'B§.setTexCoords(0,0,0);
         §'B§.setTexCoords(1,1,0);
         §'B§.setTexCoords(2,0,1);
         §'B§.setTexCoords(3,1,1);
      }
      
      private function §9!9§(param1:Boolean = false) : void
      {
         §'B§.copyTo(this.§#!T§,0,1,this.§;!;§ || param1,null);
         this.§!"§.adjustVertexData(this.§#!T§,0,4);
      }
      
      public function §'!D§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §'B§.setPosition(0,0,0);
         §'B§.setPosition(1,_loc2_,0);
         §'B§.setPosition(2,0,_loc3_);
         §'B§.setPosition(3,_loc2_,_loc3_);
         this.§9!9§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §'B§.setTexCoords(param1,param2.x,param2.y);
         this.§9!9§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §'B§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§^"9§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#!T§.copyTo(param1,param2,param3,this.§;!;§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§!"§;
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
         if(param1 != this.§!"§)
         {
            this.§!"§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§!"§.premultipliedAlpha);
            this.§9!9§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'L§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§3"8§.§2!a§(param1))
         {
            this.§'L§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§9!9§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§9!9§();
      }
      
      override public function render(param1:§,7§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§!"§,this.§'L§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§;!;§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§;!;§ = this.§3_§;
         }
         else
         {
            this.§;!;§ = true;
         }
         super.color = param1;
         this.§9!9§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§!"§.clippedBitmapData;
      }
   }
}
