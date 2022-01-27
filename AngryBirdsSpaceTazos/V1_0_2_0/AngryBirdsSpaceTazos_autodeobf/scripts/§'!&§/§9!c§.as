package §'!&§
{
   import §!!a§.§-!F§;
   import §3!4§.§ ![§;
   import §3!4§.§3=§;
   import §3"$§.§>!H§;
   import §3"$§.Texture;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §9!c§ extends § "E§
   {
       
      
      private var §2o§:Texture;
      
      private var §#!A§:String;
      
      private var §7"1§:Boolean;
      
      private var §6!^§:Boolean;
      
      private var §<!_§:§-!F§;
      
      private var §[Z§:Boolean;
      
      public function §9!c§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§<!>§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§2o§ = param1;
         if(!param3)
         {
            this.§#!A§ = !!§ ![§.§>n§ ? §>!H§.NONE : §>!H§.§?"B§;
         }
         else
         {
            this.§#!A§ = !!§ ![§.§>n§ ? §>!H§.§?"B§ : §>!H§.§8d§;
            this.§[Z§ = true;
         }
         this.§7"1§ = param2;
         this.§6!^§ = this.§7"1§;
         this.§<!_§ = new §-!F§(4,_loc7_);
         this.§<k§(true);
      }
      
      public static function §5!%§(param1:Context3D, param2:Bitmap) : §9!c§
      {
         return new §9!c§(Texture.§5!%§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§[Z§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §3!w§.setTexCoords(0,0,0);
         §3!w§.setTexCoords(1,1,0);
         §3!w§.setTexCoords(2,0,1);
         §3!w§.setTexCoords(3,1,1);
      }
      
      private function §<k§(param1:Boolean = false) : void
      {
         §3!w§.copyTo(this.§<!_§,0,1,this.§7"1§ || param1,null);
         this.§2o§.adjustVertexData(this.§<!_§,0,4);
      }
      
      public function §5!!§() : void
      {
         var _loc1_:Rectangle = this.texture.§<!>§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §3!w§.setPosition(0,0,0);
         §3!w§.setPosition(1,_loc2_,0);
         §3!w§.setPosition(2,0,_loc3_);
         §3!w§.setPosition(3,_loc2_,_loc3_);
         this.§<k§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §3!w§.setTexCoords(param1,param2.x,param2.y);
         this.§<k§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §3!w§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§-!F§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§<!_§.copyTo(param1,param2,param3,this.§7"1§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§2o§;
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
         if(param1 != this.§2o§)
         {
            this.§2o§ = param1;
            _loc2_ = this.texture.§<!>§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§2o§.premultipliedAlpha);
            this.§<k§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§#!A§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§>!H§.§'"F§(param1))
         {
            this.§#!A§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§<k§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§<k§();
      }
      
      override public function render(param1:§3=§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§2o§,this.§#!A§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§7"1§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§7"1§ = this.§6!^§;
         }
         else
         {
            this.§7"1§ = true;
         }
         super.color = param1;
         this.§<k§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§7"1§ = this.§6!^§;
         }
         else
         {
            this.§7"1§ = true;
         }
         this.§<k§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§2o§.clippedBitmapData;
      }
   }
}
