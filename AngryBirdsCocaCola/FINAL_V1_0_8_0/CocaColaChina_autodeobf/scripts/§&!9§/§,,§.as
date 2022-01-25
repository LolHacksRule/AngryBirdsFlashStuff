package §&!9§
{
   import §+&§.§;J§;
   import §+&§.§?y§;
   import §6!4§.§<7§;
   import §6!4§.Texture;
   import §@!a§.§try§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,,§ extends §7!D§
   {
       
      
      private var §38§:Texture;
      
      private var §6Z§:String;
      
      private var §72§:Boolean;
      
      private var §?!a§:Boolean;
      
      private var §>!W§:§try§;
      
      private var §`+§:Boolean;
      
      public function §,,§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§=E§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§38§ = param1;
         if(!param3)
         {
            this.§6Z§ = !!§?y§.§+r§ ? §<7§.NONE : §<7§.§8$§;
         }
         else
         {
            this.§6Z§ = !!§?y§.§+r§ ? §<7§.§8$§ : §<7§.§!!I§;
            this.§`+§ = true;
         }
         this.§72§ = param2;
         this.§?!a§ = this.§72§;
         this.§>!W§ = new §try§(4,_loc7_);
         this.§^!'§(true);
      }
      
      public static function §+!E§(param1:Context3D, param2:Bitmap) : §,,§
      {
         return new §,,§(Texture.§+!E§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`+§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §<G§.setTexCoords(0,0,0);
         §<G§.setTexCoords(1,1,0);
         §<G§.setTexCoords(2,0,1);
         §<G§.setTexCoords(3,1,1);
      }
      
      private function §^!'§(param1:Boolean = false) : void
      {
         §<G§.copyTo(this.§>!W§,0,1,this.§72§ || param1,null);
         this.§38§.adjustVertexData(this.§>!W§,0,4);
      }
      
      public function §0n§() : void
      {
         var _loc1_:Rectangle = this.texture.§=E§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §<G§.setPosition(0,0,0);
         §<G§.setPosition(1,_loc2_,0);
         §<G§.setPosition(2,0,_loc3_);
         §<G§.setPosition(3,_loc2_,_loc3_);
         this.§^!'§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §<G§.setTexCoords(param1,param2.x,param2.y);
         this.§^!'§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §<G§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§try§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§>!W§.copyTo(param1,param2,param3,this.§72§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§38§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§38§)
         {
            this.§38§ = param1;
            §<G§.setPremultipliedAlpha(this.§38§.premultipliedAlpha);
            this.§^!'§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§6Z§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§<7§.§!i§(param1))
         {
            this.§6Z§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§^!'§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§^!'§();
      }
      
      override public function render(param1:§;J§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§38§,this.§6Z§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§72§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§72§ = this.§?!a§;
         }
         else
         {
            this.§72§ = true;
         }
         super.color = param1;
         this.§^!'§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§38§.clippedBitmapData;
      }
   }
}
