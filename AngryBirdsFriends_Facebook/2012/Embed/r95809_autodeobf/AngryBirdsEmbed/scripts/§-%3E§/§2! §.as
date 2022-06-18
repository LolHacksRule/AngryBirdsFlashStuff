package §->§
{
   import §&!7§.§"`§;
   import §&!7§.Texture;
   import §&I§.§3! §;
   import §&I§.§?!§;
   import §<§.§?!5§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §2! § extends §7d§
   {
       
      
      private var §3P§:Texture;
      
      private var §1c§:String;
      
      private var §[q§:Boolean;
      
      private var §'!$§:Boolean;
      
      private var §#!B§:§?!5§;
      
      private var §41§:Boolean;
      
      public function §2! §(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§>Z§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§3P§ = param1;
         if(!param3)
         {
            this.§1c§ = !!§3! §.§0!%§ ? §"`§.NONE : §"`§.§ !=§;
         }
         else
         {
            this.§1c§ = !!§3! §.§0!%§ ? §"`§.§ !=§ : §"`§.§&!"§;
            this.§41§ = true;
         }
         this.§[q§ = param2;
         this.§'!$§ = this.§[q§;
         this.§#!B§ = new §?!5§(4,_loc7_);
         this.§ A§(true);
      }
      
      public static function §4?§(param1:Context3D, param2:Bitmap) : §2! §
      {
         return new §2! §(Texture.§4?§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§41§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §#f§.setTexCoords(0,0,0);
         §#f§.setTexCoords(1,1,0);
         §#f§.setTexCoords(2,0,1);
         §#f§.setTexCoords(3,1,1);
      }
      
      private function § A§(param1:Boolean = false) : void
      {
         §#f§.copyTo(this.§#!B§,0,1,this.§[q§ || param1,null);
         this.§3P§.adjustVertexData(this.§#!B§,0,4);
      }
      
      public function §<Y§() : void
      {
         var _loc1_:Rectangle = this.texture.§>Z§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §#f§.setPosition(0,0,0);
         §#f§.setPosition(1,_loc2_,0);
         §#f§.setPosition(2,0,_loc3_);
         §#f§.setPosition(3,_loc2_,_loc3_);
         this.§ A§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §#f§.setTexCoords(param1,param2.x,param2.y);
         this.§ A§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §#f§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!5§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#!B§.copyTo(param1,param2,param3,this.§[q§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§3P§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§3P§)
         {
            this.§3P§ = param1;
            §#f§.setPremultipliedAlpha(this.§3P§.premultipliedAlpha);
            this.§ A§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§1c§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§"`§.isValid(param1))
         {
            this.§1c§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§ A§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§ A§();
      }
      
      override public function render(param1:§?!§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§3P§,this.§1c§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§[q§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§[q§ = this.§'!$§;
         }
         else
         {
            this.§[q§ = true;
         }
         super.color = param1;
         this.§ A§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§3P§.clippedBitmapData;
      }
   }
}
