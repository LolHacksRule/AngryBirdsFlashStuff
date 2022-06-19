package §]&§
{
   import §+"6§.§2!6§;
   import §+"6§.§5!H§;
   import §<L§.§=v§;
   import §<L§.Texture;
   import §>!+§.§2!%§;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §-§ extends §[T§
   {
       
      
      private var §,x§:Texture;
      
      private var §6!p§:String;
      
      private var §=Q§:Boolean;
      
      private var §+t§:Boolean;
      
      private var §^!C§:§2!%§;
      
      private var §3!]§:Boolean;
      
      public function §-§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         var _loc7_:Boolean = param1.premultipliedAlpha;
         super(_loc5_,_loc6_,16777215,_loc7_);
         this.§,x§ = param1;
         if(!param3)
         {
            this.§6!p§ = !!§5!H§.§#!l§ ? §=v§.NONE : §=v§.§0!R§;
         }
         else
         {
            this.§6!p§ = !!§5!H§.§#!l§ ? §=v§.§0!R§ : §=v§.§+$§;
            this.§3!]§ = true;
         }
         this.§=Q§ = param2;
         this.§+t§ = this.§=Q§;
         this.§^!C§ = new §2!%§(4,_loc7_);
         this.§93§(true);
      }
      
      public static function §=$§(param1:Context3D, param2:Bitmap) : §-§
      {
         return new §-§(Texture.§=$§(param1,param2));
      }
      
      override public function get highQuality() : Boolean
      {
         return this.§3!]§;
      }
      
      override protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         super.updateVertexData(param1,param2,param3,param4);
         §6" §.setTexCoords(0,0,0);
         §6" §.setTexCoords(1,1,0);
         §6" §.setTexCoords(2,0,1);
         §6" §.setTexCoords(3,1,1);
      }
      
      private function §93§(param1:Boolean = false) : void
      {
         §6" §.copyTo(this.§^!C§,0,1,this.§=Q§ || param1,null);
         this.§,x§.adjustVertexData(this.§^!C§,0,4);
      }
      
      public function §?"3§() : void
      {
         var _loc1_:Rectangle = this.texture.frame;
         var _loc2_:Number = !!_loc1_ ? Number(_loc1_.width) : Number(this.texture.width);
         var _loc3_:Number = !!_loc1_ ? Number(_loc1_.height) : Number(this.texture.height);
         §6" §.setPosition(0,0,0);
         §6" §.setPosition(1,_loc2_,0);
         §6" §.setPosition(2,0,_loc3_);
         §6" §.setPosition(3,_loc2_,_loc3_);
         this.§93§();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §6" §.setTexCoords(param1,param2.x,param2.y);
         this.§93§();
      }
      
      public function getTexCoords(param1:int) : Point
      {
         var _loc2_:Point = new Point();
         §6" §.getTexCoords(param1,_loc2_);
         return _loc2_;
      }
      
      override public function copyVertexDataTo(param1:§2!%§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§^!C§.copyTo(param1,param2,param3,this.§=Q§,param4);
      }
      
      public function get texture() : Texture
      {
         return this.§,x§;
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
         if(param1 != this.§,x§)
         {
            this.§,x§ = param1;
            _loc2_ = this.texture.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(this.texture.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(this.texture.height);
            this.updateVertexData(_loc3_,_loc4_,color,this.§,x§.premultipliedAlpha);
            this.§93§();
         }
      }
      
      public function get smoothing() : String
      {
         return this.§6!p§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§=v§.§^"8§(param1))
         {
            this.§6!p§ = param1;
            return;
         }
         throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
      }
      
      override public function setVertexColor(param1:int, param2:uint) : void
      {
         super.setVertexColor(param1,param2);
         this.§93§();
      }
      
      override public function setVertexAlpha(param1:int, param2:Number) : void
      {
         super.setVertexAlpha(param1,param2);
         this.§93§();
      }
      
      override public function render(param1:§2!6§, param2:Number) : void
      {
         param1.batchQuad(this,param2,this.§,x§,this.§6!p§);
      }
      
      override public function get useColor() : Boolean
      {
         return this.§=Q§;
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§=Q§ = this.§+t§;
         }
         else
         {
            this.§=Q§ = true;
         }
         super.color = param1;
         this.§93§();
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         return this.§,x§.clippedBitmapData;
      }
   }
}
