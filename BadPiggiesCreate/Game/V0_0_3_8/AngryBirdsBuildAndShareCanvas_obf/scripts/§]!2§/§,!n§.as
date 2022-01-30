package §]!2§
{
   import §0!F§.§3`§;
   import §0!F§.§^d§;
   import §3!U§.§0F§;
   import §3!U§.Texture;
   import §9!a§.§!$§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!n§ extends §?"2§
   {
       
      
      private var §=#§:Texture;
      
      private var §9"3§:String;
      
      private var §&"5§:Boolean;
      
      private var §?R§:Boolean;
      
      private var §3u§:§!$§;
      
      private var §!"#§:Boolean;
      
      public function §,!n§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§=#§ = param1;
         if(!param3)
         {
            this.§9"3§ = !!§^d§.§4!8§ ? §0F§.NONE : §0F§.§%!M§;
         }
         else
         {
            this.§9"3§ = !!§^d§.§4!8§ ? §0F§.§%!M§ : §0F§.§<p§;
            this.§!"#§ = true;
         }
         this.§&"5§ = param2;
         this.§?R§ = this.§&"5§;
         this.§3u§ = new §!$§(4,_loc7_);
         this.§1!P§(true);
      }
      
      public static function §+g§(param1:Context3D, param2:Bitmap) : §,!n§
      {
         return new §,!n§(Texture.§+g§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§!"#§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §&f§.setTexCoords(0,0,0);
         §&f§.setTexCoords(1,1,0);
         §&f§.setTexCoords(2,0,1);
         §&f§.setTexCoords(3,1,1);
      }
      
      private function §1!P§(param1:Boolean = false) : void
      {
         §&f§.copyTo(this.§3u§,0,1,this.§&"5§ || param1,null);
         this.§=#§.adjustVertexData(this.§3u§,0,4);
      }
      
      public function §!"$§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §&f§.setPosition(0,0,0);
         §&f§.setPosition(1,_loc2_,0);
         §&f§.setPosition(2,0,_loc3_);
         §&f§.setPosition(3,_loc2_,_loc3_);
         this.§1!P§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §&f§.setTexCoords(param1,param2.x,param2.y);
         this.§1!P§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §&f§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§!$§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§3u§.copyTo(param1,param2,param3,this.§&"5§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§=#§)
         {
            this.§=#§ = param1;
            §&f§.setPremultipliedAlpha(this.§=#§.premultipliedAlpha);
            this.§1!P§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§9"3§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§0F§.§3j§(param1))
         {
            this.§9"3§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§1!P§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§1!P§();
      }
      
      override public function render(param1:§3`§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§=#§,this.§9"3§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§&"5§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§&"5§ = this.§?R§;
         }
         else
         {
            this.§&"5§ = true;
         }
         super.color = param1;
         this.§1!P§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§=#§.clippedBitmapData;
      }
   }
}
