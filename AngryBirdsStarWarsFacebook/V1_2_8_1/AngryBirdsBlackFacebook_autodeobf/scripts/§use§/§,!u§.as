package §use§
{
   import § "-§.§"!_§;
   import § "-§.§6!R§;
   import §&"s§.§?g§;
   import §&"s§.Texture;
   import §7"G§.§%!§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §,!u§ extends §-"z§
   {
       
      
      private var §'"C§:Texture;
      
      private var §9w§:String;
      
      private var §^B§:Boolean;
      
      private var §,M§:Boolean;
      
      private var § #3§:§%!§;
      
      private var §"%§:Boolean;
      
      public function §,!u§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§'"C§ = param1;
         if(!param3)
         {
            this.§9w§ = !!§6!R§.§%!f§ ? §?g§.NONE : §?g§.§["§;
         }
         else
         {
            this.§9w§ = !!§6!R§.§%!f§ ? §?g§.§["§ : §?g§.§-!V§;
            this.§"%§ = true;
         }
         this.§^B§ = param2;
         this.§,M§ = this.§^B§;
         this.§ #3§ = new §%!§(4,_loc7_);
         this.§?!h§(true);
      }
      
      public static function §43§(param1:Context3D, param2:Bitmap) : §,!u§
      {
         return new §,!u§(Texture.§43§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§"%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §!k§.setTexCoords(0,0,0);
         §!k§.setTexCoords(1,1,0);
         §!k§.setTexCoords(2,0,1);
         §!k§.setTexCoords(3,1,1);
      }
      
      private function §?!h§(param1:Boolean = false) : void
      {
         §!k§.copyTo(this.§ #3§,0,1,this.§^B§ || param1,null);
         this.§'"C§.adjustVertexData(this.§ #3§,0,4);
      }
      
      public function §4"]§(param1:Vector.<Point>) : void
      {
         §!k§.setPosition(0,param1[0].x,param1[0].y);
         §!k§.setPosition(1,param1[1].x,param1[1].y);
         §!k§.setPosition(2,param1[2].x,param1[2].y);
         §!k§.setPosition(3,param1[3].x,param1[3].y);
         this.§?!h§();
      }
      
      public function §&!a§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §!k§.setPosition(0,0,0);
         §!k§.setPosition(1,_loc2_,0);
         §!k§.setPosition(2,0,_loc3_);
         §!k§.setPosition(3,_loc2_,_loc3_);
         this.§?!h§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §!k§.setTexCoords(param1,param2.x,param2.y);
         this.§?!h§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §!k§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§%!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§ #3§.copyTo(param1,param2,param3,this.§^B§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§'"C§;
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
         if(param1 != this.§'"C§)
         {
            this.§'"C§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§'"C§.premultipliedAlpha);
            this.§?!h§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§9w§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§?g§.§`!5§(param1))
         {
            this.§9w§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§?!h§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§?!h§();
      }
      
      override public function render(param1:§"!_§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§'"C§,this.§9w§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§^B§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215 && alpha == 1)
         {
            this.§^B§ = this.§,M§;
         }
         else
         {
            this.§^B§ = true;
         }
         super.color = param1;
         this.§?!h§();
      }
      
      override public function set alpha(param1:Number) : void
      {
         super.alpha = param1;
         if((color & 16777215) == 16777215 && alpha == 1)
         {
            this.§^B§ = this.§,M§;
         }
         else
         {
            this.§^B§ = true;
         }
         this.§?!h§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§'"C§.clippedBitmapData;
      }
   }
}
