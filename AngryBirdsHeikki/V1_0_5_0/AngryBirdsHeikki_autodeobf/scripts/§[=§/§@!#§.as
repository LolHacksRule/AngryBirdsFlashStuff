package §[=§
{
   import § !9§.§&N§;
   import § !9§.Texture;
   import §8!4§.§>'§;
   import §>Q§.§5!5§;
   import §>Q§.§<!%§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §@!#§ extends §=!I§
   {
       
      
      private var §4! §:Texture;
      
      private var §^Y§:String;
      
      private var §-P§:Boolean;
      
      private var §4f§:Boolean;
      
      private var §@!>§:§>'§;
      
      private var §[!N§:Boolean;
      
      public function §@!#§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§[w§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§4! § = param1;
         if(!param3)
         {
            this.§^Y§ = !!§5!5§.§-!+§ ? §&N§.NONE : §&N§.§3@§;
         }
         else
         {
            this.§^Y§ = !!§5!5§.§-!+§ ? §&N§.§3@§ : §&N§.§?k§;
            this.§[!N§ = true;
         }
         this.§-P§ = param2;
         this.§4f§ = this.§-P§;
         this.§@!>§ = new §>'§(4,_loc7_);
         this.§`j§(true);
      }
      
      public static function §22§(param1:Context3D, param2:Bitmap) : §@!#§
      {
         return new §@!#§(Texture.§22§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[!N§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §,!"§.setTexCoords(0,0,0);
         §,!"§.setTexCoords(1,1,0);
         §,!"§.setTexCoords(2,0,1);
         §,!"§.setTexCoords(3,1,1);
      }
      
      private function §`j§(param1:Boolean = false) : void
      {
         §,!"§.copyTo(this.§@!>§,0,1,this.§-P§ || param1,null);
         this.§4! §.adjustVertexData(this.§@!>§,0,4);
      }
      
      public function §&p§() : void
      {
         var _loc1_:Rectangle = this.texture.§[w§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §,!"§.setPosition(0,0,0);
         §,!"§.setPosition(1,_loc2_,0);
         §,!"§.setPosition(2,0,_loc3_);
         §,!"§.setPosition(3,_loc2_,_loc3_);
         this.§`j§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §,!"§.setTexCoords(param1,param2.x,param2.y);
         this.§`j§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §,!"§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§>'§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@!>§.copyTo(param1,param2,param3,this.§-P§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§4! §;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§4! §)
         {
            this.§4! § = param1;
            §,!"§.setPremultipliedAlpha(this.§4! §.premultipliedAlpha);
            this.§`j§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§^Y§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§&N§.§>!8§(param1))
         {
            this.§^Y§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§`j§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§`j§();
      }
      
      override public function render(param1:§<!%§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§4! §,this.§^Y§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§-P§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§-P§ = this.§4f§;
         }
         else
         {
            this.§-P§ = true;
         }
         super.color = param1;
         this.§`j§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§4! §.clippedBitmapData;
      }
   }
}
