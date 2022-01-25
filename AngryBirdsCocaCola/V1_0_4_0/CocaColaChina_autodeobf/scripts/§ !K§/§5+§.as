package § !K§
{
   import §"![§.§ !;§;
   import §"![§.Texture;
   import §6l§.§23§;
   import §6l§.§79§;
   import §9!^§.§17§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §5+§ extends §&&§
   {
       
      
      private var §<Y§:Texture;
      
      private var §9C§:String;
      
      private var §9y§:Boolean;
      
      private var §;,§:Boolean;
      
      private var §'<§:§17§;
      
      private var §?!#§:Boolean;
      
      public function §5+§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§8W§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§<Y§ = param1;
         if(!param3)
         {
            this.§9C§ = !!§79§.§,!>§ ? § !;§.NONE : § !;§.§,4§;
         }
         else
         {
            this.§9C§ = !!§79§.§,!>§ ? § !;§.§,4§ : § !;§.§"!d§;
            this.§?!#§ = true;
         }
         this.§9y§ = param2;
         this.§;,§ = this.§9y§;
         this.§'<§ = new §17§(4,_loc7_);
         this.§`!!§(true);
      }
      
      public static function §^!1§(param1:Context3D, param2:Bitmap) : §5+§
      {
         return new §5+§(Texture.§^!1§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§?!#§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §>!@§.setTexCoords(0,0,0);
         §>!@§.setTexCoords(1,1,0);
         §>!@§.setTexCoords(2,0,1);
         §>!@§.setTexCoords(3,1,1);
      }
      
      private function §`!!§(param1:Boolean = false) : void
      {
         §>!@§.copyTo(this.§'<§,0,1,this.§9y§ || param1,null);
         this.§<Y§.adjustVertexData(this.§'<§,0,4);
      }
      
      public function §+9§() : void
      {
         var _loc1_:Rectangle = this.texture.§8W§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §>!@§.setPosition(0,0,0);
         §>!@§.setPosition(1,_loc2_,0);
         §>!@§.setPosition(2,0,_loc3_);
         §>!@§.setPosition(3,_loc2_,_loc3_);
         this.§`!!§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §>!@§.setTexCoords(param1,param2.x,param2.y);
         this.§`!!§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §>!@§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§17§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§'<§.copyTo(param1,param2,param3,this.§9y§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§<Y§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§<Y§)
         {
            this.§<Y§ = param1;
            §>!@§.setPremultipliedAlpha(this.§<Y§.premultipliedAlpha);
            this.§`!!§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§9C§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§ !;§.§2!S§(param1))
         {
            this.§9C§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§`!!§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§`!!§();
      }
      
      override public function render(param1:§23§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§<Y§,this.§9C§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§9y§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§9y§ = this.§;,§;
         }
         else
         {
            this.§9y§ = true;
         }
         super.color = param1;
         this.§`!!§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§<Y§.clippedBitmapData;
      }
   }
}
