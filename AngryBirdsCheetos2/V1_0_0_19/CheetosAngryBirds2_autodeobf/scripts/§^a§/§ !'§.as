package §^a§
{
   import §4v§.§40§;
   import §4v§.transformCoords;
   import §6;§.§2^§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class § !'§ extends DisplayObject
   {
      
      private static var §0D§:Vector3D = new Vector3D();
      
      private static var §[<§:Point = new Point();
      
      private static var §&!T§:Matrix = new Matrix();
       
      
      protected var §`§:§40§;
      
      private var §[>§:Number = 0.0;
      
      private var §,!0§:Number = 0.0;
      
      private var §^!0§:uint = 16777215;
      
      public function § !'§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§`§ = new §40§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§^!0§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§`§.§@!g§(param4);
         this.§`§.setPosition(0,0,0);
         this.§`§.setPosition(1,param1,0);
         this.§`§.setPosition(2,0,param2);
         this.§`§.setPosition(3,param1,param2);
         this.§`§.§9i§(param3);
         this.§[>§ = param1;
         this.§,!0§ = param2;
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc7_:int = 0;
         if(param2 == null)
         {
            param2 = new Rectangle();
         }
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = -Number.MAX_VALUE;
         var _loc5_:Number = Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         if(param1 == this)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§`§.§2q§(_loc7_,§0D§);
               _loc3_ = _loc3_ < §0D§.x ? Number(_loc3_) : Number(§0D§.x);
               _loc4_ = _loc4_ > §0D§.x ? Number(_loc4_) : Number(§0D§.x);
               _loc5_ = _loc5_ < §0D§.y ? Number(_loc5_) : Number(§0D§.y);
               _loc6_ = _loc6_ > §0D§.y ? Number(_loc6_) : Number(§0D§.y);
               _loc7_++;
            }
         }
         else
         {
            §?z§(param1,§&!T§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§`§.§2q§(_loc7_,§0D§);
               transformCoords(§&!T§,§0D§.x,§0D§.y,§[<§);
               _loc3_ = _loc3_ < §[<§.x ? Number(_loc3_) : Number(§[<§.x);
               _loc4_ = _loc4_ > §[<§.x ? Number(_loc4_) : Number(§[<§.x);
               _loc5_ = _loc5_ < §[<§.y ? Number(_loc5_) : Number(§[<§.y);
               _loc6_ = _loc6_ > §[<§.y ? Number(_loc6_) : Number(§[<§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §-;§(param1:int) : uint
      {
         return this.§`§.§'x§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§`§.§ !d§(param1,param2);
      }
      
      public function §=!6§(param1:int) : Number
      {
         return this.§`§.§@%§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§`§.§"!c§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§^!0§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§^!0§ != param1)
         {
            this.§^!0§ = param1;
            this.§`§.§9i§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§40§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§`§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§2^§, param2:Number) : void
      {
         param1.batchQuad(this,param2);
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get §3m§() : Number
      {
         return this.§[>§;
      }
      
      public function get §=!f§() : Number
      {
         return this.§,!0§;
      }
   }
}
