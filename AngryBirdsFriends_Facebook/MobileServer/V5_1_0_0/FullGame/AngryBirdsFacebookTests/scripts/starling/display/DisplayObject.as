package starling.display
{
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.getQualifiedClassName;
   import starling.core.RenderSupport;
   import starling.errors.AbstractClassError;
   import starling.errors.AbstractMethodError;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   import starling.filters.FragmentFilter;
   import starling.utils.MatrixUtil;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var sAncestors:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var sHelperRect:Rectangle = new Rectangle();
      
      private static var sHelperMatrix:Matrix = new Matrix();
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var mZ:Number;
      
      private var mPivotX:Number;
      
      private var mPivotY:Number;
      
      private var mScaleX:Number;
      
      private var mScaleY:Number;
      
      private var mSkewX:Number;
      
      private var mSkewY:Number;
      
      private var mRotation:Number;
      
      private var mAlpha:Number;
      
      private var mVisible:Boolean;
      
      private var mTouchable:Boolean;
      
      private var mBlendMode:int;
      
      private var mName:String;
      
      private var mUseHandCursor:Boolean;
      
      private var mParent:DisplayObjectContainer;
      
      private var mTransformationMatrix:Matrix;
      
      private var mOrientationChanged:Boolean;
      
      private var mFilter:FragmentFilter;
      
      private var mOwnsFilter:Boolean = true;
      
      public var sortValue:Number = 0.0;
      
      public var cacheValue:int = 0;
      
      public function DisplayObject()
      {
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new AbstractClassError();
         }
         this.mX = this.mY = this.mPivotX = this.mPivotY = this.mRotation = this.mSkewX = this.mSkewY = 0;
         this.mScaleX = this.mScaleY = this.mAlpha = 1;
         this.mVisible = this.mTouchable = true;
         this.mBlendMode = BlendMode.AUTO;
         this.mTransformationMatrix = new Matrix();
         this.mOrientationChanged = this.mUseHandCursor = false;
      }
      
      public function dispose() : void
      {
         if(this.mFilter && this.mOwnsFilter)
         {
            this.mFilter.dispose();
         }
         this.removeEventListeners();
         this.removeFromParent();
      }
      
      public function removeFromParent(dispose:Boolean = false) : void
      {
         if(this.mParent)
         {
            this.mParent.removeChild(this,dispose);
         }
      }
      
      public function getTransformationMatrix(targetSpace:DisplayObject, resultMatrix:Matrix = null) : Matrix
      {
         var commonParent:DisplayObject = null;
         var currentObject:DisplayObject = null;
         if(resultMatrix)
         {
            resultMatrix.identity();
         }
         else
         {
            resultMatrix = new Matrix();
         }
         if(targetSpace == this)
         {
            return resultMatrix;
         }
         if(targetSpace == this.mParent || targetSpace == null && this.mParent == null)
         {
            resultMatrix.copyFrom(this.transformationMatrix);
            return resultMatrix;
         }
         if(targetSpace == null || targetSpace == this.base)
         {
            currentObject = this;
            while(currentObject != targetSpace)
            {
               resultMatrix.concat(currentObject.transformationMatrix);
               currentObject = currentObject.mParent;
            }
            return resultMatrix;
         }
         if(targetSpace.mParent == this)
         {
            targetSpace.getTransformationMatrix(this,resultMatrix);
            resultMatrix.invert();
            return resultMatrix;
         }
         commonParent = null;
         currentObject = this;
         while(currentObject)
         {
            sAncestors.push(currentObject);
            currentObject = currentObject.mParent;
         }
         currentObject = targetSpace;
         while(currentObject && sAncestors.indexOf(currentObject) == -1)
         {
            currentObject = currentObject.mParent;
         }
         sAncestors.length = 0;
         if(currentObject)
         {
            commonParent = currentObject;
            currentObject = this;
            while(currentObject != commonParent)
            {
               resultMatrix.concat(currentObject.transformationMatrix);
               currentObject = currentObject.mParent;
            }
            if(commonParent == targetSpace)
            {
               return resultMatrix;
            }
            sHelperMatrix.identity();
            currentObject = targetSpace;
            while(currentObject != commonParent)
            {
               sHelperMatrix.concat(currentObject.transformationMatrix);
               currentObject = currentObject.mParent;
            }
            sHelperMatrix.invert();
            resultMatrix.concat(sHelperMatrix);
            return resultMatrix;
         }
         throw new ArgumentError("Object not connected to target");
      }
      
      public function getBounds(targetSpace:DisplayObject, resultRect:Rectangle = null) : Rectangle
      {
         throw new AbstractMethodError("Method needs to be implemented in subclass");
      }
      
      public function hitTest(localPoint:Point, forTouch:Boolean = false) : DisplayObject
      {
         if(forTouch && (!this.mVisible || !this.mTouchable))
         {
            return null;
         }
         if(this.getBounds(this,sHelperRect).containsPoint(localPoint))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(localPoint:Point, resultPoint:Point = null) : Point
      {
         this.getTransformationMatrix(this.base,sHelperMatrix);
         return MatrixUtil.transformCoords(sHelperMatrix,localPoint.x,localPoint.y,resultPoint);
      }
      
      public function globalToLocal(globalPoint:Point, resultPoint:Point = null) : Point
      {
         this.getTransformationMatrix(this.base,sHelperMatrix);
         sHelperMatrix.invert();
         return MatrixUtil.transformCoords(sHelperMatrix,globalPoint.x,globalPoint.y,resultPoint);
      }
      
      public function render(support:RenderSupport, parentAlpha:Number) : void
      {
         throw new AbstractMethodError("Method needs to be implemented in subclass");
      }
      
      public function get hasVisibleArea() : Boolean
      {
         return this.mAlpha != 0 && this.visible && this.mScaleX != 0 && this.mScaleY != 0;
      }
      
      function setParent(value:DisplayObjectContainer) : void
      {
         var listenedEvents:Array = null;
         var eventType:String = null;
         var ancestor:DisplayObject = value;
         while(ancestor != this && ancestor != null)
         {
            ancestor = ancestor.mParent;
         }
         if(ancestor == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         listenedEvents = getListenedEventTypes();
         if(value != this.mParent && this.mParent && listenedEvents.length > 0)
         {
            for each(eventType in listenedEvents)
            {
               this.removeEventListeningObject(this,eventType);
            }
         }
         this.mParent = value;
         if(this.mParent && listenedEvents.length > 0)
         {
            for each(eventType in listenedEvents)
            {
               this.addEventListeningObject(this,eventType);
            }
         }
      }
      
      private final function isEquivalent(a:Number, b:Number, epsilon:Number = 1.0E-4) : Boolean
      {
         return a - epsilon < b && a + epsilon > b;
      }
      
      private final function normalizeAngle(angle:Number) : Number
      {
         var count:Number = NaN;
         if(angle > Math.PI)
         {
            count = Math.ceil(angle / (Math.PI * 2));
            return Number(angle - count * (Math.PI * 2));
         }
         if(angle < -Math.PI)
         {
            count = Math.ceil(-angle / (Math.PI * 2));
            angle += count * (Math.PI * 2);
         }
         return angle;
      }
      
      public function get transformationMatrix() : Matrix
      {
         var cosA:Number = NaN;
         var sinA:Number = NaN;
         if(this.mOrientationChanged)
         {
            this.mOrientationChanged = false;
            if(this.mScaleX < 0 || this.mScaleY < 0 || this.mSkewX != 0 || this.mSkewY != 0)
            {
               this.mTransformationMatrix.identity();
               if(this.mScaleX != 1 || this.mScaleY != 1)
               {
                  this.mTransformationMatrix.scale(this.mScaleX,this.mScaleY);
               }
               if(this.mSkewX != 0 || this.mSkewY != 0)
               {
                  MatrixUtil.skew(this.mTransformationMatrix,this.mSkewX,this.mSkewY);
               }
               if(this.mRotation != 0)
               {
                  this.mTransformationMatrix.rotate(this.mRotation);
               }
               if(this.mX != 0 || this.mY != 0)
               {
                  this.mTransformationMatrix.translate(this.mX,this.mY);
               }
               if(this.mPivotX != 0 || this.mPivotY != 0)
               {
                  this.mTransformationMatrix.tx = this.mX + (this.mTransformationMatrix.a * this.mPivotX + this.mTransformationMatrix.c * this.mPivotY);
                  this.mTransformationMatrix.ty = this.mY + (this.mTransformationMatrix.b * this.mPivotX + this.mTransformationMatrix.d * this.mPivotY);
               }
               else
               {
                  this.mTransformationMatrix.tx = this.mX;
                  this.mTransformationMatrix.ty = this.mY;
               }
            }
            else if(this.mRotation != 0)
            {
               cosA = Math.cos(this.mRotation);
               sinA = Math.sin(this.mRotation);
               this.mTransformationMatrix.a = this.mScaleX * cosA;
               this.mTransformationMatrix.b = this.mScaleY * sinA;
               this.mTransformationMatrix.c = -this.mScaleX * sinA;
               this.mTransformationMatrix.d = this.mScaleY * cosA;
               this.mTransformationMatrix.tx = this.mX;
               this.mTransformationMatrix.ty = this.mY;
               if(this.mPivotX != 0)
               {
                  this.mTransformationMatrix.tx += this.mTransformationMatrix.a * this.mPivotX;
                  this.mTransformationMatrix.ty += this.mTransformationMatrix.b * this.mPivotX;
               }
               if(this.mPivotY != 0)
               {
                  this.mTransformationMatrix.tx += this.mTransformationMatrix.c * this.mPivotY;
                  this.mTransformationMatrix.ty += this.mTransformationMatrix.d * this.mPivotY;
               }
            }
            else
            {
               this.mTransformationMatrix.a = this.mScaleX;
               this.mTransformationMatrix.b = 0;
               this.mTransformationMatrix.c = 0;
               this.mTransformationMatrix.d = this.mScaleY;
               this.mTransformationMatrix.tx = this.mX + this.mPivotX * this.mScaleX;
               this.mTransformationMatrix.ty = this.mY + this.mPivotY * this.mScaleY;
            }
         }
         return this.mTransformationMatrix;
      }
      
      public function set transformationMatrix(matrix:Matrix) : void
      {
         this.mOrientationChanged = false;
         this.mTransformationMatrix.copyFrom(matrix);
         this.mX = matrix.tx;
         this.mY = matrix.ty;
         this.mScaleX = Math.sqrt(matrix.a * matrix.a + matrix.b * matrix.b);
         this.mSkewY = Math.acos(matrix.a / this.mScaleX);
         if(!this.isEquivalent(matrix.b,this.mScaleX * Math.sin(this.mSkewY)))
         {
            this.mScaleX *= -1;
            this.mSkewY = Math.acos(matrix.a / this.mScaleX);
         }
         this.mScaleY = Math.sqrt(matrix.c * matrix.c + matrix.d * matrix.d);
         this.mSkewX = Math.acos(matrix.d / this.mScaleY);
         if(!this.isEquivalent(matrix.c,-this.mScaleY * Math.sin(this.mSkewX)))
         {
            this.mScaleY *= -1;
            this.mSkewX = Math.acos(matrix.d / this.mScaleY);
         }
         if(this.isEquivalent(this.mSkewX,this.mSkewY))
         {
            this.mRotation = this.mSkewX;
            this.mSkewY = 0;
            this.mSkewX = 0;
         }
         else
         {
            this.mRotation = 0;
         }
      }
      
      public function get useHandCursor() : Boolean
      {
         return this.mUseHandCursor;
      }
      
      public function set useHandCursor(value:Boolean) : void
      {
         if(value == this.mUseHandCursor)
         {
            return;
         }
         this.mUseHandCursor = value;
         if(this.mUseHandCursor)
         {
            this.addEventListener(TouchEvent.TOUCH,this.onTouch);
         }
         else
         {
            this.removeEventListener(TouchEvent.TOUCH,this.onTouch);
         }
      }
      
      private function onTouch(event:TouchEvent) : void
      {
         Mouse.cursor = !!event.interactsWith(this) ? MouseCursor.BUTTON : MouseCursor.AUTO;
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.mParent);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.mParent,sHelperRect).width;
      }
      
      public function set width(value:Number) : void
      {
         this.scaleX = 1;
         var actualWidth:Number = this.width;
         if(actualWidth != 0)
         {
            this.scaleX = value / actualWidth;
         }
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.mParent,sHelperRect).height;
      }
      
      public function set height(value:Number) : void
      {
         this.scaleY = 1;
         var actualHeight:Number = this.height;
         if(actualHeight != 0)
         {
            this.scaleY = value / actualHeight;
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(value:Number) : void
      {
         if(this.mX != value)
         {
            this.mX = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(value:Number) : void
      {
         if(this.mY != value)
         {
            this.mY = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get z() : Number
      {
         return this.mZ;
      }
      
      public function set z(value:Number) : void
      {
         if(!this.mParent)
         {
            this.mZ = value;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.mPivotX;
      }
      
      public function set pivotX(value:Number) : void
      {
         if(this.mPivotX != value)
         {
            this.mPivotX = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get pivotY() : Number
      {
         return this.mPivotY;
      }
      
      public function set pivotY(value:Number) : void
      {
         if(this.mPivotY != value)
         {
            this.mPivotY = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get scaleX() : Number
      {
         return this.mScaleX;
      }
      
      public function set scaleX(value:Number) : void
      {
         if(this.mScaleX != value)
         {
            this.mScaleX = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get scaleY() : Number
      {
         return this.mScaleY;
      }
      
      public function set scaleY(value:Number) : void
      {
         if(this.mScaleY != value)
         {
            this.mScaleY = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get skewX() : Number
      {
         return this.mSkewX;
      }
      
      public function set skewX(value:Number) : void
      {
         value = this.normalizeAngle(value);
         if(this.mSkewX != value)
         {
            this.mSkewX = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get skewY() : Number
      {
         return this.mSkewY;
      }
      
      public function set skewY(value:Number) : void
      {
         value = this.normalizeAngle(value);
         if(this.mSkewY != value)
         {
            this.mSkewY = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get rotation() : Number
      {
         return this.mRotation;
      }
      
      public function set rotation(value:Number) : void
      {
         value = this.normalizeAngle(value);
         if(this.mRotation != value)
         {
            this.mRotation = value;
            this.mOrientationChanged = true;
         }
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(value:Number) : void
      {
         this.mAlpha = value < 0 ? Number(0) : (value > 1 ? Number(1) : Number(value));
      }
      
      public function get visible() : Boolean
      {
         return this.mVisible;
      }
      
      public function set visible(value:Boolean) : void
      {
         this.mVisible = value;
      }
      
      public function get touchable() : Boolean
      {
         return this.mTouchable;
      }
      
      public function set touchable(value:Boolean) : void
      {
         this.mTouchable = value;
      }
      
      public function get blendMode() : int
      {
         return this.mBlendMode;
      }
      
      public function set blendMode(value:int) : void
      {
         this.mBlendMode = value;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(value:String) : void
      {
         this.mName = value;
      }
      
      public function get filter() : FragmentFilter
      {
         return this.mFilter;
      }
      
      public function set filter(value:FragmentFilter) : void
      {
         this.mFilter = value;
      }
      
      public function get ownsFilter() : Boolean
      {
         return this.mOwnsFilter;
      }
      
      public function set ownsFilter(ownsFilter:Boolean) : void
      {
         this.mOwnsFilter = ownsFilter;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.mParent;
      }
      
      public function get base() : DisplayObject
      {
         var currentObject:DisplayObject = this;
         while(currentObject.mParent)
         {
            currentObject = currentObject.mParent;
         }
         return currentObject;
      }
      
      public function get root() : DisplayObject
      {
         var currentObject:DisplayObject = this;
         while(currentObject.mParent)
         {
            if(currentObject.mParent is Stage)
            {
               return currentObject;
            }
            currentObject = currentObject.parent;
         }
         return null;
      }
      
      public function get stage() : Stage
      {
         return this.base as Stage;
      }
      
      public function removeEventListeningObject(displayObject:DisplayObject, eventType:String) : void
      {
         if(this.mParent)
         {
            this.mParent.removeEventListeningObject(displayObject,eventType);
         }
      }
      
      public function addEventListeningObject(displayObject:DisplayObject, eventType:String) : void
      {
         if(this.mParent)
         {
            this.mParent.addEventListeningObject(displayObject,eventType);
         }
      }
      
      override public function addEventListener(type:String, listener:Function) : void
      {
         super.addEventListener(type,listener);
         this.addEventListeningObject(this,type);
      }
      
      override public function removeEventListener(type:String, listener:Function) : void
      {
         super.removeEventListener(type,listener);
         if(!hasEventListener(type))
         {
            this.removeEventListeningObject(this,type);
         }
      }
      
      override public function removeEventListeners(type:String = null) : void
      {
         var eventType:String = null;
         var listenedEvents:Array = getListenedEventTypes();
         super.removeEventListeners(type);
         if(type == null)
         {
            for each(eventType in listenedEvents)
            {
               this.removeEventListeningObject(this,eventType);
            }
         }
         else
         {
            this.removeEventListeningObject(this,type);
         }
      }
      
      public function set color(color:uint) : void
      {
      }
   }
}
