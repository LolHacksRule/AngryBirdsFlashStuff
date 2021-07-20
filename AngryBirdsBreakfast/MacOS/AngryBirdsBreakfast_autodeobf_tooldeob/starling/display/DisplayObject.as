package starling.display
{
   import starling.errors.AbstractClassError;
   import starling.errors.AbstractMethodError;
   import starling.core.RenderSupport;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   import flash.utils.getQualifiedClassName;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   import starling.events.TouchEvent;
   
   public class DisplayObject extends EventDispatcher
   {
      
      private static var sAncestors:Vector.<DisplayObject> = new Vector.<DisplayObject>(0);
      
      private static var sHelperRect:Rectangle = new Rectangle();
      
      private static var sHelperMatrix:Matrix = new Matrix();
      
      private static var sTargetMatrix:Matrix = new Matrix();
      
      protected static var sRectCount:int = 0;
       
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var mPivotX:Number;
      
      private var mPivotY:Number;
      
      private var mScaleX:Number;
      
      private var mScaleY:Number;
      
      private var mRotation:Number;
      
      private var mAlpha:Number;
      
      private var mVisible:Boolean;
      
      private var mTouchable:Boolean;
      
      private var mZ:Number;
      
      private var mName:String;
      
      private var mLastTouchTimestamp:Number;
      
      private var mParent:DisplayObjectContainer;
      
      public function DisplayObject()
      {
         super();
         if(getQualifiedClassName(this) == "starling.display::DisplayObject")
         {
            throw new AbstractClassError();
         }
         this.mX = this.mY = this.mPivotX = this.mPivotY = this.mRotation = 0;
         this.mScaleX = this.mScaleY = this.mAlpha = 1;
         this.mVisible = this.mTouchable = true;
         this.mLastTouchTimestamp = -1;
      }
      
      public function dispose() : void
      {
         this.removeEventListeners();
      }
      
      public function removeFromParent(param1:Boolean = false) : void
      {
         if(this.mParent)
         {
            this.mParent.removeChild(this);
         }
         if(param1)
         {
            this.dispose();
         }
      }
      
      public function getTransformationMatrix(param1:DisplayObject, param2:Matrix = null) : Matrix
      {
         if(param2)
         {
            param2.identity();
         }
         else
         {
            param2 = new Matrix();
         }
         if(param1 == this)
         {
            return param2;
         }
         if(param1 == this.mParent || param1 == null && this.mParent == null)
         {
            if(this.mPivotX != 0 || this.mPivotY != 0)
            {
               param2.translate(-this.mPivotX,-this.mPivotY);
            }
            if(this.mScaleX != 1 || this.mScaleY != 1)
            {
               param2.scale(this.mScaleX,this.mScaleY);
            }
            if(this.mRotation != 0)
            {
               param2.rotate(this.mRotation);
            }
            if(this.mX != 0 || this.mY != 0)
            {
               param2.translate(this.mX,this.mY);
            }
            return param2;
         }
         if(param1 == null)
         {
            var _loc4_:DisplayObject = this;
            while(_loc4_)
            {
               _loc4_.getTransformationMatrix(_loc4_.mParent,sHelperMatrix);
               param2.concat(sHelperMatrix);
               _loc4_ = _loc4_.parent;
            }
            return param2;
         }
         if(param1.mParent == this)
         {
            param1.getTransformationMatrix(this,param2);
            param2.invert();
            return param2;
         }
         sAncestors.length = 0;
         var _loc3_:DisplayObject = null;
         _loc4_ = this;
         while(_loc4_)
         {
            sAncestors.push(_loc4_);
            _loc4_ = _loc4_.parent;
         }
         _loc4_ = param1;
         while(_loc4_ && sAncestors.indexOf(_loc4_) == -1)
         {
            _loc4_ = _loc4_.parent;
         }
         if(_loc4_ == null)
         {
            throw new ArgumentError("Object not connected to target");
         }
         _loc3_ = _loc4_;
         _loc4_ = this;
         while(_loc4_ != _loc3_)
         {
            _loc4_.getTransformationMatrix(_loc4_.mParent,sHelperMatrix);
            param2.concat(sHelperMatrix);
            _loc4_ = _loc4_.parent;
         }
         sTargetMatrix.identity();
         _loc4_ = param1;
         while(_loc4_ != _loc3_)
         {
            _loc4_.getTransformationMatrix(_loc4_.mParent,sHelperMatrix);
            sTargetMatrix.concat(sHelperMatrix);
            _loc4_ = _loc4_.parent;
         }
         sTargetMatrix.invert();
         param2.concat(sTargetMatrix);
         return param2;
      }
      
      public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         throw new AbstractMethodError("Method needs to be implemented in subclass");
      }
      
      public function hitTest(param1:Point, param2:Boolean = false) : DisplayObject
      {
         if(param2 && (!this.mVisible || !this.mTouchable))
         {
            return null;
         }
         if(this.getBounds(this,sHelperRect).containsPoint(param1))
         {
            return this;
         }
         return null;
      }
      
      public function localToGlobal(param1:Point) : Point
      {
         sTargetMatrix.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.getTransformationMatrix(_loc2_.mParent,sHelperMatrix);
            sTargetMatrix.concat(sHelperMatrix);
            _loc2_ = _loc2_.parent;
         }
         return sTargetMatrix.transformPoint(param1);
      }
      
      public function globalToLocal(param1:Point) : Point
      {
         sTargetMatrix.identity();
         var _loc2_:DisplayObject = this;
         while(_loc2_)
         {
            _loc2_.getTransformationMatrix(_loc2_.mParent,sHelperMatrix);
            sTargetMatrix.concat(sHelperMatrix);
            _loc2_ = _loc2_.parent;
         }
         sTargetMatrix.invert();
         return sTargetMatrix.transformPoint(param1);
      }
      
      public function render(param1:RenderSupport, param2:Number) : void
      {
         throw new AbstractMethodError("Method needs to be implemented in subclass");
      }
      
      override public function dispatchEvent(param1:Event) : void
      {
         var _loc2_:TouchEvent = null;
         if(param1 is TouchEvent)
         {
            _loc2_ = param1 as TouchEvent;
            if(_loc2_.timestamp == this.mLastTouchTimestamp)
            {
               return;
            }
            this.mLastTouchTimestamp = _loc2_.timestamp;
         }
         super.dispatchEvent(param1);
      }
      
      function setParent(param1:DisplayObjectContainer) : void
      {
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc2_:DisplayObject = param1;
         while(_loc2_ != this && _loc2_ != null)
         {
            _loc2_ = _loc2_.mParent;
         }
         if(_loc2_ == this)
         {
            throw new ArgumentError("An object cannot be added as a child to itself or one " + "of its children (or children\'s children, etc.)");
         }
         _loc3_ = getListenedEventTypes();
         if(param1 != this.mParent && this.mParent && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.removeEventListeningObject(this,_loc4_);
            }
         }
         this.mParent = param1;
         if(this.mParent && _loc3_.length > 0)
         {
            for each(_loc4_ in _loc3_)
            {
               this.addEventListeningObject(this,_loc4_);
            }
         }
      }
      
      public function removeEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.mParent)
         {
            this.mParent.removeEventListeningObject(param1,param2);
         }
      }
      
      public function addEventListeningObject(param1:DisplayObject, param2:String) : void
      {
         if(this.mParent)
         {
            this.mParent.addEventListeningObject(param1,param2);
         }
      }
      
      function dispatchEventOnChildren(param1:Event) : void
      {
         this.dispatchEvent(param1);
      }
      
      public function get transformationMatrix() : Matrix
      {
         return this.getTransformationMatrix(this.mParent);
      }
      
      public function get bounds() : Rectangle
      {
         return this.getBounds(this.mParent);
      }
      
      public function get width() : Number
      {
         return this.getBounds(this.mParent,sHelperRect).width;
      }
      
      public function set width(param1:Number) : void
      {
         this.mScaleX = 1;
         var _loc2_:Number = this.width;
         if(_loc2_ != 0)
         {
            this.scaleX = param1 / _loc2_;
         }
         else
         {
            this.scaleX = 1;
         }
      }
      
      public function get height() : Number
      {
         return this.getBounds(this.mParent,sHelperRect).height;
      }
      
      public function set height(param1:Number) : void
      {
         this.mScaleY = 1;
         var _loc2_:Number = this.height;
         if(_loc2_ != 0)
         {
            this.scaleY = param1 / _loc2_;
         }
         else
         {
            this.scaleY = 1;
         }
      }
      
      public function get root() : DisplayObject
      {
         var _loc1_:DisplayObject = this;
         while(_loc1_.parent)
         {
            _loc1_ = _loc1_.parent;
         }
         return _loc1_;
      }
      
      override public function addEventListener(param1:String, param2:Function) : void
      {
         super.addEventListener(param1,param2);
         this.addEventListeningObject(this,param1);
      }
      
      override public function removeEventListener(param1:String, param2:Function) : void
      {
         super.removeEventListener(param1,param2);
         if(!hasEventListener(param1))
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      override public function removeEventListeners(param1:String = null) : void
      {
         var _loc3_:String = null;
         var _loc2_:Array = getListenedEventTypes();
         super.removeEventListeners(param1);
         if(param1 == null)
         {
            for each(_loc3_ in _loc2_)
            {
               this.removeEventListeningObject(this,_loc3_);
            }
         }
         else
         {
            this.removeEventListeningObject(this,param1);
         }
      }
      
      public function transformMatrix(param1:Matrix3D) : void
      {
         if(this.mRotation == 0 && this.mScaleX == 1 && this.mScaleY == 1)
         {
            if(this.mX + this.mPivotX != 0 || this.mY + this.mPivotY != 0)
            {
               param1.prependTranslation(this.mX + this.mPivotX,this.mY + this.mPivotY,0);
            }
         }
         else
         {
            if(this.mX != 0 || this.mY != 0)
            {
               param1.prependTranslation(this.mX,this.mY,0);
            }
            if(this.mRotation != 0)
            {
               param1.prependRotation(this.mRotation / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(this.mScaleX != 1 || this.mScaleY != 1)
            {
               param1.prependScale(this.mScaleX,this.mScaleY,1);
            }
            if(this.mPivotX != 0 || this.mPivotY != 0)
            {
               param1.prependTranslation(this.mPivotX,this.mPivotY,0);
            }
         }
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function set x(param1:Number) : void
      {
         this.mX = param1;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function set y(param1:Number) : void
      {
         this.mY = param1;
      }
      
      public function get z() : Number
      {
         return this.mZ;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.mParent)
         {
            this.mZ = param1;
         }
      }
      
      public function get pivotX() : Number
      {
         return this.mPivotX;
      }
      
      public function set pivotX(param1:Number) : void
      {
         this.mPivotX = param1;
      }
      
      public function get pivotY() : Number
      {
         return this.mPivotY;
      }
      
      public function set pivotY(param1:Number) : void
      {
         this.mPivotY = param1;
      }
      
      public function get scaleX() : Number
      {
         return this.mScaleX;
      }
      
      public function set scaleX(param1:Number) : void
      {
         this.mScaleX = param1;
      }
      
      public function get scaleY() : Number
      {
         return this.mScaleY;
      }
      
      public function set scaleY(param1:Number) : void
      {
         this.mScaleY = param1;
      }
      
      public function get rotation() : Number
      {
         return this.mRotation;
      }
      
      public function set rotation(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(param1 > Math.PI)
         {
            _loc2_ = Math.ceil(param1 / (Math.PI * 2));
            param1 -= _loc2_ * (Math.PI * 2);
         }
         if(param1 < -Math.PI)
         {
            _loc2_ = Math.ceil(-param1 / (Math.PI * 2));
            param1 += _loc2_ * (Math.PI * 2);
         }
         this.mRotation = param1;
      }
      
      public function get alpha() : Number
      {
         return this.mAlpha;
      }
      
      public function set alpha(param1:Number) : void
      {
         this.mAlpha = param1 < 0 ? Number(0) : (param1 > 1 ? Number(1) : Number(param1));
      }
      
      public function get visible() : Boolean
      {
         return this.mVisible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.mVisible = param1;
      }
      
      public function get touchable() : Boolean
      {
         return this.mTouchable;
      }
      
      public function set touchable(param1:Boolean) : void
      {
         this.mTouchable = param1;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      public function set name(param1:String) : void
      {
         this.mName = param1;
      }
      
      public function get parent() : DisplayObjectContainer
      {
         return this.mParent;
      }
      
      public function get stage() : Stage
      {
         return this.root as Stage;
      }
      
      public function set color(param1:uint) : void
      {
      }
   }
}
