package §7u§
{
   import §#!`§.§@!&§;
   import §#!`§.Texture;
   import §'!S§.§,!%§;
   import §'!S§.§5[§;
   import §@u§.§@!1§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §&!C§ extends §&x§
   {
       
      
      private var § 4§:Texture;
      
      private var §>2§:String;
      
      private var §+O§:Boolean;
      
      private var § !a§:Boolean;
      
      private var §4!^§:§@!1§;
      
      private var §[!E§:Boolean;
      
      public function §&!C§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§-_§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§ 4§ = param1;
         if(!param3)
         {
            this.§>2§ = !!§,!%§.§96§ ? §@!&§.NONE : §@!&§.§]!6§;
         }
         else
         {
            this.§>2§ = !!§,!%§.§96§ ? §@!&§.§]!6§ : §@!&§.§[e§;
            this.§[!E§ = true;
         }
         this.§+O§ = param2;
         this.§ !a§ = this.§+O§;
         this.§4!^§ = new §@!1§(4,_loc7_);
         this.§4!S§(true);
      }
      
      public static function §#!%§(param1:Context3D, param2:Bitmap) : §&!C§
      {
         return new §&!C§(Texture.§#!%§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[!E§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §7P§.setTexCoords(0,0,0);
         §7P§.setTexCoords(1,1,0);
         §7P§.setTexCoords(2,0,1);
         §7P§.setTexCoords(3,1,1);
      }
      
      private function §4!S§(param1:Boolean = false) : void
      {
         §7P§.copyTo(this.§4!^§,0,1,this.§+O§ || param1,null);
         this.§ 4§.adjustVertexData(this.§4!^§,0,4);
      }
      
      public function §%Z§() : void
      {
         var _loc1_:Rectangle = this.texture.§-_§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §7P§.setPosition(0,0,0);
         §7P§.setPosition(1,_loc2_,0);
         §7P§.setPosition(2,0,_loc3_);
         §7P§.setPosition(3,_loc2_,_loc3_);
         this.§4!S§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §7P§.setTexCoords(param1,param2.x,param2.y);
         this.§4!S§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §7P§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§@!1§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§4!^§.copyTo(param1,param2,param3,this.§+O§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§ 4§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§ 4§)
         {
            this.§ 4§ = param1;
            §7P§.setPremultipliedAlpha(this.§ 4§.premultipliedAlpha);
            this.§4!S§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§>2§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§@!&§.§;d§(param1))
         {
            this.§>2§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§4!S§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§4!S§();
      }
      
      override public function render(param1:§5[§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§ 4§,this.§>2§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§+O§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§+O§ = this.§ !a§;
         }
         else
         {
            this.§+O§ = true;
         }
         super.color = param1;
         this.§4!S§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§ 4§.clippedBitmapData;
      }
   }
}
