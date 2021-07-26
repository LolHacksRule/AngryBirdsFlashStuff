package org.flexunit.runners
{
   import flex.lang.reflect.Klass;
   import flexunit.framework.TestSuite;
   import org.flexunit.internals.dependency.IExternalRunnerDependencyWatcher;
   import org.flexunit.internals.runners.InitializationError;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.external.IExternalDependencyRunner;
   import org.flexunit.runner.manipulation.IFilterable;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.runners.model.IRunnerBuilder;
   import org.flexunit.token.AsyncTestToken;
   
   public class Suite extends ParentRunner implements IFilterable, IExternalDependencyRunner
   {
       
      
      private var _runners:Array;
      
      private var _dependencyWatcher:IExternalRunnerDependencyWatcher;
      
      private var descriptionIsCached:Boolean = false;
      
      public function Suite(arg1:*, arg2:*)
      {
         var builder:IRunnerBuilder = null;
         var testClass:Class = null;
         var classArray:Array = null;
         var runnners:Array = null;
         var error:Boolean = false;
         if(arg1 is IRunnerBuilder && arg2 is Array)
         {
            builder = arg1 as IRunnerBuilder;
            classArray = arg2 as Array;
         }
         else if(arg1 is Class && arg2 is IRunnerBuilder)
         {
            testClass = arg1 as Class;
            builder = arg2 as IRunnerBuilder;
            classArray = getSuiteClasses(testClass);
         }
         else
         {
            error = true;
         }
         super(testClass);
         if(!error && classArray.length > 0)
         {
            this._runners = builder.runners(testClass,classArray);
            return;
         }
         if(!error && classArray.length == 0)
         {
            throw new InitializationError("Empty test Suite!");
         }
         throw new Error("Incorrectly formed arguments passed to suite class");
      }
      
      private static function getSuiteClasses(suite:Class) : Array
      {
         var classRef:Class = null;
         var klassInfo:Klass = new Klass(suite);
         var classArray:Array = new Array();
         var fields:Array = klassInfo.fields;
         if(klassInfo.descendsFrom(TestSuite))
         {
            throw new TypeError("This suite both extends from the FlexUnit 1 TestSuite class and has the FlexUnit 4 metada. Please do not extend from TestSuite.");
         }
         for(var i:int = 0; i < fields.length; i++)
         {
            if(!fields[i].isStatic)
            {
               try
               {
                  classRef = fields[i].type;
                  classArray.push(classRef);
               }
               catch(e:Error)
               {
               }
            }
         }
         return classArray;
      }
      
      override public function pleaseStop() : void
      {
         var i:int = 0;
         super.pleaseStop();
         if(this._runners)
         {
            for(i = 0; i < this._runners.length; i++)
            {
               (this._runners[i] as IRunner).pleaseStop();
            }
         }
      }
      
      override public function get description() : IDescription
      {
         var desc:IDescription = null;
         if(this.descriptionIsCached)
         {
            desc = super.description;
         }
         else if(this._dependencyWatcher && this._dependencyWatcher.allDependenciesResolved)
         {
            this.descriptionIsCached = true;
            desc = super.description;
         }
         else
         {
            desc = generateDescription();
         }
         return desc;
      }
      
      override protected function get children() : Array
      {
         return this._runners;
      }
      
      override protected function describeChild(child:*) : IDescription
      {
         return IRunner(child).description;
      }
      
      override protected function runChild(child:*, notifier:IRunNotifier, childRunnerToken:AsyncTestToken) : void
      {
         if(stopRequested)
         {
            childRunnerToken.sendResult(new StoppedByUserException());
            return;
         }
         IRunner(child).run(notifier,childRunnerToken);
      }
      
      public function set dependencyWatcher(value:IExternalRunnerDependencyWatcher) : void
      {
         var runner:IRunner = null;
         var i:int = 0;
         this._dependencyWatcher = value;
         if(this.children)
         {
            for(i = 0; i < this.children.length; i++)
            {
               runner = this.children[i] as IRunner;
               if(runner is IExternalDependencyRunner)
               {
                  (runner as IExternalDependencyRunner).dependencyWatcher = value;
               }
            }
         }
      }
      
      public function set externalDependencyError(value:String) : void
      {
      }
   }
}
