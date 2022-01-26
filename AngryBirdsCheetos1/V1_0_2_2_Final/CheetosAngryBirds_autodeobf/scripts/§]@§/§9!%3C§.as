package §]@§
{
   import §;! §.§?!T§;
   import §;! §.transformCoords;
   import §`C§.§'!N§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §9!<§ extends DisplayObject
   {
      
      private static var §4!Y§:Vector3D = new Vector3D();
      
      private static var §4S§:Point = new Point();
      
      private static var §1![§:Matrix = new Matrix();
       
      
      protected var §6!3§:§?!T§;
      
      private var §4!&§:Number = 0.0;
      
      private var §9u§:Number = 0.0;
      
      private var §^!W§:uint = 16777215;
      
      public function §9!<§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§6!3§ = new §?!T§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§^!W§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§6!3§.setPremultipliedAlpha(param4);
         this.§6!3§.setPosition(0,0,0);
         this.§6!3§.setPosition(1,param1,0);
         this.§6!3§.setPosition(2,0,param2);
         this.§6!3§.setPosition(3,param1,param2);
         this.§6!3§.§-G§(param3);
         this.§4!&§ = param1;
         this.§9u§ = param2;
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
               this.§6!3§.§@!+§(_loc7_,§4!Y§);
               _loc3_ = _loc3_ < §4!Y§.x ? Number(_loc3_) : Number(§4!Y§.x);
               _loc4_ = _loc4_ > §4!Y§.x ? Number(_loc4_) : Number(§4!Y§.x);
               _loc5_ = _loc5_ < §4!Y§.y ? Number(_loc5_) : Number(§4!Y§.y);
               _loc6_ = _loc6_ > §4!Y§.y ? Number(_loc6_) : Number(§4!Y§.y);
               _loc7_++;
            }
         }
         else
         {
            §=!;§(param1,§1![§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§6!3§.§@!+§(_loc7_,§4!Y§);
               transformCoords(§1![§,§4!Y§.x,§4!Y§.y,§4S§);
               _loc3_ = _loc3_ < §4S§.x ? Number(_loc3_) : Number(§4S§.x);
               _loc4_ = _loc4_ > §4S§.x ? Number(_loc4_) : Number(§4S§.x);
               _loc5_ = _loc5_ < §4S§.y ? Number(_loc5_) : Number(§4S§.y);
               _loc6_ = _loc6_ > §4S§.y ? Number(_loc6_) : Number(§4S§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §4!!§(param1:int) : uint
      {
         return this.§6!3§.§+;§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§6!3§.§,m§(param1,param2);
      }
      
      public function §[u§(param1:int) : Number
      {
         return this.§6!3§.§>W§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§6!3§.§6!Y§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§^!W§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§^!W§ != param1)
         {
            this.§^!W§ = param1;
            this.§6!3§.§-G§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§?!T§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§6!3§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
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
      
      public function get §7X§() : Number
      {
         return this.§4!&§;
      }
      
      public function get §]%§() : Number
      {
         return this.§9u§;
      }
   }
}
