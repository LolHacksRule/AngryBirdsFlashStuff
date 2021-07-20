package starling.events
{
   import starling.utils.formatString;
   import flash.utils.getQualifiedClassName;
   
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
      
      public static const REMOVE_FROM_JUGGLER:String = "removeFromJuggler";
       
      
      private var mTarget:EventDispatcher;
      
      private var mCurrentTarget:EventDispatcher;
      
      private var mType:String;
      
      private var mBubbles:Boolean;
      
      private var mStopsPropagation:Boolean;
      
      private var mStopsImmediatePropagation:Boolean;
      
      public function Event(param1:String, param2:Boolean = false)
      {
         super();
         this.mType = param1;
         this.mBubbles = param2;
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
      
      function setTarget(param1:EventDispatcher) : void
      {
         this.mTarget = param1;
      }
      
      function setCurrentTarget(param1:EventDispatcher) : void
      {
         this.mCurrentTarget = param1;
      }
      
      function get stopsPropagation() : Boolean
      {
         return this.mStopsPropagation;
      }
      
      function get stopsImmediatePropagation() : Boolean
      {
         return this.mStopsImmediatePropagation;
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
   }
}
