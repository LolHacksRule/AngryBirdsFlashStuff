package §null §
{
   import §-A§.Texture;
   import §-A§.§]!5§;
   import §;!,§.§20§;
   import §]_§.§!F§;
   import §]_§.§7o§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §%!G§ extends §>U§
   {
       
      
      private var §9q§:Texture;
      
      private var §,!Y§:String;
      
      private var §@!8§:Boolean;
      
      private var §"!;§:Boolean;
      
      private var §5!,§:§20§;
      
      private var §`Y§:Boolean;
      
      public function §%!G§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§,!A§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§9q§ = param1;
         if(!param3)
         {
            this.§,!Y§ = !!§!F§.§3h§ ? §]!5§.NONE : §]!5§.§'!E§;
         }
         else
         {
            this.§,!Y§ = !!§!F§.§3h§ ? §]!5§.§'!E§ : §]!5§.§+-§;
            this.§`Y§ = true;
         }
         this.§@!8§ = param2;
         this.§"!;§ = this.§@!8§;
         this.§5!,§ = new §20§(4,_loc7_);
         this.§3!E§(true);
      }
      
      public static function §>!>§(param1:Context3D, param2:Bitmap) : §%!G§
      {
         return new §%!G§(Texture.§>!>§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`Y§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §!H§.setTexCoords(0,0,0);
         §!H§.setTexCoords(1,1,0);
         §!H§.setTexCoords(2,0,1);
         §!H§.setTexCoords(3,1,1);
      }
      
      private function §3!E§(param1:Boolean = false) : void
      {
         §!H§.copyTo(this.§5!,§,0,1,this.§@!8§ || param1,null);
         this.§9q§.adjustVertexData(this.§5!,§,0,4);
      }
      
      public function §#l§() : void
      {
         var _loc1_:Rectangle = this.texture.§,!A§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §!H§.setPosition(0,0,0);
         §!H§.setPosition(1,_loc2_,0);
         §!H§.setPosition(2,0,_loc3_);
         §!H§.setPosition(3,_loc2_,_loc3_);
         this.§3!E§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §!H§.setTexCoords(param1,param2.x,param2.y);
         this.§3!E§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §!H§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§20§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§5!,§.copyTo(param1,param2,param3,this.§@!8§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§9q§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§9q§)
         {
            this.§9q§ = param1;
            §!H§.setPremultipliedAlpha(this.§9q§.premultipliedAlpha);
            this.§3!E§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§,!Y§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§]!5§.§-!X§(param1))
         {
            this.§,!Y§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§3!E§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§3!E§();
      }
      
      override public function render(param1:§7o§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§9q§,this.§,!Y§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§@!8§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§@!8§ = this.§"!;§;
         }
         else
         {
            this.§@!8§ = true;
         }
         super.color = param1;
         this.§3!E§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§9q§.clippedBitmapData;
      }
   }
}
