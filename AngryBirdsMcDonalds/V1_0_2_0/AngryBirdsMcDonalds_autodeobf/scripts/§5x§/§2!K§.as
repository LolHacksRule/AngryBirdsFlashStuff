package §5x§
{
   import §",§.§8d§;
   import §",§.Texture;
   import §4!$§.§<!2§;
   import §4!$§.§]!f§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2!K§ extends §3"§
   {
       
      
      private var §%S§:Texture;
      
      private var §%!V§:String;
      
      private var §&[§:Boolean;
      
      private var §5!e§:Boolean;
      
      private var §!!e§:§!i§;
      
      private var §,!F§:Boolean;
      
      public function §2!K§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§+!Q§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§%S§ = param1;
         if(!param3)
         {
            this.§%!V§ = !!§<!2§.§ !p§ ? §8d§.NONE : §8d§.§9u§;
         }
         else
         {
            this.§%!V§ = !!§<!2§.§ !p§ ? §8d§.§9u§ : §8d§.§[!1§;
            this.§,!F§ = true;
         }
         this.§&[§ = param2;
         this.§5!e§ = this.§&[§;
         this.§!!e§ = new §!i§(4,_loc7_);
         this.§6!@§(true);
      }
      
      public static function §=!+§(param1:Context3D, param2:Bitmap) : §2!K§
      {
         return new §2!K§(Texture.§=!+§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§,!F§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §^!L§.setTexCoords(0,0,0);
         §^!L§.setTexCoords(1,1,0);
         §^!L§.setTexCoords(2,0,1);
         §^!L§.setTexCoords(3,1,1);
      }
      
      private function §6!@§(param1:Boolean = false) : void
      {
         §^!L§.copyTo(this.§!!e§,0,1,this.§&[§ || param1,null);
         this.§%S§.adjustVertexData(this.§!!e§,0,4);
      }
      
      public function §#B§() : void
      {
         var _loc1_:Rectangle = this.texture.§+!Q§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §^!L§.setPosition(0,0,0);
         §^!L§.setPosition(1,_loc2_,0);
         §^!L§.setPosition(2,0,_loc3_);
         §^!L§.setPosition(3,_loc2_,_loc3_);
         this.§6!@§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §^!L§.setTexCoords(param1,param2.x,param2.y);
         this.§6!@§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §^!L§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§!i§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!!e§.copyTo(param1,param2,param3,this.§&[§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§%S§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§%S§)
         {
            this.§%S§ = param1;
            §^!L§.setPremultipliedAlpha(this.§%S§.premultipliedAlpha);
            this.§6!@§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§%!V§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§8d§.§+j§(param1))
         {
            this.§%!V§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§6!@§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§6!@§();
      }
      
      override public function render(param1:§]!f§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§%S§,this.§%!V§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§&[§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§&[§ = this.§5!e§;
         }
         else
         {
            this.§&[§ = true;
         }
         super.color = param1;
         this.§6!@§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§%S§.clippedBitmapData;
      }
   }
}
