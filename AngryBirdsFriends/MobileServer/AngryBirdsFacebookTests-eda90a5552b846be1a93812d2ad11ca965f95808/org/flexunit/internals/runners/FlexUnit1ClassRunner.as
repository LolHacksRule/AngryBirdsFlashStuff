package org.flexunit.internals.runners
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.Method;
   import flexunit.framework.Test;
   import flexunit.framework.TestCase;
   import flexunit.framework.TestListener;
   import flexunit.framework.TestResult;
   import flexunit.framework.TestSuite;
   import org.flexunit.runner.Description;
   import org.flexunit.runner.IDescribable;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.manipulation.IFilter;
   import org.flexunit.runner.manipulation.IFilterable;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.token.IAsyncTestToken;
   import org.flexunit.utils.ClassNameUtil;
   
   public class FlexUnit1ClassRunner implements IRunner, IFilterable
   {
       
      
      private var test:Test;
      
      private var klassOrTest;
      
      private var totalTestCount:int = 0;
      
      private var numTestsRun:int = 0;
      
      private var filterRef:IFilter = null;
      
      private var testCompletedToken:AsyncTestToken;
      
      protected var stopRequested:Boolean = false;
      
      private var cachedDescription:IDescription;
      
      public function FlexUnit1ClassRunner(klassOrTest:*)
      {
         super();
         this.klassOrTest = klassOrTest;
         if(klassOrTest is Test)
         {
            this.test = klassOrTest;
         }
         else
         {
            this.test = this.createTestSuiteWithFilter(this.filterRef);
         }
         if(klassOrTest is TestSuite)
         {
            if(TestSuite(klassOrTest).testArrayList.isEmpty())
            {
               throw new InitializationError("Empty test Suite!");
            }
         }
      }
      
      public static function getClassFromTest(test:Test) : Class
      {
         var name:String = getQualifiedClassName(test);
         return getDefinitionByName(name) as Class;
      }
      
      public static function createAdaptingListener(notifier:IRunNotifier, token:AsyncTestToken) : TestListener
      {
         return new OldTestClassAdaptingListener(notifier,token);
      }
      
      protected function describeChild(child:*) : IDescription
      {
         var method:FrameworkMethod = FrameworkMethod(child);
         return Description.createTestDescription(this.klassOrTest,method.name,method.metadata);
      }
      
      private function shouldRun(item:*) : Boolean
      {
         return this.filterRef == null || this.filterRef.shouldRun(this.describeChild(item));
      }
      
      private function getMethodListFromFilter(klassInfo:Klass, filter:IFilter) : Array
      {
         var method:Method = null;
         var frameworkMethod:FrameworkMethod = null;
         var list:Array = [];
         for(var i:int = 0; i < klassInfo.methods.length; i++)
         {
            method = klassInfo.methods[i] as Method;
            frameworkMethod = new FrameworkMethod(method);
            if(this.shouldRun(frameworkMethod))
            {
               list.push(method.name);
            }
         }
         return list;
      }
      
      private function createTestSuiteWithFilter(filter:IFilter = null) : Test
      {
         var suite:TestSuite = null;
         var klassInfo:Klass = null;
         var methodList:Array = null;
         var i:int = 0;
         var numConstructorArgs:int = 0;
         var test:Test = null;
         if(!filter)
         {
            return new TestSuite(this.klassOrTest);
         }
         suite = new TestSuite();
         klassInfo = new Klass(this.klassOrTest);
         if(this.klassOrTest is Class)
         {
            klassInfo = new Klass(this.klassOrTest);
         }
         else
         {
            klassInfo = new Klass(this.klassOrTest.constructor);
         }
         methodList = this.getMethodListFromFilter(klassInfo,filter);
         for(i = 0; i < methodList.length; i++)
         {
            numConstructorArgs = klassInfo.constructor.parameterTypes.length;
            if(numConstructorArgs == 0)
            {
               test = klassInfo.constructor.newInstance() as Test;
               if(test is TestCase)
               {
                  TestCase(test).methodName = methodList[i];
               }
            }
            else
            {
               if(numConstructorArgs != 1)
               {
                  throw new InitializationError("Asking to instatiate TestClass with unknown number of arguments");
               }
               test = klassInfo.constructor.newInstance(methodList[i]) as Test;
            }
            suite.addTest(test);
         }
         return suite;
      }
      
      public function run(notifier:IRunNotifier, previousToken:IAsyncTestToken) : void
      {
         if(this.stopRequested)
         {
            previousToken.sendResult(new StoppedByUserException());
            return;
         }
         var token:AsyncTestToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         token.parentToken = previousToken;
         token.addNotificationMethod(this.handleTestComplete);
         var result:TestResult = new TestResult();
         result.addListener(createAdaptingListener(notifier,token));
         this.totalTestCount = this.test.countTestCases();
         this.test.runWithResult(result);
      }
      
      protected function handleTestComplete(result:ChildResult) : void
      {
         var timer:Timer = null;
         if(++this.numTestsRun == this.totalTestCount)
         {
            this.testCompletedToken = result.token;
            timer = new Timer(100,1);
            timer.addEventListener(TimerEvent.TIMER,this.handleAllTestsComplete,false,0,false);
            timer.start();
         }
      }
      
      private function handleAllTestsComplete(event:TimerEvent) : void
      {
         (event.target as Timer).removeEventListener(TimerEvent.TIMER,this.handleAllTestsComplete);
         this.testCompletedToken.parentToken.sendResult();
      }
      
      public function get description() : IDescription
      {
         if(!this.cachedDescription)
         {
            this.cachedDescription = this.makeDescription(this.test);
         }
         return this.cachedDescription;
      }
      
      public function pleaseStop() : void
      {
         this.stopRequested = true;
      }
      
      private function makeDescription(test:Test) : IDescription
      {
         var name:String = null;
         var description:IDescription = null;
         var n:int = 0;
         var tests:Array = null;
         var testClass:Class = null;
         var tc:TestCase = null;
         var ts:TestSuite = null;
         var i:int = 0;
         var adapter:IDescribable = null;
         if(test is TestCase)
         {
            tc = TestCase(test);
            testClass = getClassFromTest(tc);
            return Description.createTestDescription(testClass,tc.methodName);
         }
         if(test is TestSuite)
         {
            ts = TestSuite(test);
            name = ts.className == null ? "" : ts.className;
            description = Description.createSuiteDescription(name);
            n = ts.testCount();
            tests = ts.getTests();
            for(i = 0; i < n; i++)
            {
               description.addChild(this.makeDescription(tests[i]));
            }
            return description;
         }
         if(test is IDescribable)
         {
            adapter = IDescribable(test);
            return adapter.description;
         }
         return Description.createSuiteDescription(test.className);
      }
      
      public function filter(filter:IFilter) : void
      {
         var adapter:IFilterable = null;
         if(this.test is IFilterable)
         {
            adapter = IFilterable(this.test);
            adapter.filter(filter);
         }
         this.filterRef = filter;
         this.test = this.createTestSuiteWithFilter(this.filterRef);
      }
   }
}

import flexunit.framework.AssertionFailedError;
import flexunit.framework.Test;
import flexunit.framework.TestCase;
import flexunit.framework.TestListener;
import org.flexunit.internals.runners.FlexUnit1ClassRunner;
import org.flexunit.runner.Description;
import org.flexunit.runner.IDescribable;
import org.flexunit.runner.IDescription;
import org.flexunit.runner.notification.Failure;
import org.flexunit.runner.notification.IRunNotifier;
import org.flexunit.runner.notification.StoppedByUserException;
import org.flexunit.token.AsyncTestToken;

class OldTestClassAdaptingListener implements TestListener
{
    
   
   private var notifier:IRunNotifier;
   
   private var token:AsyncTestToken;
   
   function OldTestClassAdaptingListener(notifier:IRunNotifier, token:AsyncTestToken)
   {
      super();
      this.notifier = notifier;
      this.token = token;
   }
   
   public function endTest(test:Test) : void
   {
      this.notifier.fireTestFinished(this.asDescription(test));
      this.token.sendResult();
   }
   
   public function startTest(test:Test) : void
   {
      try
      {
         this.notifier.fireTestStarted(this.asDescription(test));
      }
      catch(e:StoppedByUserException)
      {
         token.sendResult(e);
      }
   }
   
   public function addError(test:Test, error:Error) : void
   {
      var failure:Failure = new Failure(this.asDescription(test),error);
      this.notifier.fireTestFailure(failure);
   }
   
   private function asDescription(test:Test) : IDescription
   {
      var facade:IDescribable = null;
      if(test is IDescribable)
      {
         facade = test as IDescribable;
         return facade.description;
      }
      return Description.createTestDescription(FlexUnit1ClassRunner.getClassFromTest(test),this.getName(test));
   }
   
   private function getName(test:Test) : String
   {
      if(test is TestCase)
      {
         return TestCase(test).methodName;
      }
      return test.toString();
   }
   
   public function addFailure(test:Test, error:AssertionFailedError) : void
   {
      this.addError(test,error);
   }
}
