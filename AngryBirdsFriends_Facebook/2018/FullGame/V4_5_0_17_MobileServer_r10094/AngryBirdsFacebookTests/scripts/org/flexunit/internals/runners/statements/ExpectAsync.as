package org.flexunit.internals.runners.statements
{
   import flash.events.Event;
   import flash.net.Responder;
   import flash.utils.Dictionary;
   import mx.core.mx_internal;
   import org.flexunit.AssertionError;
   import org.flexunit.async.AsyncHandler;
   import org.flexunit.async.AsyncLocator;
   import org.flexunit.async.AsyncNativeTestResponder;
   import org.flexunit.async.ITestResponder;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.events.AsyncEvent;
   import org.flexunit.events.AsyncResponseEvent;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.runners.model.TestClass;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   import org.fluint.sequence.SequenceRunner;
   
   use namespace mx_internal;
   
   public class ExpectAsync extends AsyncStatementBase implements IAsyncStatement, IAsyncHandlingStatement
   {
       
      
      private var objectUnderTest:Object;
      
      private var statement:IAsyncStatement;
      
      private var returnMessageSent:Boolean = false;
      
      private var testComplete:Boolean;
      
      private var pendingAsyncCalls:Array;
      
      private var asyncFailureConditions:Dictionary;
      
      private var methodBodyExecuting:Boolean = false;
      
      public function ExpectAsync(objectUnderTest:Object, statement:IAsyncStatement)
      {
         super();
         this.objectUnderTest = objectUnderTest;
         this.statement = statement;
         myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         myToken.addNotificationMethod(this.handleNextExecuteComplete);
         this.pendingAsyncCalls = new Array();
         this.asyncFailureConditions = new Dictionary(true);
      }
      
      public static function hasAsync(method:FrameworkMethod, type:String = "Test") : Boolean
      {
         var async:String = method.getSpecificMetaDataArgValue(type,AnnotationArgumentConstants.ASYNC);
         return async == "true";
      }
      
      public function get bodyExecuting() : Boolean
      {
         return this.methodBodyExecuting;
      }
      
      public function get hasPendingAsync() : Boolean
      {
         return this.pendingAsyncCalls.length > 0;
      }
      
      protected function protect(method:Function, ... rest) : void
      {
         try
         {
            if(rest && rest.length > 0)
            {
               method.apply(this,rest);
            }
            else
            {
               method();
            }
            if(this.hasPendingAsync)
            {
               this.startAsyncTimers();
            }
         }
         catch(error:Error)
         {
            sendComplete(error);
         }
      }
      
      private function removeAsyncEventListeners(asyncHandler:AsyncHandler) : void
      {
         asyncHandler.removeEventListener(AsyncHandler.EVENT_FIRED,this.handleAsyncEventFired,false);
         asyncHandler.removeEventListener(AsyncHandler.TIMER_EXPIRED,this.handleAsyncTimeOut,false);
      }
      
      private function removeAsyncErrorEventListeners(asyncHandler:AsyncHandler) : void
      {
         asyncHandler.removeEventListener(AsyncHandler.EVENT_FIRED,this.handleAsyncErrorFired,false);
         asyncHandler.removeEventListener(AsyncHandler.TIMER_EXPIRED,this.handleAsyncTimeOut,false);
      }
      
      public function asyncErrorConditionHandler(eventHandler:Function) : Function
      {
         if(this.testComplete)
         {
            this.sendComplete(new Error("Test Completed, but additional async event added"));
         }
         var asyncHandler:AsyncHandler = new AsyncHandler(eventHandler);
         asyncHandler.addEventListener(AsyncHandler.EVENT_FIRED,this.handleAsyncErrorFired,false,0,true);
         this.asyncFailureConditions[asyncHandler] = true;
         return asyncHandler.handleEvent;
      }
      
      public function asyncHandler(eventHandler:Function, timeout:int, passThroughData:Object = null, timeoutHandler:Function = null) : Function
      {
         if(this.testComplete)
         {
            this.sendComplete(new Error("Test Completed, but additional async event added"));
         }
         var asyncHandler:AsyncHandler = new AsyncHandler(eventHandler,timeout,passThroughData,timeoutHandler);
         asyncHandler.addEventListener(AsyncHandler.EVENT_FIRED,this.handleAsyncEventFired,false,0,true);
         asyncHandler.addEventListener(AsyncHandler.TIMER_EXPIRED,this.handleAsyncTimeOut,false,0,true);
         this.pendingAsyncCalls.push(asyncHandler);
         return asyncHandler.handleEvent;
      }
      
      private function removeAllAsyncEventListeners() : void
      {
         var handler:* = undefined;
         for(var i:int = 0; i < this.pendingAsyncCalls.length; i++)
         {
            this.removeAsyncEventListeners(this.pendingAsyncCalls[i] as AsyncHandler);
         }
         this.pendingAsyncCalls = new Array();
         for(handler in this.asyncFailureConditions)
         {
            this.removeAsyncErrorEventListeners(handler as AsyncHandler);
         }
         this.asyncFailureConditions = new Dictionary(true);
      }
      
      private function handleAsyncTimeOut(event:Event) : void
      {
         var asyncHandler:AsyncHandler = event.target as AsyncHandler;
         var failure:Boolean = false;
         this.removeAsyncEventListeners(asyncHandler);
         if(asyncHandler.timeoutHandler != null)
         {
            this.protect(asyncHandler.timeoutHandler,asyncHandler.passThroughData);
         }
         else
         {
            failure = true;
            this.sendComplete(new AssertionError("Timeout Occurred before expected event"));
         }
         this.removeAllAsyncEventListeners();
         this.sendComplete();
      }
      
      protected function handleAsyncTestResponderEvent(event:AsyncResponseEvent, passThroughData:Object = null) : void
      {
         var originalResponder:* = event.originalResponder;
         var isTestResponder:Boolean = false;
         if(originalResponder is ITestResponder)
         {
            isTestResponder = true;
         }
         if(event.status == "result")
         {
            if(isTestResponder)
            {
               originalResponder.result(event.data,passThroughData);
            }
            else
            {
               originalResponder.result(event.data);
            }
         }
         else if(isTestResponder)
         {
            originalResponder.fault(event.data,passThroughData);
         }
         else
         {
            originalResponder.fault(event.data);
         }
      }
      
      private function handleAsyncErrorFired(event:AsyncEvent) : void
      {
         var message:String = "Failing due to Async Event ";
         if(event && event.originalEvent)
         {
            message += String(event.originalEvent);
         }
         this.sendComplete(new AssertionError(message));
      }
      
      private function handleAsyncEventFired(event:AsyncEvent) : void
      {
         var firstPendingAsync:AsyncHandler = null;
         var asyncHandler:AsyncHandler = event.target as AsyncHandler;
         var failure:Boolean = false;
         this.removeAsyncEventListeners(asyncHandler);
         if(this.hasPendingAsync)
         {
            firstPendingAsync = this.pendingAsyncCalls.shift() as AsyncHandler;
            if(firstPendingAsync === asyncHandler)
            {
               if(asyncHandler.eventHandler != null)
               {
                  this.protect(asyncHandler.eventHandler,event.originalEvent,firstPendingAsync.passThroughData);
               }
            }
            else
            {
               failure = true;
               this.sendComplete(new AssertionError("Asynchronous Event Received out of Order"));
            }
         }
         else
         {
            failure = true;
            this.sendComplete(new AssertionError("Unexpected Asynchronous Event Occurred"));
         }
         if(!this.hasPendingAsync && !this.methodBodyExecuting && !failure)
         {
            this.sendComplete();
         }
      }
      
      public function handleNextSequence(event:Event, sequenceRunner:SequenceRunner) : void
      {
         if(event && event.target)
         {
            event.currentTarget.removeEventListener(event.type,this.handleNextSequence);
         }
         sequenceRunner.continueSequence(event);
         this.startAsyncTimers();
      }
      
      public function asyncNativeResponder(resultHandler:Function, faultHandler:Function, timeout:int, passThroughData:Object = null, timeoutHandler:Function = null) : Responder
      {
         var asyncResponder:AsyncNativeTestResponder = null;
         asyncResponder = new AsyncNativeTestResponder(resultHandler,faultHandler);
         var asyncHandler:AsyncHandler = new AsyncHandler(this.handleAsyncNativeTestResponderEvent,timeout,passThroughData,timeoutHandler);
         asyncHandler.addEventListener(AsyncHandler.EVENT_FIRED,this.handleAsyncEventFired,false,0,true);
         asyncHandler.addEventListener(AsyncHandler.TIMER_EXPIRED,this.handleAsyncTimeOut,false,0,true);
         this.pendingAsyncCalls.push(asyncHandler);
         asyncResponder.addEventListener(AsyncResponseEvent.RESPONDER_FIRED,asyncHandler.handleEvent,false,0,true);
         return asyncResponder;
      }
      
      protected function handleAsyncNativeTestResponderEvent(event:AsyncResponseEvent, passThroughData:Object = null) : void
      {
         var methodHandler:Function = event.methodHandler;
         methodHandler.call(this,event.data);
      }
      
      private function startAsyncTimers() : void
      {
         for(var i:int = 0; i < this.pendingAsyncCalls.length; i++)
         {
            (this.pendingAsyncCalls[i] as AsyncHandler).startTimer();
         }
      }
      
      override protected function sendComplete(error:Error = null) : void
      {
         if(!this.testComplete)
         {
            this.methodBodyExecuting = false;
            this.testComplete = true;
            AsyncLocator.cleanUpCallableForTest(this.getObjectForRegistration(this.objectUnderTest));
            this.removeAllAsyncEventListeners();
            parentToken.sendResult(error);
         }
      }
      
      private function getObjectForRegistration(obj:Object) : Object
      {
         var registrationObj:Object = null;
         if(obj is TestClass)
         {
            registrationObj = (obj as TestClass).asClass;
         }
         else
         {
            registrationObj = obj;
         }
         return registrationObj;
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         AsyncLocator.registerStatementForTest(this,this.getObjectForRegistration(this.objectUnderTest));
         this.methodBodyExecuting = true;
         this.statement.evaluate(myToken);
         this.methodBodyExecuting = false;
      }
      
      public function pendUntilComplete(event:Event, passThroughData:Object = null) : void
      {
      }
      
      public function failOnComplete(event:Event, passThroughData:Object) : void
      {
         var message:String = "Unexpected event received ";
         if(event)
         {
            message += String(event);
         }
         this.sendComplete(new AssertionError(message));
      }
      
      public function handleNextExecuteComplete(result:ChildResult) : void
      {
         if(this.pendingAsyncCalls.length == 0)
         {
            this.sendComplete(result.error);
         }
         else if(result && result.error)
         {
            this.sendComplete(result.error);
         }
         else
         {
            this.startAsyncTimers();
         }
      }
   }
}
