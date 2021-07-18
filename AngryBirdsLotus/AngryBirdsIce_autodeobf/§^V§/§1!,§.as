package §^V§
{
   import §-Z§.§ G§;
   import §-Z§.§?h§;
   import §3!$§.§+^§;
   import §[P§.§@!$§;
   import §[P§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1!,§ extends §09§
   {
       
      
      private var §<i§:Texture;
      
      private var §^K§:String;
      
      private var §&4§:Boolean;
      
      private var §,7§:Boolean;
      
      private var §2b§:§+^§;
      
      private var §'!E§:Boolean;
      
      public function §1!,§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.§+e§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§<i§ = param1;
         if(!param3)
         {
            this.§^K§ = !!§?h§.§7"§ ? §@!$§.NONE : §@!$§.§]!$§;
         }
         else
         {
            this.§^K§ = !!§?h§.§7"§ ? §@!$§.§]!$§ : §@!$§.§-b§;
            this.§'!E§ = true;
         }
         this.§&4§ = param2;
         this.§,7§ = this.§&4§;
         this.§2b§ = new §+^§(4,_loc7_);
         this.§04§(true);
      }
      
      public static function §%U§(param1:Context3D, param2:Bitmap) : §1!,§
      {
         return new §1!,§(Texture.§%U§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§'!E§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §;#§.setTexCoords(0,0,0);
         §;#§.setTexCoords(1,1,0);
         §;#§.setTexCoords(2,0,1);
         §;#§.setTexCoords(3,1,1);
      }
      
      private function §04§(param1:Boolean = false) : void
      {
         §;#§.copyTo(this.§2b§,0,1,this.§&4§ || param1,null);
         this.§<i§.adjustVertexData(this.§2b§,0,4);
      }
      
      public function §8s§() : void
      {
         var _loc1_:Rectangle = this.texture.§+e§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §;#§.setPosition(0,0,0);
         §;#§.setPosition(1,_loc2_,0);
         §;#§.setPosition(2,0,_loc3_);
         §;#§.setPosition(3,_loc2_,_loc3_);
         this.§04§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §;#§.setTexCoords(param1,param2.x,param2.y);
         this.§04§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §;#§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§+^§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2b§.copyTo(param1,param2,param3,this.§&4§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§<i§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§<i§)
         {
            this.§<i§ = param1;
            §;#§.setPremultipliedAlpha(this.§<i§.premultipliedAlpha);
            this.§04§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§^K§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§@!$§.isValid(param1))
         {
            this.§^K§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§04§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§04§();
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§<i§,this.§^K§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§&4§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§&4§ = this.§,7§;
         }
         else
         {
            this.§&4§ = true;
         }
         super.color = param1;
         this.§04§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§<i§.clippedBitmapData;
      }
   }
}
