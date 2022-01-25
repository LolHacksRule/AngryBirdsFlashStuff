package §<!$§
{
   import §%Q§.§`j§;
   import §9]§.§0`§;
   import §9]§.§9J§;
   import §@'§.§2!Y§;
   import §@'§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!5§ extends §6f§
   {
       
      
      private var §3!+§:Texture;
      
      private var §"!U§:String;
      
      private var §<P§:Boolean;
      
      private var §?8§:Boolean;
      
      private var §]!Z§:§`j§;
      
      private var §6Y§:Boolean;
      
      public function §[!5§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§?C§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§3!+§ = param1;
         if(!param3)
         {
            this.§"!U§ = !!§9J§.§=n§ ? §2!Y§.NONE : §2!Y§.§3!N§;
         }
         else
         {
            this.§"!U§ = !!§9J§.§=n§ ? §2!Y§.§3!N§ : §2!Y§.§7!O§;
            this.§6Y§ = true;
         }
         this.§<P§ = param2;
         this.§?8§ = this.§<P§;
         this.§]!Z§ = new §`j§(4,_loc7_);
         this.§]B§(true);
      }
      
      public static function §"z§(param1:Context3D, param2:Bitmap) : §[!5§
      {
         return new §[!5§(Texture.§"z§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§6Y§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         § g§.setTexCoords(0,0,0);
         § g§.setTexCoords(1,1,0);
         § g§.setTexCoords(2,0,1);
         § g§.setTexCoords(3,1,1);
      }
      
      private function §]B§(param1:Boolean = false) : void
      {
         § g§.copyTo(this.§]!Z§,0,1,this.§<P§ || param1,null);
         this.§3!+§.adjustVertexData(this.§]!Z§,0,4);
      }
      
      public function §]m§() : void
      {
         var _loc1_:Rectangle = this.texture.§?C§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         § g§.setPosition(0,0,0);
         § g§.setPosition(1,_loc2_,0);
         § g§.setPosition(2,0,_loc3_);
         § g§.setPosition(3,_loc2_,_loc3_);
         this.§]B§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         § g§.setTexCoords(param1,param2.x,param2.y);
         this.§]B§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         § g§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§`j§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§]!Z§.copyTo(param1,param2,param3,this.§<P§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§3!+§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§3!+§)
         {
            this.§3!+§ = param1;
            § g§.setPremultipliedAlpha(this.§3!+§.premultipliedAlpha);
            this.§]B§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§"!U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§2!Y§.§^S§(param1))
         {
            this.§"!U§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§]B§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§]B§();
      }
      
      override public function render(param1:§0`§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§3!+§,this.§"!U§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<P§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§<P§ = this.§?8§;
         }
         else
         {
            this.§<P§ = true;
         }
         super.color = param1;
         this.§]B§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§3!+§.clippedBitmapData;
      }
   }
}
