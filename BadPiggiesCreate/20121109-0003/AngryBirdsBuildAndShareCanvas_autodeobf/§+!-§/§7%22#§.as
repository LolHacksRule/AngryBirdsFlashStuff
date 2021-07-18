package §+!-§
{
   import §%!j§.§%K§;
   import §%!j§.§&Y§;
   import §0!%§.§%§;
   import §0!%§.Texture;
   import §`!=§.§?!X§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7"#§ extends §4!O§
   {
       
      
      private var §=#§:Texture;
      
      private var §8!A§:String;
      
      private var §>!l§:Boolean;
      
      private var §^2§:Boolean;
      
      private var §+!@§:§?!X§;
      
      private var §`!g§:Boolean;
      
      public function §7"#§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§=#§ = param1;
         if(!param3)
         {
            this.§8!A§ = !!§%K§.§%!R§ ? §%§.NONE : §%§.§<!U§;
         }
         else
         {
            this.§8!A§ = !!§%K§.§%!R§ ? §%§.§<!U§ : §%§.§]h§;
            this.§`!g§ = true;
         }
         this.§>!l§ = param2;
         this.§^2§ = this.§>!l§;
         this.§+!@§ = new §?!X§(4,_loc7_);
         this.§-!N§(true);
      }
      
      public static function §+o§(param1:Context3D, param2:Bitmap) : §7"#§
      {
         return new §7"#§(Texture.§+o§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`!g§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §2!b§.setTexCoords(0,0,0);
         §2!b§.setTexCoords(1,1,0);
         §2!b§.setTexCoords(2,0,1);
         §2!b§.setTexCoords(3,1,1);
      }
      
      private function §-!N§(param1:Boolean = false) : void
      {
         §2!b§.copyTo(this.§+!@§,0,1,this.§>!l§ || param1,null);
         this.§=#§.adjustVertexData(this.§+!@§,0,4);
      }
      
      public function §%B§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §2!b§.setPosition(0,0,0);
         §2!b§.setPosition(1,_loc2_,0);
         §2!b§.setPosition(2,0,_loc3_);
         §2!b§.setPosition(3,_loc2_,_loc3_);
         this.§-!N§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §2!b§.setTexCoords(param1,param2.x,param2.y);
         this.§-!N§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §2!b§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!X§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§+!@§.copyTo(param1,param2,param3,this.§>!l§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§=#§;
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
         if(param1 != this.§=#§)
         {
            this.§=#§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§=#§.premultipliedAlpha);
            this.§-!N§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§8!A§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§%§.§,!#§(param1))
         {
            this.§8!A§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§-!N§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§-!N§();
      }
      
      override public function render(param1:§&Y§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§=#§,this.§8!A§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§>!l§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§>!l§ = this.§^2§;
         }
         else
         {
            this.§>!l§ = true;
         }
         super.color = param1;
         this.§-!N§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§=#§.clippedBitmapData;
      }
   }
}
