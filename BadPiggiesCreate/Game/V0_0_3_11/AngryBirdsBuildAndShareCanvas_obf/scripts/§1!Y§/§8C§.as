package §1!Y§
{
   import §0P§.§!!l§;
   import §0P§.§1!O§;
   import §=v§.§+r§;
   import §^i§.§7n§;
   import §^i§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §8C§ extends §5!W§
   {
       
      
      private var §2S§:Texture;
      
      private var §3Q§:String;
      
      private var §!!^§:Boolean;
      
      private var §2!2§:Boolean;
      
      private var § !§:§+r§;
      
      private var §79§:Boolean;
      
      public function §8C§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§2S§ = param1;
         if(!param3)
         {
            this.§3Q§ = !!§!!l§.§`!8§ ? §7n§.NONE : §7n§.§default§;
         }
         else
         {
            this.§3Q§ = !!§!!l§.§`!8§ ? §7n§.§default§ : §7n§.§@1§;
            this.§79§ = true;
         }
         this.§!!^§ = param2;
         this.§2!2§ = this.§!!^§;
         this.§ !§ = new §+r§(4,_loc7_);
         this.§5!"§(true);
      }
      
      public static function §9!m§(param1:Context3D, param2:Bitmap) : §8C§
      {
         return new §8C§(Texture.§9!m§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§79§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §#!I§.setTexCoords(0,0,0);
         §#!I§.setTexCoords(1,1,0);
         §#!I§.setTexCoords(2,0,1);
         §#!I§.setTexCoords(3,1,1);
      }
      
      private function §5!"§(param1:Boolean = false) : void
      {
         §#!I§.copyTo(this.§ !§,0,1,this.§!!^§ || param1,null);
         this.§2S§.adjustVertexData(this.§ !§,0,4);
      }
      
      public function §83§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §#!I§.setPosition(0,0,0);
         §#!I§.setPosition(1,_loc2_,0);
         §#!I§.setPosition(2,0,_loc3_);
         §#!I§.setPosition(3,_loc2_,_loc3_);
         this.§5!"§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §#!I§.setTexCoords(param1,param2.x,param2.y);
         this.§5!"§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §#!I§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§+r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ !§.copyTo(param1,param2,param3,this.§!!^§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§2S§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§2S§)
         {
            this.§2S§ = param1;
            §#!I§.setPremultipliedAlpha(this.§2S§.premultipliedAlpha);
            this.§5!"§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§3Q§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§7n§.§>g§(param1))
         {
            this.§3Q§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§5!"§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§5!"§();
      }
      
      override public function render(param1:§1!O§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§2S§,this.§3Q§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§!!^§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§!!^§ = this.§2!2§;
         }
         else
         {
            this.§!!^§ = true;
         }
         super.color = param1;
         this.§5!"§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§2S§.clippedBitmapData;
      }
   }
}
