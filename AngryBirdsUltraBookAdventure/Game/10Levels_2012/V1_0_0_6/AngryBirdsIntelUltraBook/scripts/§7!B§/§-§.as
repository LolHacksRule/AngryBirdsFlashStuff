package §7!B§
{
   import §!!K§.§?%§;
   import §!!K§.§else§;
   import §4>§.§#i§;
   import §4>§.Texture;
   import §9!k§.§=A§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-§ extends §;R§
   {
       
      
      private var §5!6§:Texture;
      
      private var §each §:String;
      
      private var §#!%§:Boolean;
      
      private var §>!C§:Boolean;
      
      private var §[r§:§=A§;
      
      private var §=§:Boolean;
      
      public function §-§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§5!6§ = param1;
         if(!param3)
         {
            this.§each § = !!§else§.§@g§ ? §#i§.NONE : §#i§.§@R§;
         }
         else
         {
            this.§each § = !!§else§.§@g§ ? §#i§.§@R§ : §#i§.§!!7§;
            this.§=§ = true;
         }
         this.§#!%§ = param2;
         this.§>!C§ = this.§#!%§;
         this.§[r§ = new §=A§(4,_loc7_);
         this.§-'§(true);
      }
      
      public static function § l§(param1:Context3D, param2:Bitmap) : §-§
      {
         return new §-§(Texture.§ l§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§=§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         § !3§.setTexCoords(0,0,0);
         § !3§.setTexCoords(1,1,0);
         § !3§.setTexCoords(2,0,1);
         § !3§.setTexCoords(3,1,1);
      }
      
      private function §-'§(param1:Boolean = false) : void
      {
         § !3§.copyTo(this.§[r§,0,1,this.§#!%§ || param1,null);
         this.§5!6§.adjustVertexData(this.§[r§,0,4);
      }
      
      public function §9!"§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         § !3§.setPosition(0,0,0);
         § !3§.setPosition(1,_loc2_,0);
         § !3§.setPosition(2,0,_loc3_);
         § !3§.setPosition(3,_loc2_,_loc3_);
         this.§-'§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         § !3§.setTexCoords(param1,param2.x,param2.y);
         this.§-'§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         § !3§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§=A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[r§.copyTo(param1,param2,param3,this.§#!%§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§5!6§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§5!6§)
         {
            this.§5!6§ = param1;
            § !3§.setPremultipliedAlpha(this.§5!6§.premultipliedAlpha);
            this.§-'§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§each §;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§#i§.§42§(param1))
         {
            this.§each § = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§-'§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§-'§();
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§5!6§,this.§each §);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§#!%§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§#!%§ = this.§>!C§;
         }
         else
         {
            this.§#!%§ = true;
         }
         super.color = param1;
         this.§-'§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§5!6§.clippedBitmapData;
      }
   }
}
