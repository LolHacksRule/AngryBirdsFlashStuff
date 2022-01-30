package §^I§
{
   import §4!S§.§4Q§;
   import §4!S§.Texture;
   import §5!5§.§?"5§;
   import §5!5§.§^e§;
   import §="#§.§&-§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §=!+§ extends §5! §
   {
       
      
      private var §,!>§:Texture;
      
      private var §"K§:String;
      
      private var §8!'§:Boolean;
      
      private var §?"8§:Boolean;
      
      private var §7!W§:§&-§;
      
      private var §>&§:Boolean;
      
      public function §=!+§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§,!>§ = param1;
         if(!param3)
         {
            this.§"K§ = !!§^e§.§^"!§ ? §4Q§.NONE : §4Q§.§-"#§;
         }
         else
         {
            this.§"K§ = !!§^e§.§^"!§ ? §4Q§.§-"#§ : §4Q§.§1j§;
            this.§>&§ = true;
         }
         this.§8!'§ = param2;
         this.§?"8§ = this.§8!'§;
         this.§7!W§ = new §&-§(4,_loc7_);
         this.§;"$§(true);
      }
      
      public static function §%!J§(param1:Context3D, param2:Bitmap) : §=!+§
      {
         return new §=!+§(Texture.§%!J§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§>&§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §;!8§.setTexCoords(0,0,0);
         §;!8§.setTexCoords(1,1,0);
         §;!8§.setTexCoords(2,0,1);
         §;!8§.setTexCoords(3,1,1);
      }
      
      private function §;"$§(param1:Boolean = false) : void
      {
         §;!8§.copyTo(this.§7!W§,0,1,this.§8!'§ || param1,null);
         this.§,!>§.adjustVertexData(this.§7!W§,0,4);
      }
      
      public function §,!K§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §;!8§.setPosition(0,0,0);
         §;!8§.setPosition(1,_loc2_,0);
         §;!8§.setPosition(2,0,_loc3_);
         §;!8§.setPosition(3,_loc2_,_loc3_);
         this.§;"$§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §;!8§.setTexCoords(param1,param2.x,param2.y);
         this.§;"$§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §;!8§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§&-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§7!W§.copyTo(param1,param2,param3,this.§8!'§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§,!>§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§,!>§)
         {
            this.§,!>§ = param1;
            §;!8§.setPremultipliedAlpha(this.§,!>§.premultipliedAlpha);
            this.§;"$§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§"K§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§4Q§.§9"'§(param1))
         {
            this.§"K§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§;"$§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§;"$§();
      }
      
      override public function render(param1:§?"5§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§,!>§,this.§"K§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§8!'§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§8!'§ = this.§?"8§;
         }
         else
         {
            this.§8!'§ = true;
         }
         super.color = param1;
         this.§;"$§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,!>§.clippedBitmapData;
      }
   }
}
