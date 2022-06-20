package starling.events
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import starling.display.DisplayObject;
   import starling.utils.MatrixUtil;
   import starling.utils.formatString;
   
   public class Touch
   {
      
      private static var sHelperMatrix:Matrix = new Matrix();
       
      
      private var mID:int;
      
      private var mGlobalX:Number;
      
      private var mGlobalY:Number;
      
      private var mPreviousGlobalX:Number;
      
      private var mPreviousGlobalY:Number;
      
      private var mTapCount:int;
      
      private var mPhase:String;
      
      private var mTarget:DisplayObject;
      
      private var mTimestamp:Number;
      
      private var mBeganTimestamp:Number;
      
      private var mStationaryTimestamp:Number;
      
      private var mPressure:Number;
      
      private var mWidth:Number;
      
      private var mHeight:Number;
      
      private var mBubbleChain:Vector.<EventDispatcher>;
      
      public function Touch(id:int, globalX:Number, globalY:Number, phase:String, target:DisplayObject)
      {
         super();
         this.mID = id;
         this.mGlobalX = this.mPreviousGlobalX = globalX;
         this.mGlobalY = this.mPreviousGlobalY = globalY;
         this.mTapCount = 0;
         this.mPhase = phase;
         this.mTarget = target;
         this.mPressure = this.mWidth = this.mHeight = 1;
         this.mBubbleChain = new Vector.<EventDispatcher>(0);
         this.updateBubbleChain();
      }
      
      public function getLocation(space:DisplayObject, resultPoint:Point = null) : Point
      {
         if(resultPoint == null)
         {
            resultPoint = new Point();
         }
         space.base.getTransformationMatrix(space,sHelperMatrix);
         return MatrixUtil.transformCoords(sHelperMatrix,this.mGlobalX,this.mGlobalY,resultPoint);
      }
      
      public function getPreviousLocation(space:DisplayObject, resultPoint:Point = null) : Point
      {
         if(resultPoint == null)
         {
            resultPoint = new Point();
         }
         space.base.getTransformationMatrix(space,sHelperMatrix);
         return MatrixUtil.transformCoords(sHelperMatrix,this.mPreviousGlobalX,this.mPreviousGlobalY,resultPoint);
      }
      
      public function getMovement(space:DisplayObject, resultPoint:Point = null) : Point
      {
         if(resultPoint == null)
         {
            resultPoint = new Point();
         }
         this.getLocation(space,resultPoint);
         var x:Number = resultPoint.x;
         var y:Number = resultPoint.y;
         this.getPreviousLocation(space,resultPoint);
         resultPoint.setTo(x - resultPoint.x,y - resultPoint.y);
         return resultPoint;
      }
      
      public function isTouching(target:DisplayObject) : Boolean
      {
         return this.mBubbleChain.indexOf(target) != -1;
      }
      
      public function toString() : String
      {
         return formatString("Touch {0}: globalX={1}, globalY={2}, phase={3}",this.mID,this.mGlobalX,this.mGlobalY,this.mPhase);
      }
      
      public function clone() : Touch
      {
         var clone:Touch = new Touch(this.mID,this.mGlobalX,this.mGlobalY,this.mPhase,this.mTarget);
         clone.mPreviousGlobalX = this.mPreviousGlobalX;
         clone.mPreviousGlobalY = this.mPreviousGlobalY;
         clone.mTapCount = this.mTapCount;
         clone.mTimestamp = this.mTimestamp;
         clone.mBeganTimestamp = this.mBeganTimestamp;
         clone.mPressure = this.mPressure;
         clone.mWidth = this.mWidth;
         clone.mHeight = this.mHeight;
         return clone;
      }
      
      private function updateBubbleChain() : void
      {
         var length:int = 0;
         var element:DisplayObject = null;
         if(this.mTarget)
         {
            length = 1;
            element = this.mTarget;
            this.mBubbleChain.length = 1;
            this.mBubbleChain[0] = element;
            while((element = element.parent) != null)
            {
               this.mBubbleChain[int(length++)] = element;
            }
         }
         else
         {
            this.mBubbleChain.length = 0;
         }
      }
      
      public function get id() : int
      {
         return this.mID;
      }
      
      public function get globalX() : Number
      {
         return this.mGlobalX;
      }
      
      public function get globalY() : Number
      {
         return this.mGlobalY;
      }
      
      public function get previousGlobalX() : Number
      {
         return this.mPreviousGlobalX;
      }
      
      public function get previousGlobalY() : Number
      {
         return this.mPreviousGlobalY;
      }
      
      public function get tapCount() : int
      {
         return this.mTapCount;
      }
      
      public function get phase() : String
      {
         return this.mPhase;
      }
      
      public function get target() : DisplayObject
      {
         return this.mTarget;
      }
      
      public function get timestamp() : Number
      {
         return this.mTimestamp;
      }
      
      public function get beganTimestamp() : Number
      {
         return this.mBeganTimestamp;
      }
      
      public function get stationaryTimestamp() : Number
      {
         return this.mStationaryTimestamp;
      }
      
      public function get pressure() : Number
      {
         return this.mPressure;
      }
      
      public function get width() : Number
      {
         return this.mWidth;
      }
      
      public function get height() : Number
      {
         return this.mHeight;
      }
      
      function dispatchEvent(event:TouchEvent) : void
      {
         if(this.mTarget)
         {
            event.dispatch(this.mBubbleChain);
         }
      }
      
      function get bubbleChain() : Vector.<EventDispatcher>
      {
         return this.mBubbleChain.concat();
      }
      
      function setTarget(value:DisplayObject) : void
      {
         this.mTarget = value;
         this.updateBubbleChain();
      }
      
      function setPosition(globalX:Number, globalY:Number) : void
      {
         this.mPreviousGlobalX = this.mGlobalX;
         this.mPreviousGlobalY = this.mGlobalY;
         this.mGlobalX = globalX;
         this.mGlobalY = globalY;
      }
      
      function setSize(width:Number, height:Number) : void
      {
         this.mWidth = width;
         this.mHeight = height;
      }
      
      function setPhase(value:String) : void
      {
         if(value != TouchPhase.STATIONARY)
         {
            this.mBeganTimestamp = NaN;
         }
         else if(this.mPhase != TouchPhase.STATIONARY)
         {
            this.mStationaryTimestamp = NaN;
         }
         this.mPhase = value;
      }
      
      function setTapCount(value:int) : void
      {
         this.mTapCount = value;
      }
      
      function setTimestamp(value:Number) : void
      {
         this.mTimestamp = value;
         if(isNaN(this.mBeganTimestamp) && this.mPhase == TouchPhase.BEGAN)
         {
            this.mBeganTimestamp = this.mTimestamp;
         }
         if(isNaN(this.mStationaryTimestamp) && this.mPhase == TouchPhase.STATIONARY)
         {
            this.mStationaryTimestamp = this.mTimestamp;
         }
      }
      
      function setPressure(value:Number) : void
      {
         this.mPressure = value;
      }
   }
}
