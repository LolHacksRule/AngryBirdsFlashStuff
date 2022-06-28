package §6!7§
{
   import §0P§.RenderSupport;
   import §0P§.Starling;
   import §7i§.§=!C§;
   import §7i§.Texture;
   import §8g§.VertexData;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-m§ extends §3x§
   {
       
      
      private var §5@§:Texture;
      
      private var §@!U§:String;
      
      private var §<!K§:Boolean;
      
      private var §0!5§:Boolean;
      
      private var §[!V§:VertexData;
      
      private var §`>§:Boolean;
      
      public function §-m§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle = param1.frame;
         var _loc5_:Number = Boolean(_loc4_) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = Boolean(_loc4_) ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§5@§ = param1;
         if(!param3)
         {
            this.§@!U§ = !!Starling.isSoftware ? §=!C§.NONE : §=!C§.§1l§;
         }
         else
         {
            this.§@!U§ = !!Starling.isSoftware ? §=!C§.§1l§ : §=!C§.§!!N§;
            this.§`>§ = true;
         }
         this.§<!K§ = param2;
         this.§0!5§ = this.§<!K§;
         this.§[!V§ = new VertexData(4,_loc7_);
         this.§3e§(true);
      }
      
      public static function §8;§(param1:Context3D, param2:Bitmap) : §-m§
      {
         return new §-m§(Texture.§8;§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§`>§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §;H§.setTexCoords(0,0,0);
         §;H§.setTexCoords(1,1,0);
         §;H§.setTexCoords(2,0,1);
         §;H§.setTexCoords(3,1,1);
      }
      
      private function §3e§(param1:Boolean = false) : void
      {
         §;H§.copyTo(this.§[!V§,0,1,this.§<!K§ || param1,null);
         this.§5@§.adjustVertexData(this.§[!V§,0,4);
      }
      
      public function §4o§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = Boolean(_loc1_) ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = Boolean(_loc1_) ? Number(_loc1_.height) : Number(this.texture.height);
         §;H§.setPosition(0,0,0);
         §;H§.setPosition(1,_loc2_,0);
         §;H§.setPosition(2,0,_loc3_);
         §;H§.setPosition(3,_loc2_,_loc3_);
         this.§3e§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §;H§.setTexCoords(param1,param2.x,param2.y);
         this.§3e§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §;H§.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§[!V§.copyTo(param1,param2,param3,this.§<!K§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§5@§;
      }
      
      public function set texture(param1:Texture) : void
      {
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§5@§)
         {
            this.§5@§ = param1;
            §;H§.setPremultipliedAlpha(this.§5@§.premultipliedAlpha);
            this.§3e§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§@!U§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§=!C§.§,;§(param1))
         {
            this.§@!U§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§3e§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§3e§();
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§5@§,this.§@!U§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§<!K§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§<!K§ = this.§0!5§;
         }
         else
         {
            this.§<!K§ = true;
         }
         super.color = param1;
         this.§3e§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§5@§.clippedBitmapData;
      }
   }
}
