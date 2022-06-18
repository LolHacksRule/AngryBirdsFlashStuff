package §]!6§
{
   import §8!#§.§-!§;
   import §8!#§.§<n§;
   import §8j§.§=§;
   import §>u§.§?!8§;
   import §>u§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §>T§ extends §8D§
   {
       
      
      private var §,=§:Texture;
      
      private var §^A§:String;
      
      private var §<!#§:Boolean;
      
      private var §3l§:Boolean;
      
      private var §@K§:§=§;
      
      private var §9P§:Boolean;
      
      public function §>T§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§#3§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§,=§ = param1;
         if(!param3)
         {
            this.§^A§ = !!§<n§.§;!?§ ? §?!8§.NONE : §?!8§.§7o§;
         }
         else
         {
            this.§^A§ = !!§<n§.§;!?§ ? §?!8§.§7o§ : §?!8§.§&<§;
            this.§9P§ = true;
         }
         this.§<!#§ = param2;
         this.§3l§ = this.§<!#§;
         this.§@K§ = new §=§(4,_loc7_);
         this.§8Z§(true);
      }
      
      public static function §`P§(param1:Context3D, param2:Bitmap) : §>T§
      {
         return new §>T§(Texture.§`P§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§9P§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §'U§.setTexCoords(0,0,0);
         §'U§.setTexCoords(1,1,0);
         §'U§.setTexCoords(2,0,1);
         §'U§.setTexCoords(3,1,1);
      }
      
      private function §8Z§(param1:Boolean = false) : void
      {
         §'U§.copyTo(this.§@K§,0,1,this.§<!#§ || param1,null);
         this.§,=§.adjustVertexData(this.§@K§,0,4);
      }
      
      public function §`o§() : void
      {
         var _loc1_:Rectangle = this.texture.§#3§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §'U§.setPosition(0,0,0);
         §'U§.setPosition(1,_loc2_,0);
         §'U§.setPosition(2,0,_loc3_);
         §'U§.setPosition(3,_loc2_,_loc3_);
         this.§8Z§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §'U§.setTexCoords(param1,param2.x,param2.y);
         this.§8Z§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §'U§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§=§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§@K§.copyTo(param1,param2,param3,this.§<!#§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§,=§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§,=§)
         {
            this.§,=§ = param1;
            §'U§.setPremultipliedAlpha(this.§,=§.premultipliedAlpha);
            this.§8Z§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§^A§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§?!8§.isValid(param1))
         {
            this.§^A§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§8Z§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§8Z§();
      }
      
      override public function render(param1:§-!§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§,=§,this.§^A§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<!#§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§<!#§ = this.§3l§;
         }
         else
         {
            this.§<!#§ = true;
         }
         super.color = param1;
         this.§8Z§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,=§.clippedBitmapData;
      }
   }
}
