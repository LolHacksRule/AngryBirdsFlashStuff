package §]@§
{
   import §;! §.§?!T§;
   import §]!B§.§1!;§;
   import §]!B§.Texture;
   import §`C§.§'!N§;
   import §`C§.§9!'§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §`!C§ extends §9!<§
   {
       
      
      private var §if§:Texture;
      
      private var §0!V§:String;
      
      private var §2!2§:Boolean;
      
      private var §'!;§:Boolean;
      
      private var §`8§:§?!T§;
      
      private var §!#§:Boolean;
      
      public function §`!C§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.§@+§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§if§ = param1;
         if(!param3)
         {
            this.§0!V§ = !!§9!'§.§'!$§ ? §1!;§.NONE : §1!;§.§&@§;
         }
         else
         {
            this.§0!V§ = !!§9!'§.§'!$§ ? §1!;§.§&@§ : §1!;§.§>!7§;
            this.§!#§ = true;
         }
         this.§2!2§ = param2;
         this.§'!;§ = this.§2!2§;
         this.§`8§ = new §?!T§(4,_loc7_);
         this.§9l§(true);
      }
      
      public static function §0Z§(param1:Context3D, param2:Bitmap) : §`!C§
      {
         return new §`!C§(Texture.§0Z§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§!#§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §6!3§.setTexCoords(0,0,0);
         §6!3§.setTexCoords(1,1,0);
         §6!3§.setTexCoords(2,0,1);
         §6!3§.setTexCoords(3,1,1);
      }
      
      private function §9l§(param1:Boolean = false) : void
      {
         §6!3§.copyTo(this.§`8§,0,1,this.§2!2§ || param1,null);
         this.§if§.adjustVertexData(this.§`8§,0,4);
      }
      
      public function §3!N§() : void
      {
         var _loc1_:Rectangle = this.texture.§@+§;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §6!3§.setPosition(0,0,0);
         §6!3§.setPosition(1,_loc2_,0);
         §6!3§.setPosition(2,0,_loc3_);
         §6!3§.setPosition(3,_loc2_,_loc3_);
         this.§9l§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §6!3§.setTexCoords(param1,param2.x,param2.y);
         this.§9l§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §6!3§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§?!T§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§`8§.copyTo(param1,param2,param3,this.§2!2§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§if§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§if§)
         {
            this.§if§ = param1;
            §6!3§.setPremultipliedAlpha(this.§if§.premultipliedAlpha);
            this.§9l§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§0!V§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§1!;§.§51§(param1))
         {
            this.§0!V§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§9l§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§9l§();
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§if§,this.§0!V§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§2!2§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§2!2§ = this.§'!;§;
         }
         else
         {
            this.§2!2§ = true;
         }
         super.color = param1;
         this.§9l§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§if§.clippedBitmapData;
      }
   }
}
