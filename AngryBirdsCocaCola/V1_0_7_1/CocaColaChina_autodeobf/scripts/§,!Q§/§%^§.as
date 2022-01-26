package §,!Q§
{
   import § F§.§,!>§;
   import § F§.§3!&§;
   import §+!S§.Texture;
   import §+!S§.§]U§;
   import §?!Z§.§4k§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%^§ extends §2P§
   {
       
      
      private var §3!"§:Texture;
      
      private var §6F§:String;
      
      private var §[!K§:Boolean;
      
      private var §;![§:Boolean;
      
      private var §!@§:§4k§;
      
      private var §?!#§:Boolean;
      
      public function §%^§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§?!F§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§3!"§ = param1;
         if(!param3)
         {
            this.§6F§ = !!§3!&§.§@$§ ? §]U§.NONE : §]U§.§ !;§;
         }
         else
         {
            this.§6F§ = !!§3!&§.§@$§ ? §]U§.§ !;§ : §]U§.§,4§;
            this.§?!#§ = true;
         }
         this.§[!K§ = param2;
         this.§;![§ = this.§[!K§;
         this.§!@§ = new §4k§(4,_loc7_);
         this.§6!8§(true);
      }
      
      public static function §5+§(param1:Context3D, param2:Bitmap) : §%^§
      {
         return new §%^§(Texture.§5+§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§?!#§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §-!@§.setTexCoords(0,0,0);
         §-!@§.setTexCoords(1,1,0);
         §-!@§.setTexCoords(2,0,1);
         §-!@§.setTexCoords(3,1,1);
      }
      
      private function §6!8§(param1:Boolean = false) : void
      {
         §-!@§.copyTo(this.§!@§,0,1,this.§[!K§ || param1,null);
         this.§3!"§.adjustVertexData(this.§!@§,0,4);
      }
      
      public function §9!A§() : void
      {
         var _loc1_:Rectangle = this.texture.§?!F§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §-!@§.setPosition(0,0,0);
         §-!@§.setPosition(1,_loc2_,0);
         §-!@§.setPosition(2,0,_loc3_);
         §-!@§.setPosition(3,_loc2_,_loc3_);
         this.§6!8§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §-!@§.setTexCoords(param1,param2.x,param2.y);
         this.§6!8§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §-!@§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§4k§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§!@§.copyTo(param1,param2,param3,this.§[!K§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§3!"§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§3!"§)
         {
            this.§3!"§ = param1;
            §-!@§.setPremultipliedAlpha(this.§3!"§.premultipliedAlpha);
            this.§6!8§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§6F§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§]U§.§"!d§(param1))
         {
            this.§6F§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§6!8§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§6!8§();
      }
      
      override public function render(param1:§,!>§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§3!"§,this.§6F§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§[!K§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§[!K§ = this.§;![§;
         }
         else
         {
            this.§[!K§ = true;
         }
         super.color = param1;
         this.§6!8§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§3!"§.clippedBitmapData;
      }
   }
}
