package starling.display
{
   import starling.utils.VertexData;
   import starling.utils.transformCoords;
   import starling.core.RenderSupport;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class Quad extends DisplayObject
   {
      
      private static var sPosition:Vector3D = new Vector3D();
      
      private static var sHelperPoint:Point = new Point();
      
      private static var sHelperMatrix:Matrix = new Matrix();
       
      
      protected var mVertexData:VertexData;
      
      private var mInitialWidth:Number = 0.0;
      
      private var mInitialHeight:Number = 0.0;
      
      private var mColor:uint = 16777215;
      
      public function Quad(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         super();
         this.mVertexData = new VertexData(4,param4);
         this.updateVertexData(param1,param2,param3,param4);
         this.mColor = param3;
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         this.mVertexData.setPremultipliedAlpha(param4);
         this.mVertexData.setPosition(0,0,0);
         this.mVertexData.setPosition(1,param1,0);
         this.mVertexData.setPosition(2,0,param2);
         this.mVertexData.setPosition(3,param1,param2);
         this.mVertexData.setUniformColor(param3);
         this.mInitialWidth = param1;
         this.mInitialHeight = param2;
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
               this.mVertexData.getPosition(_loc7_,sPosition);
               _loc3_ = _loc3_ < sPosition.x ? Number(_loc3_) : Number(sPosition.x);
               _loc4_ = _loc4_ > sPosition.x ? Number(_loc4_) : Number(sPosition.x);
               _loc5_ = _loc5_ < sPosition.y ? Number(_loc5_) : Number(sPosition.y);
               _loc6_ = _loc6_ > sPosition.y ? Number(_loc6_) : Number(sPosition.y);
               _loc7_++;
            }
         }
         else
         {
            getTransformationMatrix(param1,sHelperMatrix);
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               this.mVertexData.getPosition(_loc7_,sPosition);
               transformCoords(sHelperMatrix,sPosition.x,sPosition.y,sHelperPoint);
               _loc3_ = _loc3_ < sHelperPoint.x ? Number(_loc3_) : Number(sHelperPoint.x);
               _loc4_ = _loc4_ > sHelperPoint.x ? Number(_loc4_) : Number(sHelperPoint.x);
               _loc5_ = _loc5_ < sHelperPoint.y ? Number(_loc5_) : Number(sHelperPoint.y);
               _loc6_ = _loc6_ > sHelperPoint.y ? Number(_loc6_) : Number(sHelperPoint.y);
               _loc7_++;
            }
         }
         param2.x = _loc3_;
         param2.y = _loc5_;
         param2.width = _loc4_ - _loc3_;
         param2.height = _loc6_ - _loc5_;
         return param2;
      }
      
      public function getVertexColor(param1:int) : uint
      {
         return this.mVertexData.getColor(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         this.mVertexData.setColor(param1,param2);
      }
      
      public function getVertexAlpha(param1:int) : Number
      {
         return this.mVertexData.getAlpha(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         this.mVertexData.setAlpha(param1,param2);
      }
      
      public function get color() : uint
      {
         return this.mColor;
      }
      
      override public function set color(param1:uint) : void
      {
         if(this.mColor != param1)
         {
            this.mColor = param1;
            this.mVertexData.setUniformColor(param1,1);
         }
      }
      
      public function copyVertexDataTo(param1:VertexData, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         this.mVertexData.copyTo(param1,param2,param3,true,param4);
      }
      
      override public function render(param1:RenderSupport, param2:Number) : void
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
         return this.mInitialWidth;
      }
      
      public function get initialHeight() : Number
      {
         return this.mInitialHeight;
      }
   }
}
