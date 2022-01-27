package §-!'§
{
   import §'!3§.§&!H§;
   import §'!3§.§@`§;
   import §,]§.§#!K§;
   import §,]§.Texture;
   import §5D§.§3L§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §3!1§ extends § s§
   {
       
      
      private var §7R§:Texture;
      
      private var §5!,§:String;
      
      private var §?A§:Boolean;
      
      private var § !7§:Boolean;
      
      private var §1!5§:§3L§;
      
      private var §"2§:Boolean;
      
      public function §3!1§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§;!B§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§7R§ = param1;
         if(!param3)
         {
            this.§5!,§ = !!§&!H§.§+_§ ? §#!K§.NONE : §#!K§.§>!J§;
         }
         else
         {
            this.§5!,§ = !!§&!H§.§+_§ ? §#!K§.§>!J§ : §#!K§.§6"§;
            this.§"2§ = true;
         }
         this.§?A§ = param2;
         this.§ !7§ = this.§?A§;
         this.§1!5§ = new §3L§(4,_loc7_);
         this.§%O§(true);
      }
      
      public static function §]!B§(param1:Context3D, param2:Bitmap) : §3!1§
      {
         return new §3!1§(Texture.§]!B§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§"2§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §3!7§.setTexCoords(0,0,0);
         §3!7§.setTexCoords(1,1,0);
         §3!7§.setTexCoords(2,0,1);
         §3!7§.setTexCoords(3,1,1);
      }
      
      private function §%O§(param1:Boolean = false) : void
      {
         §3!7§.copyTo(this.§1!5§,0,1,this.§?A§ || param1,null);
         this.§7R§.adjustVertexData(this.§1!5§,0,4);
      }
      
      public function §?!N§() : void
      {
         var _loc1_:Rectangle = this.texture.§;!B§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §3!7§.setPosition(0,0,0);
         §3!7§.setPosition(1,_loc2_,0);
         §3!7§.setPosition(2,0,_loc3_);
         §3!7§.setPosition(3,_loc2_,_loc3_);
         this.§%O§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §3!7§.setTexCoords(param1,param2.x,param2.y);
         this.§%O§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §3!7§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3L§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§1!5§.copyTo(param1,param2,param3,this.§?A§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§7R§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§7R§)
         {
            this.§7R§ = param1;
            §3!7§.setPremultipliedAlpha(this.§7R§.premultipliedAlpha);
            this.§%O§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§5!,§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§#!K§.§4!7§(param1))
         {
            this.§5!,§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§%O§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§%O§();
      }
      
      override public function render(param1:§@`§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§7R§,this.§5!,§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§?A§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§?A§ = this.§ !7§;
         }
         else
         {
            this.§?A§ = true;
         }
         super.color = param1;
         this.§%O§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§7R§.clippedBitmapData;
      }
   }
}
