package §-!f§
{
   import §6!4§.§8P§;
   import §6!4§.§<!D§;
   import §7"+§.§<!r§;
   import §7"+§.Texture;
   import §<C§.§=>§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-!,§ extends §7!6§
   {
       
      
      private var §4r§:Texture;
      
      private var §>"2§:String;
      
      private var §<"4§:Boolean;
      
      private var §5!g§:Boolean;
      
      private var §1$§:§=>§;
      
      private var §7U§:Boolean;
      
      public function §-!,§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§<M§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§4r§ = param1;
         if(!param3)
         {
            this.§>"2§ = !!§<!D§.§,"§ ? §<!r§.NONE : §<!r§.§4t§;
         }
         else
         {
            this.§>"2§ = !!§<!D§.§,"§ ? §<!r§.§4t§ : §<!r§.§6x§;
            this.§7U§ = true;
         }
         this.§<"4§ = param2;
         this.§5!g§ = this.§<"4§;
         this.§1$§ = new §=>§(4,_loc7_);
         this.§];§(true);
      }
      
      public static function §"h§(param1:Context3D, param2:Bitmap) : §-!,§
      {
         return new §-!,§(Texture.§"h§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§7U§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §3=§.setTexCoords(0,0,0);
         §3=§.setTexCoords(1,1,0);
         §3=§.setTexCoords(2,0,1);
         §3=§.setTexCoords(3,1,1);
      }
      
      private function §];§(param1:Boolean = false) : void
      {
         §3=§.copyTo(this.§1$§,0,1,this.§<"4§ || param1,null);
         this.§4r§.adjustVertexData(this.§1$§,0,4);
      }
      
      public function §@!p§() : void
      {
         var _loc1_:Rectangle = this.texture.§<M§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §3=§.setPosition(0,0,0);
         §3=§.setPosition(1,_loc2_,0);
         §3=§.setPosition(2,0,_loc3_);
         §3=§.setPosition(3,_loc2_,_loc3_);
         this.§];§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §3=§.setTexCoords(param1,param2.x,param2.y);
         this.§];§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §3=§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§=>§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§1$§.copyTo(param1,param2,param3,this.§<"4§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§4r§;
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
         if(param1 != this.§4r§)
         {
            this.§4r§ = param1;
            _loc2_ = this.texture.§<M§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§4r§.premultipliedAlpha);
            this.§];§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§>"2§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§<!r§.§var §(param1))
         {
            this.§>"2§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§];§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§];§();
      }
      
      override public function render(param1:§8P§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§4r§,this.§>"2§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<"4§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§<"4§ = this.§5!g§;
         }
         else
         {
            this.§<"4§ = true;
         }
         super.color = param1;
         this.§];§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§<"4§ = this.§5!g§;
         }
         else
         {
            this.§<"4§ = true;
         }
         this.§];§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§4r§.clippedBitmapData;
      }
   }
}
