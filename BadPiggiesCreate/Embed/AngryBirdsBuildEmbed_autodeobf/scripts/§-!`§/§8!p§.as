package §-!`§
{
   import §6x§.§9!§;
   import §6x§.transformCoords;
   import §@!X§.§"W§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §8!p§ extends DisplayObject
   {
      
      private static var §=A§:Vector3D = new Vector3D();
      
      private static var §;!'§:Point = new Point();
      
      private static var §`!3§:Matrix = new Matrix();
       
      
      protected var §8<§:§9!§;
      
      private var §]F§:Number = 0.0;
      
      private var §,!n§:Number = 0.0;
      
      private var §+h§:uint = 16777215;
      
      public function §8!p§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§8<§ = new §9!§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§+h§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§8<§.setPremultipliedAlpha(param4);
         this.§8<§.setPosition(0,0,0);
         this.§8<§.setPosition(1,param1,0);
         this.§8<§.setPosition(2,0,param2);
         this.§8<§.setPosition(3,param1,param2);
         this.§8<§.§9!Y§(param3);
         this.§]F§ = param1;
         this.§,!n§ = param2;
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
               this.§8<§.getPosition(_loc7_,§=A§);
               _loc3_ = _loc3_ < §=A§.x ? Number(_loc3_) : Number(§=A§.x);
               _loc4_ = _loc4_ > §=A§.x ? Number(_loc4_) : Number(§=A§.x);
               _loc5_ = _loc5_ < §=A§.y ? Number(_loc5_) : Number(§=A§.y);
               _loc6_ = _loc6_ > §=A§.y ? Number(_loc6_) : Number(§=A§.y);
               _loc7_++;
            }
         }
         else
         {
            §+y§(param1,§`!3§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§8<§.getPosition(_loc7_,§=A§);
               transformCoords(§`!3§,§=A§.x,§=A§.y,§;!'§);
               _loc3_ = _loc3_ < §;!'§.x ? Number(_loc3_) : Number(§;!'§.x);
               _loc4_ = _loc4_ > §;!'§.x ? Number(_loc4_) : Number(§;!'§.x);
               _loc5_ = _loc5_ < §;!'§.y ? Number(_loc5_) : Number(§;!'§.y);
               _loc6_ = _loc6_ > §;!'§.y ? Number(_loc6_) : Number(§;!'§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §>h§(param1:int) : uint
      {
         return this.§8<§.§7k§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§8<§.§2!9§(param1,param2);
      }
      
      public function §85§(param1:int) : Number
      {
         return this.§8<§.§?!,§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§8<§.§@!J§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§+h§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§+h§ != param1)
         {
            this.§+h§ = param1;
            this.§8<§.§9!Y§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§9!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§8<§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§"W§, param2:Number) : void
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
      
      public function get initialWidth() : Number
      {
         return this.§]F§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§,!n§;
      }
   }
}
