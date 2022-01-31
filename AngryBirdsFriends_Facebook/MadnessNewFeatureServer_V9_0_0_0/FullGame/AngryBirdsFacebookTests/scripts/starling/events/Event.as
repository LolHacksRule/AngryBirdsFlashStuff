package starling.events
{
   import flash.utils.getQualifiedClassName;
   import starling.utils.formatString;
   
   public class Event
   {
      
      public static const ADDED:String = "added";
      
      public static const ADDED_TO_STAGE:String = "addedToStage";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      public static const REMOVED:String = "removed";
      
      public static const REMOVED_FROM_STAGE:String = "removedFromStage";
      
      public static const TRIGGERED:String = "triggered";
      
      public static const FLATTEN:String = "flatten";
      
      public static const RESIZE:String = "resize";
      
      public static const COMPLETE:String = "complete";
      
      public static const CONTEXT3D_CREATE:String = "context3DCreate";
      
      public static const ROOT_CREATED:String = "rootCreated";
      
      public static const REMOVE_FROM_JUGGLER:String = "removeFromJuggler";
      
      public static const CHANGE:String = "change";
      
      public static const CANCEL:String = "cancel";
      
      public static const SCROLL:String = "scroll";
      
      public static const OPEN:String = "open";
      
      public static const CLOSE:String = "close";
      
      public static const SELECT:String = "select";
      
      private static var sEventPool:Vector.<Event> = new Vector.<Event>(0);
       
      
      private var mTarget:EventDispatcher;
      
      private var mCurrentTarget:EventDispatcher;
      
      private var mType:String;
      
      private var mBubbles:Boolean;
      
      private var mStopsPropagation:Boolean;
      
      private var mStopsImmediatePropagation:Boolean;
      
      private var mData:Object;
      
      public function Event(type:String, bubbles:Boolean = false, data:Object = null)
      {
         super();
         this.mType = type;
         this.mBubbles = bubbles;
         this.mData = data;
      }
      
      static function fromPool(type:String, bubbles:Boolean = false, data:Object = null) : Event
      {
         if(sEventPool.length)
         {
            return sEventPool.pop().reset(type,bubbles,data);
         }
         return new Event(type,bubbles,data);
      }
      
      static function toPool(event:Event) : void
      {
         event.mData = event.mTarget = event.mCurrentTarget = null;
         sEventPool.push(event);
      }
      
      public function stopPropagation() : void
      {
         this.mStopsPropagation = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.mStopsImmediatePropagation = true;
         this.mStopsPropagation = true;
      }
      
      public function toString() : String
      {
         return formatString("[{0} type=\"{1}\" bubbles={2}]",getQualifiedClassName(this).split("::").pop(),this.mType,this.mBubbles);
      }
      
      public function get bubbles() : Boolean
      {
         return this.mBubbles;
      }
      
      public function get target() : EventDispatcher
      {
         return this.mTarget;
      }
      
      public function get currentTarget() : EventDispatcher
      {
         return this.mCurrentTarget;
      }
      
      public function get type() : String
      {
         return this.mType;
      }
      
      public function get data() : Object
      {
         return this.mData;
      }
      
      function setTarget(value:EventDispatcher) : void
      {
         this.mTarget = value;
      }
      
      function setCurrentTarget(value:EventDispatcher) : void
      {
         this.mCurrentTarget = value;
      }
      
      function setData(value:Object) : void
      {
         this.mData = value;
      }
      
      function get stopsPropagation() : Boolean
      {
         return this.mStopsPropagation;
      }
      
      function get stopsImmediatePropagation() : Boolean
      {
         return this.mStopsImmediatePropagation;
      }
      
      function reset(type:String, bubbles:Boolean = false, data:Object = null) : Event
      {
         this.mType = type;
         this.mBubbles = bubbles;
         this.mData = data;
         this.mTarget = this.mCurrentTarget = null;
         this.mStopsPropagation = this.mStopsImmediatePropagation = false;
         return this;
      }
   }
}
