package starling.display
{
   import flash.errors.IllegalOperationError;
   import flash.geom.Point;
   import starling.§core:starling_internal§.*;
   import starling.events.EnterFrameEvent;
   import starling.events.Event;
   
   public class Stage extends DisplayObjectContainer
   {
       
      
      private var mWidth:int;
      
      private var mHeight:int;
      
      private var mProjectionCanvasWidth:Number;
      
      private var mProjectionCanvasHeight:Number;
      
      private var mColor:uint;
      
      private var mEnterFrameEvent:EnterFrameEvent;
      
      private var mEnterFrameEventListeners:Vector.<DisplayObject>;
      
      public function Stage(width:int, height:int, color:uint = 0)
      {
         this.mEnterFrameEvent = new EnterFrameEvent(Event.ENTER_FRAME,0);
         super();
         this.mWidth = width;
         this.mHeight = height;
         this.mProjectionCanvasWidth = width;
         this.mProjectionCanvasHeight = height;
         this.mColor = color;
         this.mEnterFrameEventListeners = new Vector.<DisplayObject>();
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.mEnterFrameEventListeners = null;
      }
      
      override public function addEventListeningObject(displayObject:DisplayObject, eventType:String) : void
      {
         var index:int = 0;
         if(eventType == EnterFrameEvent.ENTER_FRAME)
         {
            index = this.mEnterFrameEventListeners.indexOf(displayObject);
            if(index < 0)
            {
               this.mEnterFrameEventListeners.push(displayObject);
            }
         }
      }
      
      override public function removeEventListeningObject(displayObject:DisplayObject, eventType:String) : void
      {
         var index:int = 0;
         if(eventType == EnterFrameEvent.ENTER_FRAME)
         {
            index = this.mEnterFrameEventListeners.indexOf(displayObject);
            if(index >= 0)
            {
               this.mEnterFrameEventListeners.splice(index,1);
            }
         }
      }
      
      public function advanceTime(passedTime:Number) : void
      {
         var event:EnterFrameEvent = null;
         var listener:DisplayObject = null;
         this.mEnterFrameEvent.reset(Event.ENTER_FRAME,false,passedTime);
         if(this.mEnterFrameEventListeners.length > 0)
         {
            event = this.mEnterFrameEvent;
            for each(listener in this.mEnterFrameEventListeners)
            {
               listener.dispatchEvent(event);
            }
         }
      }
      
      override public function hitTest(localPoint:Point, forTouch:Boolean = false) : DisplayObject
      {
         if(forTouch && (!visible || !touchable))
         {
            return null;
         }
         if(localPoint.x < 0 || localPoint.x > this.mWidth || localPoint.y < 0 || localPoint.y > this.mHeight)
         {
            return null;
         }
         var target:DisplayObject = super.hitTest(localPoint,forTouch);
         if(target == null)
         {
            target = this;
         }
         return target;
      }
      
      override public function set width(value:Number) : void
      {
         throw new IllegalOperationError("Cannot set width of stage");
      }
      
      override public function set height(value:Number) : void
      {
         throw new IllegalOperationError("Cannot set height of stage");
      }
      
      override public function set x(value:Number) : void
      {
         throw new IllegalOperationError("Cannot set x-coordinate of stage");
      }
      
      override public function set y(value:Number) : void
      {
         throw new IllegalOperationError("Cannot set y-coordinate of stage");
      }
      
      override public function set scaleX(value:Number) : void
      {
         throw new IllegalOperationError("Cannot scale stage");
      }
      
      override public function set scaleY(value:Number) : void
      {
         throw new IllegalOperationError("Cannot scale stage");
      }
      
      override public function set rotation(value:Number) : void
      {
         throw new IllegalOperationError("Cannot rotate stage");
      }
      
      override public function get color() : uint
      {
         return this.mColor;
      }
      
      override public function set color(value:uint) : void
      {
         this.mColor = value;
      }
      
      public function get stageWidth() : int
      {
         return this.mWidth;
      }
      
      public function set stageWidth(value:int) : void
      {
         this.mWidth = value;
      }
      
      public function get stageHeight() : int
      {
         return this.mHeight;
      }
      
      public function set stageHeight(value:int) : void
      {
         this.mHeight = value;
      }
      
      public function get projectionCanvasWidth() : Number
      {
         return this.mProjectionCanvasWidth;
      }
      
      public function set projectionCanvasWidth(width:Number) : void
      {
         this.mProjectionCanvasWidth = width;
      }
      
      public function get projectionCanvasHeight() : Number
      {
         return this.mProjectionCanvasHeight;
      }
      
      public function set projectionCanvasHeight(height:Number) : void
      {
         this.mProjectionCanvasHeight = height;
      }
   }
}
