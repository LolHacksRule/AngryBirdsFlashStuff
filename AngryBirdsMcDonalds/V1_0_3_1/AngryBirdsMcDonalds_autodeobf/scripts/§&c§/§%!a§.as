package §&c§
{
   import § %§.§3!e§;
   import § %§.§`M§;
   import §&Y§.§-!G§;
   import §&Y§.Texture;
   import §=G§.§#!N§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%!a§ extends §2!]§
   {
       
      
      private var §'C§:Texture;
      
      private var §9!W§:String;
      
      private var §45§:Boolean;
      
      private var §'g§:Boolean;
      
      private var §"!2§:§#!N§;
      
      private var §+!=§:Boolean;
      
      public function §%!a§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§`!l§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§'C§ = param1;
         if(!param3)
         {
            this.§9!W§ = !!§`M§.§#z§ ? §-!G§.NONE : §-!G§.§9A§;
         }
         else
         {
            this.§9!W§ = !!§`M§.§#z§ ? §-!G§.§9A§ : §-!G§.§+^§;
            this.§+!=§ = true;
         }
         this.§45§ = param2;
         this.§'g§ = this.§45§;
         this.§"!2§ = new §#!N§(4,_loc7_);
         this.§%!d§(true);
      }
      
      public static function §'!l§(param1:Context3D, param2:Bitmap) : §%!a§
      {
         return new §%!a§(Texture.§'!l§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§+!=§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §5!L§.setTexCoords(0,0,0);
         §5!L§.setTexCoords(1,1,0);
         §5!L§.setTexCoords(2,0,1);
         §5!L§.setTexCoords(3,1,1);
      }
      
      private function §%!d§(param1:Boolean = false) : void
      {
         §5!L§.copyTo(this.§"!2§,0,1,this.§45§ || param1,null);
         this.§'C§.adjustVertexData(this.§"!2§,0,4);
      }
      
      public function §6!d§() : void
      {
         var _loc1_:Rectangle = this.texture.§`!l§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §5!L§.setPosition(0,0,0);
         §5!L§.setPosition(1,_loc2_,0);
         §5!L§.setPosition(2,0,_loc3_);
         §5!L§.setPosition(3,_loc2_,_loc3_);
         this.§%!d§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §5!L§.setTexCoords(param1,param2.x,param2.y);
         this.§%!d§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §5!L§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§#!N§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"!2§.copyTo(param1,param2,param3,this.§45§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§'C§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§'C§)
         {
            this.§'C§ = param1;
            §5!L§.setPremultipliedAlpha(this.§'C§.premultipliedAlpha);
            this.§%!d§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§9!W§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§-!G§.§&m§(param1))
         {
            this.§9!W§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§%!d§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§%!d§();
      }
      
      override public function render(param1:§3!e§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§'C§,this.§9!W§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§45§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§45§ = this.§'g§;
         }
         else
         {
            this.§45§ = true;
         }
         super.color = param1;
         this.§%!d§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§'C§.clippedBitmapData;
      }
   }
}
