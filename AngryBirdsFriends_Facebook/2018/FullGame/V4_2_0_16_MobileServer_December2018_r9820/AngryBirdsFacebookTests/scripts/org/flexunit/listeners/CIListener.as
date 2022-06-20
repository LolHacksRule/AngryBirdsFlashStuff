package org.flexunit.listeners
{
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.XMLSocket;
   import flash.utils.Timer;
   import org.flexunit.listeners.closer.ApplicationCloser;
   import org.flexunit.listeners.closer.StandAloneFlashPlayerCloser;
   import org.flexunit.reporting.FailureFormatter;
   import org.flexunit.runner.Descriptor;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.Result;
   import org.flexunit.runner.notification.Failure;
   import org.flexunit.runner.notification.IAsyncStartupRunListener;
   import org.flexunit.runner.notification.ITemporalRunListener;
   import org.flexunit.runner.notification.async.AsyncListenerWatcher;
   
   public class CIListener extends EventDispatcher implements IAsyncStartupRunListener, ITemporalRunListener
   {
      
      protected static const DEFAULT_PORT:uint = 1024;
      
      protected static const DEFAULT_SERVER:String = "127.0.0.1";
      
      private static const SUCCESS:String = "success";
      
      private static const ERROR:String = "error";
      
      private static const FAILURE:String = "failure";
      
      private static const IGNORE:String = "ignore";
      
      private static const END_OF_TEST_ACK:String = "<endOfTestRunAck/>";
      
      private static const END_OF_TEST_RUN:String = "<endOfTestRun/>";
      
      private static const START_OF_TEST_RUN_ACK:String = "<startOfTestRunAck/>";
       
      
      private var successes:Array;
      
      private var ignores:Array;
      
      private var _ready:Boolean = false;
      
      private var socket:XMLSocket;
      
      public var port:uint;
      
      public var server:String;
      
      public var closer:ApplicationCloser;
      
      private var lastFailedTest:IDescription;
      
      private var timeOut:Timer;
      
      private var lastTestTime:Number = 0;
      
      public function CIListener(port:uint = 1024, server:String = "127.0.0.1")
      {
         this.successes = new Array();
         this.ignores = new Array();
         super();
         this.port = port;
         this.server = server;
         this.closer = new StandAloneFlashPlayerCloser();
         this.socket = new XMLSocket();
         this.socket.addEventListener(DataEvent.DATA,this.dataHandler);
         this.socket.addEventListener(Event.CONNECT,this.handleConnect);
         this.socket.addEventListener(IOErrorEvent.IO_ERROR,this.errorHandler);
         this.socket.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.errorHandler);
         this.socket.addEventListener(Event.CLOSE,this.errorHandler);
         this.timeOut = new Timer(2000,1);
         this.timeOut.addEventListener(TimerEvent.TIMER_COMPLETE,this.declareBroken,false,0,true);
         this.timeOut.start();
         try
         {
            this.socket.connect(server,port);
            this.timeOut.stop();
         }
         catch(e:Error)
         {
            trace(e.message);
         }
      }
      
      private function declareBroken(event:TimerEvent) : void
      {
         this.errorHandler(new Event("broken"));
      }
      
      [Bindable(event="listenerReady")]
      public function get ready() : Boolean
      {
         return this._ready;
      }
      
      private function setStatusReady() : void
      {
         this._ready = true;
         dispatchEvent(new Event(AsyncListenerWatcher.LISTENER_READY));
      }
      
      private function getTestCount(description:IDescription) : int
      {
         return description.testCount;
      }
      
      public function testTimed(description:IDescription, runTime:Number) : void
      {
         if(!runTime || isNaN(runTime))
         {
            this.lastTestTime = 0;
         }
         else
         {
            this.lastTestTime = runTime;
         }
      }
      
      public function testRunStarted(description:IDescription) : void
      {
      }
      
      public function testRunFinished(result:Result) : void
      {
         this.sendResults(END_OF_TEST_RUN);
      }
      
      public function testStarted(description:IDescription) : void
      {
      }
      
      public function testFinished(description:IDescription) : void
      {
         var desc:Descriptor = null;
         if(!this.lastFailedTest || description.displayName != this.lastFailedTest.displayName)
         {
            desc = this.getDescriptorFromDescription(description);
            this.sendResults("<testcase classname=\"" + desc.suite + "\" name=\"" + desc.method + "\" time=\"" + this.lastTestTime + "\" status=\"" + SUCCESS + "\" />");
         }
      }
      
      public function testAssumptionFailure(failure:Failure) : void
      {
      }
      
      public function testIgnored(description:IDescription) : void
      {
         var descriptor:Descriptor = this.getDescriptorFromDescription(description);
         var xml:String = "<testcase classname=\"" + descriptor.suite + "\" name=\"" + descriptor.method + "\" time=\"" + this.lastTestTime + "\" status=\"" + IGNORE + "\">" + "<skipped />" + "</testcase>";
         this.sendResults(xml);
      }
      
      public function testFailure(failure:Failure) : void
      {
         this.lastFailedTest = failure.description;
         var descriptor:Descriptor = this.getDescriptorFromDescription(failure.description);
         var type:String = failure.description.displayName;
         var message:String = failure.message;
         var stackTrace:String = failure.stackTrace;
         var methodName:String = descriptor.method;
         if(stackTrace != null)
         {
            stackTrace = stackTrace.toString();
         }
         stackTrace = FailureFormatter.xmlEscapeMessage(stackTrace);
         message = FailureFormatter.xmlEscapeMessage(message);
         var xml:String = null;
         if(FailureFormatter.isError(failure.exception))
         {
            xml = "<testcase classname=\"" + descriptor.suite + "\" name=\"" + descriptor.method + "\" time=\"" + this.lastTestTime + "\" status=\"" + ERROR + "\">" + "<error message=\"" + message + "\" type=\"" + type + "\" >" + "<![CDATA[" + stackTrace + "]]>" + "</error>" + "</testcase>";
         }
         else
         {
            xml = "<testcase classname=\"" + descriptor.suite + "\" name=\"" + descriptor.method + "\" time=\"" + this.lastTestTime + "\" status=\"" + FAILURE + "\">" + "<failure message=\"" + message + "\" type=\"" + type + "\" >" + "<![CDATA[" + stackTrace + "]]>" + "</failure>" + "</testcase>";
         }
         this.sendResults(xml);
      }
      
      private function getDescriptorFromDescription(description:IDescription) : Descriptor
      {
         var classMethod:String = null;
         var descriptor:Descriptor = new Descriptor();
         var descriptionArray:Array = description.displayName.split("::");
         if(descriptionArray.length > 1)
         {
            descriptor.path = descriptionArray[0];
            classMethod = descriptionArray[1];
         }
         else
         {
            classMethod = descriptionArray[0];
         }
         var classMethodArray:Array = classMethod.split(".");
         descriptor.suite = descriptor.path == "" ? classMethodArray[0] : descriptor.path + "::" + classMethodArray[0];
         descriptor.method = classMethodArray[1];
         return descriptor;
      }
      
      protected function sendResults(msg:String) : void
      {
         if(this.socket.connected)
         {
            this.socket.send(msg);
         }
         trace(msg);
      }
      
      private function handleConnect(event:Event) : void
      {
      }
      
      private function errorHandler(event:Event) : void
      {
         if(!this.ready)
         {
            dispatchEvent(new Event(AsyncListenerWatcher.LISTENER_FAILED));
         }
         else
         {
            this.exit();
         }
      }
      
      private function dataHandler(event:DataEvent) : void
      {
         var data:String = event.data;
         if(data == START_OF_TEST_RUN_ACK)
         {
            this.setStatusReady();
         }
         else if(data == END_OF_TEST_ACK)
         {
            this.socket.close();
            this.exit();
         }
      }
      
      protected function exit() : void
      {
         this.closer.close();
      }
   }
}
