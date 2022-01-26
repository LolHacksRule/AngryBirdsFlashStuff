package §`a§
{
   import § !+§.§%L§;
   import § !+§.§0Z§;
   import §2!-§.Texture;
   import §2!-§.§]!=§;
   import §<!M§.§;Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>?§ extends §?!N§
   {
       
      
      private var §[!H§:Texture;
      
      private var §?[§:String;
      
      private var §3L§:Boolean;
      
      private var §1>§:Boolean;
      
      private var §2K§:§;Z§;
      
      private var §0!Q§:Boolean;
      
      public function §>?§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§&V§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§[!H§ = param1;
         if(!param3)
         {
            this.§?[§ = !!§0Z§.§=2§ ? §]!=§.NONE : §]!=§.§8]§;
         }
         else
         {
            this.§?[§ = !!§0Z§.§=2§ ? §]!=§.§8]§ : §]!=§.§=_§;
            this.§0!Q§ = true;
         }
         this.§3L§ = param2;
         this.§1>§ = this.§3L§;
         this.§2K§ = new §;Z§(4,_loc7_);
         this.§]0§(true);
      }
      
      public static function §#v§(param1:Context3D, param2:Bitmap) : §>?§
      {
         return new §>?§(Texture.§#v§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§0!Q§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §"T§.setTexCoords(0,0,0);
         §"T§.setTexCoords(1,1,0);
         §"T§.setTexCoords(2,0,1);
         §"T§.setTexCoords(3,1,1);
      }
      
      private function §]0§(param1:Boolean = false) : void
      {
         §"T§.copyTo(this.§2K§,0,1,this.§3L§ || param1,null);
         this.§[!H§.adjustVertexData(this.§2K§,0,4);
      }
      
      public function §"!1§() : void
      {
         var _loc1_:Rectangle = this.texture.§&V§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §"T§.setPosition(0,0,0);
         §"T§.setPosition(1,_loc2_,0);
         §"T§.setPosition(2,0,_loc3_);
         §"T§.setPosition(3,_loc2_,_loc3_);
         this.§]0§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §"T§.setTexCoords(param1,param2.x,param2.y);
         this.§]0§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §"T§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;Z§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2K§.copyTo(param1,param2,param3,this.§3L§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§[!H§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§[!H§)
         {
            this.§[!H§ = param1;
            §"T§.setPremultipliedAlpha(this.§[!H§.premultipliedAlpha);
            this.§]0§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§?[§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§]!=§.§2!6§(param1))
         {
            this.§?[§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§]0§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§]0§();
      }
      
      override public function render(param1:§%L§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§[!H§,this.§?[§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§3L§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§3L§ = this.§1>§;
         }
         else
         {
            this.§3L§ = true;
         }
         super.color = param1;
         this.§]0§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[!H§.clippedBitmapData;
      }
   }
}
