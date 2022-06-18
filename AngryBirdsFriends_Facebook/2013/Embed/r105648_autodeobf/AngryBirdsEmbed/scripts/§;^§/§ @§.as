package §;^§
{
   import §"X§.§&!3§;
   import §"X§.Texture;
   import §??§.§!0§;
   import §??§.§5!@§;
   import §`8§.§^d§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class § @§ extends §+a§
   {
       
      
      private var §`!G§:Texture;
      
      private var §<6§:String;
      
      private var §catch§:Boolean;
      
      private var §>! §:Boolean;
      
      private var §+6§:§^d§;
      
      private var §2!2§:Boolean;
      
      public function § @§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§;!&§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§`!G§ = param1;
         if(!param3)
         {
            this.§<6§ = !!§5!@§.§`v§ ? §&!3§.NONE : §&!3§.§?!9§;
         }
         else
         {
            this.§<6§ = !!§5!@§.§`v§ ? §&!3§.§?!9§ : §&!3§.§;L§;
            this.§2!2§ = true;
         }
         this.§catch§ = param2;
         this.§>! § = this.§catch§;
         this.§+6§ = new §^d§(4,_loc7_);
         this.§"!;§(true);
      }
      
      public static function §-!4§(param1:Context3D, param2:Bitmap) : § @§
      {
         return new § @§(Texture.§-!4§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§2!2§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §@V§.setTexCoords(0,0,0);
         §@V§.setTexCoords(1,1,0);
         §@V§.setTexCoords(2,0,1);
         §@V§.setTexCoords(3,1,1);
      }
      
      private function §"!;§(param1:Boolean = false) : void
      {
         §@V§.copyTo(this.§+6§,0,1,this.§catch§ || param1,null);
         this.§`!G§.adjustVertexData(this.§+6§,0,4);
      }
      
      public function § !D§() : void
      {
         var _loc1_:Rectangle = this.texture.§;!&§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §@V§.setPosition(0,0,0);
         §@V§.setPosition(1,_loc2_,0);
         §@V§.setPosition(2,0,_loc3_);
         §@V§.setPosition(3,_loc2_,_loc3_);
         this.§"!;§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §@V§.setTexCoords(param1,param2.x,param2.y);
         this.§"!;§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §@V§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§^d§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§+6§.copyTo(param1,param2,param3,this.§catch§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§`!G§;
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
         if(param1 != this.§`!G§)
         {
            this.§`!G§ = param1;
            _loc2_ = this.texture.§;!&§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§`!G§.premultipliedAlpha);
            this.§"!;§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§<6§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§&!3§.isValid(param1))
         {
            this.§<6§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§"!;§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§"!;§();
      }
      
      override public function render(param1:§!0§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§`!G§,this.§<6§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§catch§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§catch§ = this.§>! §;
         }
         else
         {
            this.§catch§ = true;
         }
         super.color = param1;
         this.§"!;§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§catch§ = this.§>! §;
         }
         else
         {
            this.§catch§ = true;
         }
         this.§"!;§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§`!G§.clippedBitmapData;
      }
   }
}
