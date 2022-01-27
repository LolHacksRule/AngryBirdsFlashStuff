package §86§
{
   import §7G§.§2r§;
   import §@g§.§'U§;
   import §@g§.§4!@§;
   import §[!A§.§0]§;
   import §[!A§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?5§ extends §=u§
   {
       
      
      private var §+r§:Texture;
      
      private var §&!1§:String;
      
      private var §9P§:Boolean;
      
      private var §1?§:Boolean;
      
      private var §]g§:§2r§;
      
      private var §8!'§:Boolean;
      
      public function §?5§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§"`§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§+r§ = param1;
         if(!param3)
         {
            this.§&!1§ = !!§4!@§.§@m§ ? §0]§.NONE : §0]§.§-$§;
         }
         else
         {
            this.§&!1§ = !!§4!@§.§@m§ ? §0]§.§-$§ : §0]§.§`>§;
            this.§8!'§ = true;
         }
         this.§9P§ = param2;
         this.§1?§ = this.§9P§;
         this.§]g§ = new §2r§(4,_loc7_);
         this.§+9§(true);
      }
      
      public static function §#K§(param1:Context3D, param2:Bitmap) : §?5§
      {
         return new §?5§(Texture.§#K§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§8!'§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §!]§.setTexCoords(0,0,0);
         §!]§.setTexCoords(1,1,0);
         §!]§.setTexCoords(2,0,1);
         §!]§.setTexCoords(3,1,1);
      }
      
      private function §+9§(param1:Boolean = false) : void
      {
         §!]§.copyTo(this.§]g§,0,1,this.§9P§ || param1,null);
         this.§+r§.adjustVertexData(this.§]g§,0,4);
      }
      
      public function §"E§() : void
      {
         var _loc1_:Rectangle = this.texture.§"`§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §!]§.setPosition(0,0,0);
         §!]§.setPosition(1,_loc2_,0);
         §!]§.setPosition(2,0,_loc3_);
         §!]§.setPosition(3,_loc2_,_loc3_);
         this.§+9§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §!]§.setTexCoords(param1,param2.x,param2.y);
         this.§+9§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §!]§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§2r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§]g§.copyTo(param1,param2,param3,this.§9P§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§+r§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§+r§)
         {
            this.§+r§ = param1;
            §!]§.setPremultipliedAlpha(this.§+r§.premultipliedAlpha);
            this.§+9§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§&!1§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§0]§.§;u§(param1))
         {
            this.§&!1§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§+9§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§+9§();
      }
      
      override public function render(param1:§'U§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§+r§,this.§&!1§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§9P§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§9P§ = this.§1?§;
         }
         else
         {
            this.§9P§ = true;
         }
         super.color = param1;
         this.§+9§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§+r§.clippedBitmapData;
      }
   }
}
