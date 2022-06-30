package §2Y§
{
   import §"^§.§'X§;
   import §"^§.§+!'§;
   import §=9§.§?!2§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!f§ extends §7?§
   {
       
      
      private var §-y§:Texture;
      
      private var §7n§:String;
      
      private var §]1§:Boolean;
      
      private var §-^§:Boolean;
      
      private var §3s§:§?!2§;
      
      private var §[!+§:Boolean;
      
      public function §7!f§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§8^§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§-y§ = param1;
         if(!param3)
         {
            this.§7n§ = !!§+!'§.§"!#§ ? §#!P§.NONE : §#!P§.§?!T§;
         }
         else
         {
            this.§7n§ = !!§+!'§.§"!#§ ? §#!P§.§?!T§ : §#!P§.§,!3§;
            this.§[!+§ = true;
         }
         this.§]1§ = param2;
         this.§-^§ = this.§]1§;
         this.§3s§ = new §?!2§(4,_loc7_);
         this.§%$§(true);
      }
      
      public static function §"r§(param1:Context3D, param2:Bitmap) : §7!f§
      {
         return new §7!f§(Texture.§"r§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[!+§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §-!^§.setTexCoords(0,0,0);
         §-!^§.setTexCoords(1,1,0);
         §-!^§.setTexCoords(2,0,1);
         §-!^§.setTexCoords(3,1,1);
      }
      
      private function §%$§(param1:Boolean = false) : void
      {
         §-!^§.copyTo(this.§3s§,0,1,this.§]1§ || param1,null);
         this.§-y§.adjustVertexData(this.§3s§,0,4);
      }
      
      public function §,!_§() : void
      {
         var _loc1_:Rectangle = this.texture.§8^§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §-!^§.setPosition(0,0,0);
         §-!^§.setPosition(1,_loc2_,0);
         §-!^§.setPosition(2,0,_loc3_);
         §-!^§.setPosition(3,_loc2_,_loc3_);
         this.§%$§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §-!^§.setTexCoords(param1,param2.x,param2.y);
         this.§%$§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §-!^§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§3s§.copyTo(param1,param2,param3,this.§]1§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§-y§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§-y§)
         {
            this.§-y§ = param1;
            _loc2_ = this.texture.§8^§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§-y§.premultipliedAlpha);
            this.§%$§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§7n§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§#!P§.§<w§(param1))
         {
            this.§7n§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§%$§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§%$§();
      }
      
      override public function render(param1:§'X§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§-y§,this.§7n§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§]1§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§]1§ = this.§-^§;
         }
         else
         {
            this.§]1§ = true;
         }
         super.color = param1;
         this.§%$§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§-y§.clippedBitmapData;
      }
   }
}
