package org.flexunit.runner
{
   import flash.display.DisplayObjectContainer;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import org.flexunit.events.UnknownError;
   import org.flexunit.experimental.theories.Theories;
   import org.flexunit.internals.dependency.ExternalRunnerDependencyWatcher;
   import org.flexunit.runner.external.IExternalDependencyRunner;
   import org.flexunit.runner.notification.Failure;
   import org.flexunit.runner.notification.IAsyncStartupRunListener;
   import org.flexunit.runner.notification.IRunListener;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.RunListener;
   import org.flexunit.runner.notification.RunNotifier;
   import org.flexunit.runner.notification.async.AsyncListenerWatcher;
   import org.flexunit.runners.Parameterized;
   import org.flexunit.token.AsyncCoreStartupToken;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   import org.fluint.uiImpersonation.VisualTestEnvironmentBuilder;
   
   public class FlexUnitCore extends EventDispatcher
   {
      
      private static const RUN_LISTENER:String = "runListener";
      
      public static const TESTS_COMPLETE:String = "testsComplete";
      
      public static const TESTS_STOPPED:String = "testsStopped";
      
      public static const RUNNER_START:String = "runnerStart";
      
      public static const RUNNER_COMPLETE:String = "runnerComplete";
       
      
      private var notifier:IRunNotifier;
      
      private var runnerExternalDependencyWatcher:ExternalRunnerDependencyWatcher;
      
      private var asyncListenerWatcher:AsyncListenerWatcher;
      
      private var _visualDisplayRoot:DisplayObjectContainer;
      
      private var topLevelRunner:IRunner;
      
      private var runListener:RunListener;
      
      private var theory:Theories;
      
      private var params:Parameterized;
      
      public function FlexUnitCore()
      {
         super();
         this.notifier = new RunNotifier();
         this.runnerExternalDependencyWatcher = new ExternalRunnerDependencyWatcher();
         this.asyncListenerWatcher = new AsyncListenerWatcher(this.notifier,null);
      }
      
      public static function get version() : String
      {
         return "4.1.0";
      }
      
      public function get visualDisplayRoot() : DisplayObjectContainer
      {
         return this._visualDisplayRoot;
      }
      
      public function set visualDisplayRoot(value:DisplayObjectContainer) : void
      {
         this._visualDisplayRoot = value;
         VisualTestEnvironmentBuilder.getInstance(value);
      }
      
      public function pleaseStop() : void
      {
         if(this.topLevelRunner)
         {
            this.topLevelRunner.pleaseStop();
         }
      }
      
      private function dealWithArgArray(ar:Array, foundClasses:Array, missingClasses:Array) : void
      {
         var i:int = 0;
         var className:String = null;
         var definition:* = undefined;
         var desc:IDescription = null;
         var failure:Failure = null;
         for(i = 0; i < ar.length; i++)
         {
            try
            {
               if(ar[i] is String)
               {
                  foundClasses.push(getDefinitionByName(ar[i]));
               }
               else if(ar[i] is Array)
               {
                  this.dealWithArgArray(ar[i] as Array,foundClasses,missingClasses);
               }
               else if(ar[i] is IRequest)
               {
                  foundClasses.push(ar[i]);
               }
               else if(ar[i] is Class)
               {
                  foundClasses.push(ar[i]);
               }
               else if(ar[i] is Object)
               {
                  className = getQualifiedClassName(ar[i]);
                  definition = getDefinitionByName(className);
                  foundClasses.push(definition);
               }
            }
            catch(error:Error)
            {
               desc = Description.createSuiteDescription(ar[i]);
               failure = new Failure(desc,error);
               missingClasses.push(failure);
               continue;
            }
         }
      }
      
      public function run(... args) : void
      {
         var foundClasses:Array = new Array();
         var missingClasses:Array = new Array();
         this.dealWithArgArray(args,foundClasses,missingClasses);
         this.runClasses.apply(this,foundClasses);
         var result:Result = new Result();
         for(var i:int = 0; i < missingClasses.length; i++)
         {
            result.failures.push(missingClasses[i]);
         }
      }
      
      public function runClasses(... args) : void
      {
         if(args && args.length == 1 && args[0] is IRequest)
         {
            this.runRequest(args[0]);
         }
         else
         {
            this.runRequest(Request.classes.apply(this,args));
         }
      }
      
      public function runRequest(request:Request) : void
      {
         this.runRunner(request.iRunner);
      }
      
      public function runRunner(runner:IRunner) : void
      {
         var tokenListeners:AsyncCoreStartupToken = null;
         var tokenRunners:AsyncCoreStartupToken = null;
         this.topLevelRunner = runner;
         if(runner is IExternalDependencyRunner)
         {
            (runner as IExternalDependencyRunner).dependencyWatcher = this.runnerExternalDependencyWatcher;
         }
         if(this.runnerExternalDependencyWatcher.allDependenciesResolved && this.asyncListenerWatcher.allListenersReady)
         {
            this.beginRunnerExecution(runner);
         }
         else
         {
            if(!this.asyncListenerWatcher.allListenersReady)
            {
               tokenListeners = this.asyncListenerWatcher.startUpToken;
               tokenListeners.runner = runner;
               tokenListeners.addNotificationMethod(this.verifyRunnerCanBegin);
            }
            if(!this.runnerExternalDependencyWatcher.allDependenciesResolved)
            {
               tokenRunners = this.runnerExternalDependencyWatcher.token;
               tokenRunners.runner = runner;
               tokenRunners.addNotificationMethod(this.verifyRunnerCanBegin);
            }
         }
      }
      
      protected function verifyRunnerCanBegin(runner:IRunner) : void
      {
         if(this.runnerExternalDependencyWatcher.allDependenciesResolved && this.asyncListenerWatcher.allListenersReady)
         {
            this.beginRunnerExecution(runner);
         }
      }
      
      protected function beginRunnerExecution(runner:IRunner) : void
      {
         var result:Result = new Result();
         this.runListener = result.createListener();
         this.addFirstListener(this.runListener);
         var token:AsyncTestToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         token.addNotificationMethod(this.handleRunnerComplete);
         token[RUN_LISTENER] = this.runListener;
         dispatchEvent(new Event(RUNNER_START));
         try
         {
            this.notifier.fireTestRunStarted(runner.description);
            runner.run(this.notifier,token);
         }
         catch(error:Error)
         {
            notifier.fireTestAssumptionFailed(new Failure(runner.description,error));
            finishRun(runListener);
         }
      }
      
      private function handleRunnerComplete(result:ChildResult) : void
      {
         var tokenRunListener:RunListener = result.token[RUN_LISTENER];
         this.topLevelRunner = null;
         this.runListener = null;
         this.finishRun(tokenRunListener);
      }
      
      private function finishRun(runListener:RunListener) : void
      {
         this.notifier.fireTestRunFinished(runListener.result);
         this.removeListener(runListener);
         dispatchEvent(new Event(TESTS_COMPLETE));
      }
      
      public function addUncaughtErrorListener(loaderInfo:LoaderInfo, priority:int = 1) : void
      {
         if(loaderInfo.hasOwnProperty("uncaughtErrorEvents"))
         {
            IEventDispatcher(loaderInfo["uncaughtErrorEvents"]).addEventListener("uncaughtError",this.uncaughtErrorHandler,false,priority);
         }
      }
      
      private function uncaughtErrorHandler(event:Event) : void
      {
         event.preventDefault();
         var unknownError:UnknownError = new UnknownError(event);
         var description:IDescription = Description.createTestDescription(UnknownError,"Uncaught Top Level Exception");
         var failure:Failure = new Failure(description,unknownError);
         this.notifier.fireTestFailure(failure);
         this.notifier.fireTestRunFinished(this.runListener.result);
         this.notifier.removeAllListeners();
         this.pleaseStop();
      }
      
      public function addListener(listener:IRunListener) : void
      {
         this.notifier.addListener(listener);
         if(listener is IAsyncStartupRunListener)
         {
            this.asyncListenerWatcher.watchListener(listener as IAsyncStartupRunListener);
         }
      }
      
      private function addFirstListener(listener:IRunListener) : void
      {
         this.notifier.addFirstListener(listener);
         if(listener is IAsyncStartupRunListener)
         {
            this.asyncListenerWatcher.watchListener(listener as IAsyncStartupRunListener);
         }
      }
      
      public function removeListener(listener:IRunListener) : void
      {
         this.notifier.removeListener(listener);
         if(listener is IAsyncStartupRunListener)
         {
            this.asyncListenerWatcher.unwatchListener(listener as IAsyncStartupRunListener);
         }
      }
   }
}
