package §<k§
{
   import §2!+§.§5!§;
   import §9!2§.§7N§;
   import §9!2§.§>P§;
   import §<-§.§-t§;
   import §<-§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!=§ extends §!1§
   {
       
      
      private var §[d§:Texture;
      
      private var §'n§:String;
      
      private var § else§:Boolean;
      
      private var §]!A§:Boolean;
      
      private var §"X§:§5!§;
      
      private var §^_§:Boolean;
      
      public function §"!=§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§1R§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§[d§ = param1;
         if(!param3)
         {
            this.§'n§ = !!§7N§.§;Y§ ? §-t§.NONE : §-t§.§1!=§;
         }
         else
         {
            this.§'n§ = !!§7N§.§;Y§ ? §-t§.§1!=§ : §-t§.§&!7§;
            this.§^_§ = true;
         }
         this.§ else§ = param2;
         this.§]!A§ = this.§ else§;
         this.§"X§ = new §5!§(4,_loc7_);
         this.§`! §(true);
      }
      
      public static function §]`§(param1:Context3D, param2:Bitmap) : §"!=§
      {
         return new §"!=§(Texture.§]`§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^_§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §0!<§.setTexCoords(0,0,0);
         §0!<§.setTexCoords(1,1,0);
         §0!<§.setTexCoords(2,0,1);
         §0!<§.setTexCoords(3,1,1);
      }
      
      private function §`! §(param1:Boolean = false) : void
      {
         §0!<§.copyTo(this.§"X§,0,1,this.§ else§ || param1,null);
         this.§[d§.adjustVertexData(this.§"X§,0,4);
      }
      
      public function §;z§() : void
      {
         var _loc1_:Rectangle = this.texture.§1R§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §0!<§.setPosition(0,0,0);
         §0!<§.setPosition(1,_loc2_,0);
         §0!<§.setPosition(2,0,_loc3_);
         §0!<§.setPosition(3,_loc2_,_loc3_);
         this.§`! §();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §0!<§.setTexCoords(param1,param2.x,param2.y);
         this.§`! §();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §0!<§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§5!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§"X§.copyTo(param1,param2,param3,this.§ else§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§[d§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§[d§)
         {
            this.§[d§ = param1;
            §0!<§.setPremultipliedAlpha(this.§[d§.premultipliedAlpha);
            this.§`! §();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§'n§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§-t§.isValid(param1))
         {
            this.§'n§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§`! §();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§`! §();
      }
      
      override public function render(param1:§>P§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§[d§,this.§'n§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§ else§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§ else§ = this.§]!A§;
         }
         else
         {
            this.§ else§ = true;
         }
         super.color = param1;
         this.§`! §();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[d§.clippedBitmapData;
      }
   }
}
