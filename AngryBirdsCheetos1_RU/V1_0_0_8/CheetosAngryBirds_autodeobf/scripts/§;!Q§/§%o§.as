package §;!Q§
{
   import §-!§.§-§;
   import §-!§.§3!5§;
   import §9!V§.§3!B§;
   import §]p§.§5!A§;
   import §]p§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%o§ extends §,r§
   {
       
      
      private var §`h§:Texture;
      
      private var §3!]§:String;
      
      private var §62§:Boolean;
      
      private var §?Y§:Boolean;
      
      private var §,=§:§3!B§;
      
      private var §8!]§:Boolean;
      
      public function §%o§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§3!=§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§`h§ = param1;
         if(!param3)
         {
            this.§3!]§ = !!§-§.§?7§ ? §5!A§.NONE : §5!A§.§6;§;
         }
         else
         {
            this.§3!]§ = !!§-§.§?7§ ? §5!A§.§6;§ : §5!A§.§!!C§;
            this.§8!]§ = true;
         }
         this.§62§ = param2;
         this.§?Y§ = this.§62§;
         this.§,=§ = new §3!B§(4,_loc7_);
         this.§=!8§(true);
      }
      
      public static function §+P§(param1:Context3D, param2:Bitmap) : §%o§
      {
         return new §%o§(Texture.§+P§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§8!]§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §[!L§.setTexCoords(0,0,0);
         §[!L§.setTexCoords(1,1,0);
         §[!L§.setTexCoords(2,0,1);
         §[!L§.setTexCoords(3,1,1);
      }
      
      private function §=!8§(param1:Boolean = false) : void
      {
         §[!L§.copyTo(this.§,=§,0,1,this.§62§ || param1,null);
         this.§`h§.adjustVertexData(this.§,=§,0,4);
      }
      
      public function §#!4§() : void
      {
         var _loc1_:Rectangle = this.texture.§3!=§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §[!L§.setPosition(0,0,0);
         §[!L§.setPosition(1,_loc2_,0);
         §[!L§.setPosition(2,0,_loc3_);
         §[!L§.setPosition(3,_loc2_,_loc3_);
         this.§=!8§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §[!L§.setTexCoords(param1,param2.x,param2.y);
         this.§=!8§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §[!L§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3!B§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§,=§.copyTo(param1,param2,param3,this.§62§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§`h§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§`h§)
         {
            this.§`h§ = param1;
            §[!L§.setPremultipliedAlpha(this.§`h§.premultipliedAlpha);
            this.§=!8§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§3!]§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§5!A§.§@!E§(param1))
         {
            this.§3!]§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§=!8§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§=!8§();
      }
      
      override public function render(param1:§3!5§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§`h§,this.§3!]§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§62§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§62§ = this.§?Y§;
         }
         else
         {
            this.§62§ = true;
         }
         super.color = param1;
         this.§=!8§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§`h§.clippedBitmapData;
      }
   }
}
