package §4"@§
{
   import §1f§.§&"@§;
   import §[4§.§0!r§;
   import §[4§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6p§ extends DisplayObject
   {
      
      private static var §`i§:Vector3D = new Vector3D();
      
      private static var §]"7§:Point = new Point();
      
      private static var §+!0§:Matrix = new Matrix();
       
      
      protected var §#g§:§0!r§;
      
      private var §99§:Number = 0.0;
      
      private var §!!@§:Number = 0.0;
      
      private var §]"<§:uint = 16777215;
      
      public function §6p§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§#g§ = new §0!r§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§]"<§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§#g§.§4![§(param4);
         this.§#g§.setPosition(0,0,0);
         this.§#g§.setPosition(1,param1,0);
         this.§#g§.setPosition(2,0,param2);
         this.§#g§.setPosition(3,param1,param2);
         this.§#g§.§@n§(param3);
         this.§99§ = param1;
         this.§!!@§ = param2;
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
               this.§#g§.getPosition(_loc7_,§`i§);
               _loc3_ = _loc3_ < §`i§.x ? Number(_loc3_) : Number(§`i§.x);
               _loc4_ = _loc4_ > §`i§.x ? Number(_loc4_) : Number(§`i§.x);
               _loc5_ = _loc5_ < §`i§.y ? Number(_loc5_) : Number(§`i§.y);
               _loc6_ = _loc6_ > §`i§.y ? Number(_loc6_) : Number(§`i§.y);
               _loc7_++;
            }
         }
         else
         {
            §@!H§(param1,§+!0§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§#g§.getPosition(_loc7_,§`i§);
               transformCoords(§+!0§,§`i§.x,§`i§.y,§]"7§);
               _loc3_ = _loc3_ < §]"7§.x ? Number(_loc3_) : Number(§]"7§.x);
               _loc4_ = _loc4_ > §]"7§.x ? Number(_loc4_) : Number(§]"7§.x);
               _loc5_ = _loc5_ < §]"7§.y ? Number(_loc5_) : Number(§]"7§.y);
               _loc6_ = _loc6_ > §]"7§.y ? Number(_loc6_) : Number(§]"7§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §,!b§(param1:int) : uint
      {
         return this.§#g§.§1G§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§#g§.§>K§(param1,param2);
      }
      
      public function §2o§(param1:int) : Number
      {
         return this.§#g§.§;"1§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§#g§.§"!i§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§]"<§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§]"<§ != param1)
         {
            this.§]"<§ = param1;
            this.§#g§.§@n§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§0!r§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#g§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§&"@§, param2:Number) : void
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
      
      public function get §#!u§() : Number
      {
         return this.§99§;
      }
      
      public function get §3" §() : Number
      {
         return this.§!!@§;
      }
   }
}
