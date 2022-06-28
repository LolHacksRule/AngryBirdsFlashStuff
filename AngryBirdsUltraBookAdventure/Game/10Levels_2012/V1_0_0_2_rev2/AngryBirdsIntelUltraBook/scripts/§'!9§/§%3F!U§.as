package §'!9§
{
   import §<&§.§^b§;
   import §<&§.§`K§;
   import §^!+§.Texture;
   import §^!+§.§]-§;
   import §`s§.§0p§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §?!U§ extends §%!g§
   {
       
      
      private var §[!5§:Texture;
      
      private var §#! §:String;
      
      private var §5_§:Boolean;
      
      private var §3i§:Boolean;
      
      private var §<o§:§0p§;
      
      private var §^!%§:Boolean;
      
      public function §?!U§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§[!5§ = param1;
         if(!param3)
         {
            this.§#! § = !!§^b§.§7h§ ? §]-§.NONE : §]-§.§![§;
         }
         else
         {
            this.§#! § = !!§^b§.§7h§ ? §]-§.§![§ : §]-§.§<! §;
            this.§^!%§ = true;
         }
         this.§5_§ = param2;
         this.§3i§ = this.§5_§;
         this.§<o§ = new §0p§(4,_loc7_);
         this.§^t§(true);
      }
      
      public static function §@#§(param1:Context3D, param2:Bitmap) : §?!U§
      {
         return new §?!U§(Texture.§@#§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§^!%§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         § Q§.setTexCoords(0,0,0);
         § Q§.setTexCoords(1,1,0);
         § Q§.setTexCoords(2,0,1);
         § Q§.setTexCoords(3,1,1);
      }
      
      private function §^t§(param1:Boolean = false) : void
      {
         § Q§.copyTo(this.§<o§,0,1,this.§5_§ || param1,null);
         this.§[!5§.adjustVertexData(this.§<o§,0,4);
      }
      
      public function §`!h§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         § Q§.setPosition(0,0,0);
         § Q§.setPosition(1,_loc2_,0);
         § Q§.setPosition(2,0,_loc3_);
         § Q§.setPosition(3,_loc2_,_loc3_);
         this.§^t§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         § Q§.setTexCoords(param1,param2.x,param2.y);
         this.§^t§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         § Q§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§0p§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§<o§.copyTo(param1,param2,param3,this.§5_§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§[!5§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§[!5§)
         {
            this.§[!5§ = param1;
            § Q§.setPremultipliedAlpha(this.§[!5§.premultipliedAlpha);
            this.§^t§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§#! §;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§]-§.§!q§(param1))
         {
            this.§#! § = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§^t§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§^t§();
      }
      
      override public function render(param1:§`K§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§[!5§,this.§#! §);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§5_§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§5_§ = this.§3i§;
         }
         else
         {
            this.§5_§ = true;
         }
         super.color = param1;
         this.§^t§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§[!5§.clippedBitmapData;
      }
   }
}
