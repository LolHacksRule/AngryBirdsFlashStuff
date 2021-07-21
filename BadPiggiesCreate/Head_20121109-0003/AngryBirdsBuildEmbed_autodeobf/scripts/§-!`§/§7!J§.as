package §-!`§
{
   import §0!-§.§89§;
   import §0!-§.Texture;
   import §6x§.§9!§;
   import §@!X§.§"W§;
   import §@!X§.§7j§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §7!J§ extends §8!p§
   {
       
      
      private var §8w§:Texture;
      
      private var §6!J§:String;
      
      private var §%Z§:Boolean;
      
      private var §]6§:Boolean;
      
      private var §]!c§:§9!§;
      
      private var §0_§:Boolean;
      
      public function §7!J§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§8w§ = param1;
         if(!param3)
         {
            this.§6!J§ = !!§7j§.§?!X§ ? §89§.NONE : §89§.§8!;§;
         }
         else
         {
            this.§6!J§ = !!§7j§.§?!X§ ? §89§.§8!;§ : §89§.§7K§;
            this.§0_§ = true;
         }
         this.§%Z§ = param2;
         this.§]6§ = this.§%Z§;
         this.§]!c§ = new §9!§(4,_loc7_);
         this.§5q§(true);
      }
      
      public static function §&B§(param1:Context3D, param2:Bitmap) : §7!J§
      {
         return new §7!J§(Texture.§&B§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§0_§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §8<§.setTexCoords(0,0,0);
         §8<§.setTexCoords(1,1,0);
         §8<§.setTexCoords(2,0,1);
         §8<§.setTexCoords(3,1,1);
      }
      
      private function §5q§(param1:Boolean = false) : void
      {
         §8<§.copyTo(this.§]!c§,0,1,this.§%Z§ || param1,null);
         this.§8w§.adjustVertexData(this.§]!c§,0,4);
      }
      
      public function §4!H§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §8<§.setPosition(0,0,0);
         §8<§.setPosition(1,_loc2_,0);
         §8<§.setPosition(2,0,_loc3_);
         §8<§.setPosition(3,_loc2_,_loc3_);
         this.§5q§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §8<§.setTexCoords(param1,param2.x,param2.y);
         this.§5q§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §8<§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§9!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§]!c§.copyTo(param1,param2,param3,this.§%Z§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§8w§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§8w§)
         {
            this.§8w§ = param1;
            §8<§.setPremultipliedAlpha(this.§8w§.premultipliedAlpha);
            this.§5q§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§6!J§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§89§.isValid(param1))
         {
            this.§6!J§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§5q§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§5q§();
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§8w§,this.§6!J§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§%Z§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§%Z§ = this.§]6§;
         }
         else
         {
            this.§%Z§ = true;
         }
         super.color = param1;
         this.§5q§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§8w§.clippedBitmapData;
      }
   }
}
