package §0@§
{
   import §&!9§.§,l§;
   import §&!9§.Texture;
   import §'!>§.§3K§;
   import §each §.§ if§;
   import §each §.§'!3§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §1]§ extends §"%§
   {
       
      
      private var §#d§:Texture;
      
      private var §,r§:String;
      
      private var §&4§:Boolean;
      
      private var §-"§:Boolean;
      
      private var §2"§:§3K§;
      
      private var §?p§:Boolean;
      
      public function §1]§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§,a§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§#d§ = param1;
         if(!param3)
         {
            this.§,r§ = !!§'!3§.§#T§ ? §,l§.NONE : §,l§.§"!O§;
         }
         else
         {
            this.§,r§ = !!§'!3§.§#T§ ? §,l§.§"!O§ : §,l§.§-!_§;
            this.§?p§ = true;
         }
         this.§&4§ = param2;
         this.§-"§ = this.§&4§;
         this.§2"§ = new §3K§(4,_loc7_);
         this.§8v§(true);
      }
      
      public static function §5^§(param1:Context3D, param2:Bitmap) : §1]§
      {
         return new §1]§(Texture.§5^§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§?p§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §!e§.setTexCoords(0,0,0);
         §!e§.setTexCoords(1,1,0);
         §!e§.setTexCoords(2,0,1);
         §!e§.setTexCoords(3,1,1);
      }
      
      private function §8v§(param1:Boolean = false) : void
      {
         §!e§.copyTo(this.§2"§,0,1,this.§&4§ || param1,null);
         this.§#d§.adjustVertexData(this.§2"§,0,4);
      }
      
      public function §1!P§() : void
      {
         var _loc1_:Rectangle = this.texture.§,a§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §!e§.setPosition(0,0,0);
         §!e§.setPosition(1,_loc2_,0);
         §!e§.setPosition(2,0,_loc3_);
         §!e§.setPosition(3,_loc2_,_loc3_);
         this.§8v§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §!e§.setTexCoords(param1,param2.x,param2.y);
         this.§8v§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §!e§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3K§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§2"§.copyTo(param1,param2,param3,this.§&4§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§#d§;
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
         if(param1 != this.§#d§)
         {
            this.§#d§ = param1;
            _loc2_ = this.texture.§,a§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§#d§.premultipliedAlpha);
            this.§8v§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§,r§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§,l§.§#+§(param1))
         {
            this.§,r§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§8v§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§8v§();
      }
      
      override public function render(param1:§ if§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§#d§,this.§,r§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§&4§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§&4§ = this.§-"§;
         }
         else
         {
            this.§&4§ = true;
         }
         super.color = param1;
         this.§8v§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§#d§.clippedBitmapData;
      }
   }
}
