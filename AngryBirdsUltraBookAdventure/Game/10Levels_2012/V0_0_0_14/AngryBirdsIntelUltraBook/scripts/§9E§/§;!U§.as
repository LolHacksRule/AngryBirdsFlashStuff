package §9E§
{
   import §!!9§.§4!'§;
   import §!!9§.Texture;
   import §2N§.§,!J§;
   import §@4§.§,!]§;
   import §@4§.§<!I§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §;!U§ extends §1!w§
   {
       
      
      private var §,!Q§:Texture;
      
      private var §2F§:String;
      
      private var §^#§:Boolean;
      
      private var §?u§:Boolean;
      
      private var §[_§:§,!J§;
      
      private var §"2§:Boolean;
      
      public function §;!U§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§,!Q§ = param1;
         if(!param3)
         {
            this.§2F§ = !!§,!]§.§,?§ ? §4!'§.NONE : §4!'§.§5!'§;
         }
         else
         {
            this.§2F§ = !!§,!]§.§,?§ ? §4!'§.§5!'§ : §4!'§.§<,§;
            this.§"2§ = true;
         }
         this.§^#§ = param2;
         this.§?u§ = this.§^#§;
         this.§[_§ = new §,!J§(4,_loc7_);
         this.§#k§(true);
      }
      
      public static function §>O§(param1:Context3D, param2:Bitmap) : §;!U§
      {
         return new §;!U§(Texture.§>O§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§"2§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §3!^§.setTexCoords(0,0,0);
         §3!^§.setTexCoords(1,1,0);
         §3!^§.setTexCoords(2,0,1);
         §3!^§.setTexCoords(3,1,1);
      }
      
      private function §#k§(param1:Boolean = false) : void
      {
         §3!^§.copyTo(this.§[_§,0,1,this.§^#§ || param1,null);
         this.§,!Q§.adjustVertexData(this.§[_§,0,4);
      }
      
      public function §@!i§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §3!^§.setPosition(0,0,0);
         §3!^§.setPosition(1,_loc2_,0);
         §3!^§.setPosition(2,0,_loc3_);
         §3!^§.setPosition(3,_loc2_,_loc3_);
         this.§#k§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §3!^§.setTexCoords(param1,param2.x,param2.y);
         this.§#k§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §3!^§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§,!J§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[_§.copyTo(param1,param2,param3,this.§^#§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§,!Q§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§,!Q§)
         {
            this.§,!Q§ = param1;
            §3!^§.setPremultipliedAlpha(this.§,!Q§.premultipliedAlpha);
            this.§#k§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§2F§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§4!'§.§%!3§(param1))
         {
            this.§2F§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§#k§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§#k§();
      }
      
      override public function render(param1:§<!I§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§,!Q§,this.§2F§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§^#§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§^#§ = this.§?u§;
         }
         else
         {
            this.§^#§ = true;
         }
         super.color = param1;
         this.§#k§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,!Q§.clippedBitmapData;
      }
   }
}
