package §,_§
{
   import §,G§.§ u§;
   import §7!=§.§<V§;
   import §7!=§.Texture;
   import §catch§.§'d§;
   import §catch§.§4@§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4K§ extends §-!!§
   {
       
      
      private var §[#§:Texture;
      
      private var §%b§:String;
      
      private var §;6§:Boolean;
      
      private var §<!6§:Boolean;
      
      private var §>!4§:§ u§;
      
      private var §8J§:Boolean;
      
      public function §4K§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§4B§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§[#§ = param1;
         if(!param3)
         {
            this.§%b§ = !!§4@§.§?!A§ ? §<V§.NONE : §<V§.§4s§;
         }
         else
         {
            this.§%b§ = !!§4@§.§?!A§ ? §<V§.§4s§ : §<V§.§2'§;
            this.§8J§ = true;
         }
         this.§;6§ = param2;
         this.§<!6§ = this.§;6§;
         this.§>!4§ = new § u§(4,_loc7_);
         this.§@g§(true);
      }
      
      public static function §,c§(param1:Context3D, param2:Bitmap) : §4K§
      {
         return new §4K§(Texture.§,c§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§8J§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         § !!§.setTexCoords(0,0,0);
         § !!§.setTexCoords(1,1,0);
         § !!§.setTexCoords(2,0,1);
         § !!§.setTexCoords(3,1,1);
      }
      
      private function §@g§(param1:Boolean = false) : void
      {
         § !!§.copyTo(this.§>!4§,0,1,this.§;6§ || param1,null);
         this.§[#§.adjustVertexData(this.§>!4§,0,4);
      }
      
      public function §6]§() : void
      {
         var _loc1_:Rectangle = this.texture.§4B§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         § !!§.setPosition(0,0,0);
         § !!§.setPosition(1,_loc2_,0);
         § !!§.setPosition(2,0,_loc3_);
         § !!§.setPosition(3,_loc2_,_loc3_);
         this.§@g§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         § !!§.setTexCoords(param1,param2.x,param2.y);
         this.§@g§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         § !!§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§ u§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§>!4§.copyTo(param1,param2,param3,this.§;6§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§[#§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§[#§)
         {
            this.§[#§ = param1;
            § !!§.setPremultipliedAlpha(this.§[#§.premultipliedAlpha);
            this.§@g§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§%b§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§<V§.isValid(param1))
         {
            this.§%b§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§@g§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§@g§();
      }
      
      override public function render(param1:§'d§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§[#§,this.§%b§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§;6§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§;6§ = this.§<!6§;
         }
         else
         {
            this.§;6§ = true;
         }
         super.color = param1;
         this.§@g§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[#§.clippedBitmapData;
      }
   }
}
