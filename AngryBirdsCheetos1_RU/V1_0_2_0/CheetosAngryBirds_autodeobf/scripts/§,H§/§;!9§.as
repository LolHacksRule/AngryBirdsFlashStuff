package §,H§
{
   import §&b§.§true§;
   import §,Y§.§"2§;
   import §,Y§.Texture;
   import §2!P§.§6=§;
   import §2!P§.§@9§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!9§ extends §>!C§
   {
       
      
      private var §&%§:Texture;
      
      private var §`w§:String;
      
      private var §2!M§:Boolean;
      
      private var §+!Z§:Boolean;
      
      private var § [§:§true§;
      
      private var §6!#§:Boolean;
      
      public function §;!9§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§null §) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§&%§ = param1;
         if(!param3)
         {
            this.§`w§ = !!§6=§.§9B§ ? §"2§.NONE : §"2§.§7![§;
         }
         else
         {
            this.§`w§ = !!§6=§.§9B§ ? §"2§.§7![§ : §"2§.§4!-§;
            this.§6!#§ = true;
         }
         this.§2!M§ = param2;
         this.§+!Z§ = this.§2!M§;
         this.§ [§ = new §true§(4,_loc7_);
         this.§0l§(true);
      }
      
      public static function §@![§(param1:Context3D, param2:Bitmap) : §;!9§
      {
         return new §;!9§(Texture.§@![§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§6!#§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §4!P§.setTexCoords(0,0,0);
         §4!P§.setTexCoords(1,1,0);
         §4!P§.setTexCoords(2,0,1);
         §4!P§.setTexCoords(3,1,1);
      }
      
      private function §0l§(param1:Boolean = false) : void
      {
         §4!P§.copyTo(this.§ [§,0,1,this.§2!M§ || param1,null);
         this.§&%§.adjustVertexData(this.§ [§,0,4);
      }
      
      public function §[J§() : void
      {
         var _loc1_:Rectangle = this.texture.§null §;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §4!P§.setPosition(0,0,0);
         §4!P§.setPosition(1,_loc2_,0);
         §4!P§.setPosition(2,0,_loc3_);
         §4!P§.setPosition(3,_loc2_,_loc3_);
         this.§0l§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §4!P§.setTexCoords(param1,param2.x,param2.y);
         this.§0l§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §4!P§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§true§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ [§.copyTo(param1,param2,param3,this.§2!M§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§&%§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§&%§)
         {
            this.§&%§ = param1;
            §4!P§.setPremultipliedAlpha(this.§&%§.premultipliedAlpha);
            this.§0l§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§`w§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§"2§.§#!P§(param1))
         {
            this.§`w§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§0l§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§0l§();
      }
      
      override public function render(param1:§@9§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§&%§,this.§`w§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§2!M§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§2!M§ = this.§+!Z§;
         }
         else
         {
            this.§2!M§ = true;
         }
         super.color = param1;
         this.§0l§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§&%§.clippedBitmapData;
      }
   }
}
