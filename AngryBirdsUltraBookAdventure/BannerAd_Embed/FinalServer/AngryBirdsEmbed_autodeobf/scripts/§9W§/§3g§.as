package §9W§
{
   import §#!;§.§?h§;
   import §@e§.§;2§;
   import §@e§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §3g§ extends DisplayObject
   {
      
      private static var §0!;§:Vector3D = new Vector3D();
      
      private static var §2Y§:Point = new Point();
      
      private static var §[9§:Matrix = new Matrix();
       
      
      protected var §5J§:§;2§;
      
      private var §,v§:Number = 0.0;
      
      private var §%C§:Number = 0.0;
      
      private var §,X§:uint = 16777215;
      
      public function §3g§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.§5J§ = new §;2§(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.§,X§ = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.§5J§.setPremultipliedAlpha(param4);
         this.§5J§.setPosition(0,0,0);
         this.§5J§.setPosition(1,param1,0);
         this.§5J§.setPosition(2,0,param2);
         this.§5J§.setPosition(3,param1,param2);
         this.§5J§.§,!#§(param3);
         this.§,v§ = param1;
         this.§%C§ = param2;
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
               this.§5J§.§`j§(_loc7_,§0!;§);
               _loc3_ = _loc3_ < §0!;§.x ? Number(_loc3_) : Number(§0!;§.x);
               _loc4_ = _loc4_ > §0!;§.x ? Number(_loc4_) : Number(§0!;§.x);
               _loc5_ = _loc5_ < §0!;§.y ? Number(_loc5_) : Number(§0!;§.y);
               _loc6_ = _loc6_ > §0!;§.y ? Number(_loc6_) : Number(§0!;§.y);
               _loc7_++;
            }
         }
         else
         {
            §8w§(param1,§[9§);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.§5J§.§`j§(_loc7_,§0!;§);
               transformCoords(§[9§,§0!;§.x,§0!;§.y,§2Y§);
               _loc3_ = _loc3_ < §2Y§.x ? Number(_loc3_) : Number(§2Y§.x);
               _loc4_ = _loc4_ > §2Y§.x ? Number(_loc4_) : Number(§2Y§.x);
               _loc5_ = _loc5_ < §2Y§.y ? Number(_loc5_) : Number(§2Y§.y);
               _loc6_ = _loc6_ > §2Y§.y ? Number(_loc6_) : Number(§2Y§.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function §3T§(param1:int) : uint
      {
         return this.§5J§.§+!+§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.§5J§.§6!%§(param1,param2);
      }
      
      public function §8!C§(param1:int) : Number
      {
         return this.§5J§.§,!8§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.§5J§.§?n§(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.§,X§;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.§,X§ != param1)
         {
            this.§,X§ = param1;
            this.§5J§.§,!#§(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:§;2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.§5J§.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:§?h§, param2:Number) : void
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
         return this.§,v§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§%C§;
      }
   }
}
