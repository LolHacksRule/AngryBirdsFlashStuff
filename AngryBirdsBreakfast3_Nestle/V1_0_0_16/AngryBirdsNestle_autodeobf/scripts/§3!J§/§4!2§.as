package §3!J§
{
   import §!!!§.§6!l§;
   import §!!!§.§<@§;
   import §=!4§.Texture;
   import §=!4§.§`'§;
   import §^!^§.§#!_§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4!2§ extends §8!l§
   {
       
      
      private var §>"5§:Texture;
      
      private var §`<§:String;
      
      private var §;J§:Boolean;
      
      private var §do§:Boolean;
      
      private var §<!E§:§#!_§;
      
      private var §'_§:Boolean;
      
      public function §4!2§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§&F§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§>"5§ = param1;
         if(!param3)
         {
            this.§`<§ = !!§6!l§.§`k§ ? §`'§.NONE : §`'§.§1!T§;
         }
         else
         {
            this.§`<§ = !!§6!l§.§`k§ ? §`'§.§1!T§ : §`'§.§&5§;
            this.§'_§ = true;
         }
         this.§;J§ = param2;
         this.§do§ = this.§;J§;
         this.§<!E§ = new §#!_§(4,_loc7_);
         this.§'!x§(true);
      }
      
      public static function §83§(param1:Context3D, param2:Bitmap) : §4!2§
      {
         return new §4!2§(Texture.§83§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§'_§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §2!^§.setTexCoords(0,0,0);
         §2!^§.setTexCoords(1,1,0);
         §2!^§.setTexCoords(2,0,1);
         §2!^§.setTexCoords(3,1,1);
      }
      
      private function §'!x§(param1:Boolean = false) : void
      {
         §2!^§.copyTo(this.§<!E§,0,1,this.§;J§ || param1,null);
         this.§>"5§.adjustVertexData(this.§<!E§,0,4);
      }
      
      public function §0"&§(param1:Vector.<Point>) : void
      {
         §2!^§.setPosition(0,param1[0].x,param1[0].y);
         §2!^§.setPosition(1,param1[1].x,param1[1].y);
         §2!^§.setPosition(2,param1[2].x,param1[2].y);
         §2!^§.setPosition(3,param1[3].x,param1[3].y);
         this.§'!x§();
      }
      
      public function §2h§() : void
      {
         var _loc1_:Rectangle = this.texture.§&F§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §2!^§.setPosition(0,0,0);
         §2!^§.setPosition(1,_loc2_,0);
         §2!^§.setPosition(2,0,_loc3_);
         §2!^§.setPosition(3,_loc2_,_loc3_);
         this.§'!x§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §2!^§.setTexCoords(param1,param2.x,param2.y);
         this.§'!x§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §2!^§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§#!_§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§<!E§.copyTo(param1,param2,param3,this.§;J§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§>"5§;
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
         if(param1 != this.§>"5§)
         {
            this.§>"5§ = param1;
            _loc2_ = this.texture.§&F§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§>"5§.premultipliedAlpha);
            this.§'!x§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§`<§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§`'§.§`y§(param1))
         {
            this.§`<§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§'!x§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§'!x§();
      }
      
      override public function render(param1:§<@§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§>"5§,this.§`<§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§;J§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§;J§ = this.§do§;
         }
         else
         {
            this.§;J§ = true;
         }
         super.color = param1;
         this.§'!x§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§;J§ = this.§do§;
         }
         else
         {
            this.§;J§ = true;
         }
         this.§'!x§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>"5§.clippedBitmapData;
      }
   }
}
