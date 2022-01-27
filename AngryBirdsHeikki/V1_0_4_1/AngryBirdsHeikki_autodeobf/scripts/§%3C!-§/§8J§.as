package §<!-§
{
   import §;!F§.§1!2§;
   import §;!F§.transformCoords;
   import §?!5§.§;P§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §8J§ extends DisplayObject
   {
      
      private static var §9![§:Vector3D = new Vector3D();
      
      private static var §8Q§:Point = new Point();
      
      private static var § c§:Matrix = new Matrix();
       
      
      protected var §#!Y§:§1!2§;
      
      private var §>C§:Number = 0.0;
      
      private var §]!>§:Number = 0.0;
      
      private var §;&§:uint = 16777215;
      
      public function §8J§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§#!Y§ = new §1!2§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§;&§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§#!Y§.setPremultipliedAlpha(param4);
         this.§#!Y§.setPosition(0,0,0);
         this.§#!Y§.setPosition(1,param1,0);
         this.§#!Y§.setPosition(2,0,param2);
         this.§#!Y§.setPosition(3,param1,param2);
         this.§#!Y§.§!!M§(param3);
         this.§>C§ = param1;
         this.§]!>§ = param2;
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
               this.§#!Y§.§+!D§(_loc7_,§9![§);
               _loc3_ = _loc3_ < §9![§.x ? Number(_loc3_) : Number(§9![§.x);
               _loc4_ = _loc4_ > §9![§.x ? Number(_loc4_) : Number(§9![§.x);
               _loc5_ = _loc5_ < §9![§.y ? Number(_loc5_) : Number(§9![§.y);
               _loc6_ = _loc6_ > §9![§.y ? Number(_loc6_) : Number(§9![§.y);
               _loc7_++;
            }
         }
         else
         {
            §^!V§(param1,§ c§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§#!Y§.§+!D§(_loc7_,§9![§);
               transformCoords(§ c§,§9![§.x,§9![§.y,§8Q§);
               _loc3_ = _loc3_ < §8Q§.x ? Number(_loc3_) : Number(§8Q§.x);
               _loc4_ = _loc4_ > §8Q§.x ? Number(_loc4_) : Number(§8Q§.x);
               _loc5_ = _loc5_ < §8Q§.y ? Number(_loc5_) : Number(§8Q§.y);
               _loc6_ = _loc6_ > §8Q§.y ? Number(_loc6_) : Number(§8Q§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §@T§(param1:int) : uint
      {
         return this.§#!Y§.§#!Q§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§#!Y§.§+`§(param1,param2);
      }
      
      public function §,s§(param1:int) : Number
      {
         return this.§#!Y§.§2?§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§#!Y§.§'!4§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§;&§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§;&§ != param1)
         {
            this.§;&§ = param1;
            this.§#!Y§.§!!M§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§1!2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§#!Y§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§;P§, param2:Number) : void
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
      
      public function get §[_§() : Number
      {
         return this.§>C§;
      }
      
      public function get §3!9§() : Number
      {
         return this.§]!>§;
      }
   }
}
