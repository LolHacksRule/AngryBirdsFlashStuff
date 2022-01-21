package §2![§
{
   import § !^§.§6m§;
   import § !^§.Texture;
   import §6!J§.§%!k§;
   import §=!K§.§>[§;
   import §=!K§.§do§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §[!U§ extends §7Q§
   {
       
      
      private var §`L§:Texture;
      
      private var §9!&§:String;
      
      private var §`K§:Boolean;
      
      private var §`!5§:Boolean;
      
      private var §47§:§%!k§;
      
      private var §4!g§:Boolean;
      
      public function §[!U§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§]3§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§`L§ = param1;
         if(!param3)
         {
            this.§9!&§ = !!§do§.§@$§ ? §6m§.NONE : §6m§.§0s§;
         }
         else
         {
            this.§9!&§ = !!§do§.§@$§ ? §6m§.§0s§ : §6m§.§=!U§;
            this.§4!g§ = true;
         }
         this.§`K§ = param2;
         this.§`!5§ = this.§`K§;
         this.§47§ = new §%!k§(4,_loc7_);
         this.§2u§(true);
      }
      
      public static function §`!3§(param1:Context3D, param2:Bitmap) : §[!U§
      {
         return new §[!U§(Texture.§`!3§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§4!g§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §^`§.setTexCoords(0,0,0);
         §^`§.setTexCoords(1,1,0);
         §^`§.setTexCoords(2,0,1);
         §^`§.setTexCoords(3,1,1);
      }
      
      private function §2u§(param1:Boolean = false) : void
      {
         §^`§.copyTo(this.§47§,0,1,this.§`K§ || param1,null);
         this.§`L§.adjustVertexData(this.§47§,0,4);
      }
      
      public function §3!#§() : void
      {
         var _loc1_:Rectangle = this.texture.§]3§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §^`§.setPosition(0,0,0);
         §^`§.setPosition(1,_loc2_,0);
         §^`§.setPosition(2,0,_loc3_);
         §^`§.setPosition(3,_loc2_,_loc3_);
         this.§2u§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §^`§.setTexCoords(param1,param2.x,param2.y);
         this.§2u§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §^`§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§%!k§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§47§.copyTo(param1,param2,param3,this.§`K§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§`L§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§`L§)
         {
            this.§`L§ = param1;
            §^`§.setPremultipliedAlpha(this.§`L§.premultipliedAlpha);
            this.§2u§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§9!&§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§6m§.§9_§(param1))
         {
            this.§9!&§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§2u§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§2u§();
      }
      
      override public function render(param1:§>[§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§`L§,this.§9!&§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§`K§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§`K§ = this.§`!5§;
         }
         else
         {
            this.§`K§ = true;
         }
         super.color = param1;
         this.§2u§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§`L§.clippedBitmapData;
      }
   }
}
