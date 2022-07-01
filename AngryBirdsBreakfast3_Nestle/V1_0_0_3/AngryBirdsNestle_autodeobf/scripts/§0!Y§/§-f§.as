package §0!Y§
{
   import §5!W§.§`+§;
   import §`!"§.§&-§;
   import §`!"§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §-f§ extends DisplayObject
   {
      
      private static var §<!V§:Vector3D = new Vector3D();
      
      private static var §?!J§:Point = new Point();
      
      private static var §0!x§:Matrix = new Matrix();
       
      
      protected var §use§:§&-§;
      
      private var §^!G§:Number = 0.0;
      
      private var §2"&§:Number = 0.0;
      
      private var §;!G§:uint = 16777215;
      
      public function §-f§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§use§ = new §&-§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§;!G§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§use§.§=O§(param4);
         this.§use§.setPosition(0,0,0);
         this.§use§.setPosition(1,param1,0);
         this.§use§.setPosition(2,0,param2);
         this.§use§.setPosition(3,param1,param2);
         this.§use§.§ !0§(param3);
         this.§^!G§ = param1;
         this.§2"&§ = param2;
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
               this.§use§.§3! §(_loc7_,§<!V§);
               _loc3_ = _loc3_ < §<!V§.x ? Number(_loc3_) : Number(§<!V§.x);
               _loc4_ = _loc4_ > §<!V§.x ? Number(_loc4_) : Number(§<!V§.x);
               _loc5_ = _loc5_ < §<!V§.y ? Number(_loc5_) : Number(§<!V§.y);
               _loc6_ = _loc6_ > §<!V§.y ? Number(_loc6_) : Number(§<!V§.y);
               _loc7_++;
            }
         }
         else
         {
            §8t§(param1,§0!x§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§use§.§3! §(_loc7_,§<!V§);
               transformCoords(§0!x§,§<!V§.x,§<!V§.y,§?!J§);
               _loc3_ = _loc3_ < §?!J§.x ? Number(_loc3_) : Number(§?!J§.x);
               _loc4_ = _loc4_ > §?!J§.x ? Number(_loc4_) : Number(§?!J§.x);
               _loc5_ = _loc5_ < §?!J§.y ? Number(_loc5_) : Number(§?!J§.y);
               _loc6_ = _loc6_ > §?!J§.y ? Number(_loc6_) : Number(§?!J§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §-@§(param1:int) : uint
      {
         return this.§use§.§=#§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§use§.§,P§(param1,param2);
      }
      
      public function §,!d§(param1:int) : Number
      {
         return this.§use§.§!U§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§use§.§["+§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§;!G§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§;!G§ != param1)
         {
            this.§;!G§ = param1;
            this.§use§.§ !0§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§&-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§use§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§`+§, param2:Number) : void
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
      
      public function get §#!Y§() : Number
      {
         return this.§^!G§;
      }
      
      public function get §0"#§() : Number
      {
         return this.§2"&§;
      }
   }
}
