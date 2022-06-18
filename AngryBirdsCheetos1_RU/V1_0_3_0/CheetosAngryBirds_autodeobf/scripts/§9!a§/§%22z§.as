package §9!a§
{
   import §+a§.§"!>§;
   import §+a§.Texture;
   import §-!%§.§'-§;
   import §>N§.§"u§;
   import §>N§.§>q§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"z§ extends §]o§
   {
       
      
      private var §`>§:Texture;
      
      private var §-?§:String;
      
      private var §>M§:Boolean;
      
      private var §9!L§:Boolean;
      
      private var §>!B§:§'-§;
      
      private var §[F§:Boolean;
      
      public function §"z§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§ i§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§`>§ = param1;
         if(!param3)
         {
            this.§-?§ = !!§"u§.§,z§ ? §"!>§.NONE : §"!>§.§`5§;
         }
         else
         {
            this.§-?§ = !!§"u§.§,z§ ? §"!>§.§`5§ : §"!>§.§^!J§;
            this.§[F§ = true;
         }
         this.§>M§ = param2;
         this.§9!L§ = this.§>M§;
         this.§>!B§ = new §'-§(4,_loc7_);
         this.§#5§(true);
      }
      
      public static function §,N§(param1:Context3D, param2:Bitmap) : §"z§
      {
         return new §"z§(Texture.§,N§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[F§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §1;§.setTexCoords(0,0,0);
         §1;§.setTexCoords(1,1,0);
         §1;§.setTexCoords(2,0,1);
         §1;§.setTexCoords(3,1,1);
      }
      
      private function §#5§(param1:Boolean = false) : void
      {
         §1;§.copyTo(this.§>!B§,0,1,this.§>M§ || param1,null);
         this.§`>§.adjustVertexData(this.§>!B§,0,4);
      }
      
      public function §[6§() : void
      {
         var _loc1_:Rectangle = this.texture.§ i§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §1;§.setPosition(0,0,0);
         §1;§.setPosition(1,_loc2_,0);
         §1;§.setPosition(2,0,_loc3_);
         §1;§.setPosition(3,_loc2_,_loc3_);
         this.§#5§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §1;§.setTexCoords(param1,param2.x,param2.y);
         this.§#5§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §1;§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§'-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§>!B§.copyTo(param1,param2,param3,this.§>M§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§`>§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§`>§)
         {
            this.§`>§ = param1;
            §1;§.setPremultipliedAlpha(this.§`>§.premultipliedAlpha);
            this.§#5§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§-?§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§"!>§.§7!Y§(param1))
         {
            this.§-?§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§#5§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§#5§();
      }
      
      override public function render(param1:§>q§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§`>§,this.§-?§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§>M§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§>M§ = this.§9!L§;
         }
         else
         {
            this.§>M§ = true;
         }
         super.color = param1;
         this.§#5§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§`>§.clippedBitmapData;
      }
   }
}
