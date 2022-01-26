package §!!R§
{
   import §2k§.§=0§;
   import §2k§.Texture;
   import §7W§.§ !+§;
   import §7W§.§4!8§;
   import §<!M§.§;Z§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §#q§ extends §^!4§
   {
       
      
      private var §>c§:Texture;
      
      private var §>?§:String;
      
      private var §7P§:Boolean;
      
      private var §?[§:Boolean;
      
      private var §1>§:§;Z§;
      
      private var §2K§:Boolean;
      
      public function §#q§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§9i§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§>c§ = param1;
         if(!param3)
         {
            this.§>?§ = !!§ !+§.§?t§ ? §=0§.NONE : §=0§.§]!=§;
         }
         else
         {
            this.§>?§ = !!§ !+§.§?t§ ? §=0§.§]!=§ : §=0§.§8]§;
            this.§2K§ = true;
         }
         this.§7P§ = param2;
         this.§?[§ = this.§7P§;
         this.§1>§ = new §;Z§(4,_loc7_);
         this.§0!Q§(true);
      }
      
      public static function §"!1§(param1:Context3D, param2:Bitmap) : §#q§
      {
         return new §#q§(Texture.§"!1§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§2K§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §6h§.setTexCoords(0,0,0);
         §6h§.setTexCoords(1,1,0);
         §6h§.setTexCoords(2,0,1);
         §6h§.setTexCoords(3,1,1);
      }
      
      private function §0!Q§(param1:Boolean = false) : void
      {
         §6h§.copyTo(this.§1>§,0,1,this.§7P§ || param1,null);
         this.§>c§.adjustVertexData(this.§1>§,0,4);
      }
      
      public function §]0§() : void
      {
         var _loc1_:Rectangle = this.texture.§9i§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §6h§.setPosition(0,0,0);
         §6h§.setPosition(1,_loc2_,0);
         §6h§.setPosition(2,0,_loc3_);
         §6h§.setPosition(3,_loc2_,_loc3_);
         this.§0!Q§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §6h§.setTexCoords(param1,param2.x,param2.y);
         this.§0!Q§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §6h§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§;Z§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§1>§.copyTo(param1,param2,param3,this.§7P§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§>c§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§>c§)
         {
            this.§>c§ = param1;
            §6h§.setPremultipliedAlpha(this.§>c§.premultipliedAlpha);
            this.§0!Q§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§>?§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§=0§.§=_§(param1))
         {
            this.§>?§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§0!Q§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§0!Q§();
      }
      
      override public function render(param1:§4!8§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§>c§,this.§>?§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§7P§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§7P§ = this.§?[§;
         }
         else
         {
            this.§7P§ = true;
         }
         super.color = param1;
         this.§0!Q§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§>c§.clippedBitmapData;
      }
   }
}
