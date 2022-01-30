package § !=§
{
   import § !a§.§>a§;
   import § !a§.Texture;
   import §=D§.§3a§;
   import §`V§.§;6§;
   import §`V§.§^M§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §0F§ extends §break§
   {
       
      
      private var §-e§:Texture;
      
      private var §6V§:String;
      
      private var §%X§:Boolean;
      
      private var §;F§:Boolean;
      
      private var §<!x§:§3a§;
      
      private var §-k§:Boolean;
      
      public function §0F§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§@!G§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§-e§ = param1;
         if(!param3)
         {
            this.§6V§ = !!§;6§.§?!C§ ? §>a§.NONE : §>a§.§4!k§;
         }
         else
         {
            this.§6V§ = !!§;6§.§?!C§ ? §>a§.§4!k§ : §>a§.§-!"§;
            this.§-k§ = true;
         }
         this.§%X§ = param2;
         this.§;F§ = this.§%X§;
         this.§<!x§ = new §3a§(4,_loc7_);
         this.§>C§(true);
      }
      
      public static function §`z§(param1:Context3D, param2:Bitmap) : §0F§
      {
         return new §0F§(Texture.§`z§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§-k§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §[h§.setTexCoords(0,0,0);
         §[h§.setTexCoords(1,1,0);
         §[h§.setTexCoords(2,0,1);
         §[h§.setTexCoords(3,1,1);
      }
      
      private function §>C§(param1:Boolean = false) : void
      {
         §[h§.copyTo(this.§<!x§,0,1,this.§%X§ || param1,null);
         this.§-e§.adjustVertexData(this.§<!x§,0,4);
      }
      
      public function §5!n§(param1:Vector.<Point>) : void
      {
         §[h§.setPosition(0,param1[0].x,param1[0].y);
         §[h§.setPosition(1,param1[1].x,param1[1].y);
         §[h§.setPosition(2,param1[2].x,param1[2].y);
         §[h§.setPosition(3,param1[3].x,param1[3].y);
         this.§>C§();
      }
      
      public function §3!z§() : void
      {
         var _loc1_:Rectangle = this.texture.§@!G§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §[h§.setPosition(0,0,0);
         §[h§.setPosition(1,_loc2_,0);
         §[h§.setPosition(2,0,_loc3_);
         §[h§.setPosition(3,_loc2_,_loc3_);
         this.§>C§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §[h§.setTexCoords(param1,param2.x,param2.y);
         this.§>C§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §[h§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§3a§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§<!x§.copyTo(param1,param2,param3,this.§%X§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§-e§;
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
         if(param1 != this.§-e§)
         {
            this.§-e§ = param1;
            _loc2_ = this.texture.§@!G§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§-e§.premultipliedAlpha);
            this.§>C§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§6V§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§>a§.§=!6§(param1))
         {
            this.§6V§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§>C§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§>C§();
      }
      
      override public function render(param1:§^M§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§-e§,this.§6V§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§%X§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§%X§ = this.§;F§;
         }
         else
         {
            this.§%X§ = true;
         }
         super.color = param1;
         this.§>C§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§%X§ = this.§;F§;
         }
         else
         {
            this.§%X§ = true;
         }
         this.§>C§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§-e§.clippedBitmapData;
      }
   }
}
