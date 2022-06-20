package org.flexunit.runners
{
   import flash.utils.getQualifiedClassName;
   import flex.lang.reflect.Field;
   import org.flexunit.async.AsyncLocator;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.internals.AssumptionViolatedException;
   import org.flexunit.internals.runners.InitializationError;
   import org.flexunit.internals.runners.model.EachTestNotifier;
   import org.flexunit.internals.runners.statements.ExpectAsync;
   import org.flexunit.internals.runners.statements.ExpectException;
   import org.flexunit.internals.runners.statements.Fail;
   import org.flexunit.internals.runners.statements.FailOnTimeout;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.internals.runners.statements.InvokeMethod;
   import org.flexunit.internals.runners.statements.RunAftersInline;
   import org.flexunit.internals.runners.statements.RunBeforesInline;
   import org.flexunit.internals.runners.statements.StackAndFrameManagement;
   import org.flexunit.internals.runners.statements.StatementSequencer;
   import org.flexunit.rules.IMethodRule;
   import org.flexunit.runner.Description;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.manipulation.IFilterable;
   import org.flexunit.runner.manipulation.IFixtureSorter;
   import org.flexunit.runner.manipulation.fields.FieldMetaDataSorter;
   import org.flexunit.runner.manipulation.fields.IFieldSorter;
   import org.flexunit.runner.manipulation.sortingInheritance.ClassInheritanceOrderCache;
   import org.flexunit.runner.manipulation.sortingInheritance.ISortingInheritanceCache;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class BlockFlexUnit4ClassRunner extends ParentRunner implements IFilterable
   {
       
      
      public function BlockFlexUnit4ClassRunner(klass:Class)
      {
         super(klass);
      }
      
      override protected function runChild(child:*, notifier:IRunNotifier, childRunnerToken:AsyncTestToken) : void
      {
         var eachNotifier:EachTestNotifier = null;
         var error:Error = null;
         var block:IAsyncStatement = null;
         if(stopRequested)
         {
            childRunnerToken.sendResult(new StoppedByUserException());
            return;
         }
         var method:FrameworkMethod = FrameworkMethod(child);
         eachNotifier = this.makeNotifier(method,notifier);
         var token:AsyncTestToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         token.parentToken = childRunnerToken;
         token.addNotificationMethod(this.handleBlockComplete);
         token[ParentRunner.EACH_NOTIFIER] = eachNotifier;
         if(method.hasMetaData(AnnotationConstants.IGNORE))
         {
            eachNotifier.fireTestIgnored();
            childRunnerToken.sendResult();
            return;
         }
         eachNotifier.fireTestStarted();
         try
         {
            block = this.methodBlock(method);
            block.evaluate(token);
         }
         catch(e:AssumptionViolatedException)
         {
            error = e;
            eachNotifier.addFailedAssumption(e);
         }
         catch(e:Error)
         {
            error = e;
            eachNotifier.addFailure(e);
         }
         if(error)
         {
            eachNotifier.fireTestFinished();
            childRunnerToken.sendResult();
         }
      }
      
      private function handleBlockComplete(result:ChildResult) : void
      {
         var error:Error = result.error;
         var token:AsyncTestToken = result.token;
         var eachNotifier:EachTestNotifier = result.token[EACH_NOTIFIER];
         if(error is AssumptionViolatedException)
         {
            eachNotifier.fireTestIgnored();
         }
         else if(error)
         {
            eachNotifier.addFailure(error);
         }
         eachNotifier.fireTestFinished();
         token.parentToken.sendResult();
      }
      
      override protected function describeChild(child:*) : IDescription
      {
         var method:FrameworkMethod = FrameworkMethod(child);
         return Description.createTestDescription(testClass.asClass,method.name,method.metadata);
      }
      
      override protected function get children() : Array
      {
         return this.computeTestMethods();
      }
      
      protected function computeTestMethods() : Array
      {
         return testClass.getMetaDataMethods(AnnotationConstants.TEST);
      }
      
      override protected function collectInitializationErrors(errors:Array) : void
      {
         super.collectInitializationErrors(errors);
         this.validateInstanceMethods(errors);
      }
      
      protected function validateInstanceMethods(errors:Array) : void
      {
         validatePublicVoidNoArgMethods(AnnotationConstants.AFTER,false,errors);
         validatePublicVoidNoArgMethods(AnnotationConstants.BEFORE,false,errors);
         this.validateTestMethods(errors);
         if(this.computeTestMethods().length == 0)
         {
            errors.push(new Error("No runnable methods"));
         }
      }
      
      protected function validateTestMethods(errors:Array) : void
      {
         validatePublicVoidNoArgMethods(AnnotationConstants.TEST,false,errors);
      }
      
      protected function createTest() : Object
      {
         return new testClass.asClass();
      }
      
      private function makeNotifier(method:FrameworkMethod, notifier:IRunNotifier) : EachTestNotifier
      {
         var description:IDescription = this.describeChild(method);
         return new EachTestNotifier(notifier,description);
      }
      
      protected function methodBlock(method:FrameworkMethod) : IAsyncStatement
      {
         var c:Class = null;
         var sequencer:StatementSequencer = null;
         var test:Object = null;
         try
         {
            test = this.createTest();
         }
         catch(e:Error)
         {
            trace(e.getStackTrace());
            return new Fail(e);
         }
         return this.withDecoration(method,test);
      }
      
      protected function methodInvoker(method:FrameworkMethod, test:Object) : IAsyncStatement
      {
         return new InvokeMethod(method,test);
      }
      
      protected function possiblyExpectingExceptions(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var expected:String = ExpectException.hasExpected(method);
         return !!expected ? new ExpectException(expected,statement) : statement;
      }
      
      protected function withPotentialTimeout(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var timeout:String = FailOnTimeout.hasTimeout(method);
         return !!timeout ? new FailOnTimeout(Number(timeout),statement) : statement;
      }
      
      protected function withPotentialAsync(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var async:Boolean = ExpectAsync.hasAsync(method);
         var needsMonitor:* = false;
         if(async)
         {
            needsMonitor = !AsyncLocator.hasCallableForTest(test);
         }
         return async && needsMonitor ? new ExpectAsync(test,statement) : statement;
      }
      
      protected function withAfterStatements(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         return statement;
      }
      
      protected function withDecoration(method:FrameworkMethod, test:Object) : IAsyncStatement
      {
         var statement:IAsyncStatement = this.methodInvoker(method,test);
         statement = this.withPotentialAsync(method,test,statement);
         statement = this.withPotentialTimeout(method,test,statement);
         statement = this.withBefores(method,test,statement);
         statement = this.withAfters(method,test,statement);
         statement = this.withPotentialRules(method,test,statement);
         statement = this.possiblyExpectingExceptions(method,test,statement);
         return this.withStackManagement(method,test,statement);
      }
      
      protected function withPotentialRules(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var rule:IMethodRule = null;
         var ruleField:Field = null;
         var ruleVal:* = undefined;
         var typeOfRule:String = null;
         var ruleFields:Array = testClass.getMetaDataFields(AnnotationConstants.RULE);
         var fieldSorter:IFieldSorter = new FieldMetaDataSorter(true);
         ruleFields.sort(fieldSorter.compare);
         for(var i:int = 0; i < ruleFields.length; )
         {
            ruleField = ruleFields[i] as Field;
            if(!(test[ruleField.name] is IMethodRule))
            {
               ruleVal = test[ruleField.name];
               typeOfRule = !!ruleVal ? getQualifiedClassName(ruleVal) : "null";
            }
            continue;
            rule = test[ruleField.name] as IMethodRule;
            statement = rule.apply(statement,method,test);
            i++;
            throw new InitializationError(ruleField.name + " is marked as [Rule] but does not implement IMethodRule. It appears to be " + typeOfRule);
         }
         return statement;
      }
      
      protected function withStackManagement(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         return new StackAndFrameManagement(statement);
      }
      
      protected function withBefores(method:FrameworkMethod, target:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var sortMethod:Function = null;
         var cache:ISortingInheritanceCache = null;
         var befores:Array = testClass.getMetaDataMethods(AnnotationConstants.BEFORE);
         if(befores.length > 1)
         {
            if(sorter is IFixtureSorter)
            {
               cache = new ClassInheritanceOrderCache(testClass);
               befores.sort(function compare(o1:Object, o2:Object):int
               {
                  return (sorter as IFixtureSorter).compareFixtureElements(describeChild(o1),describeChild(o2),cache,true);
               });
            }
            else
            {
               befores.sort(function compare(o1:Object, o2:Object):int
               {
                  return sorter.compare(describeChild(o1),describeChild(o2));
               });
            }
         }
         return !!befores.length ? new RunBeforesInline(befores,target,statement) : statement;
      }
      
      protected function withAfters(method:FrameworkMethod, target:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var cache:ISortingInheritanceCache = null;
         var afters:Array = testClass.getMetaDataMethods(AnnotationConstants.AFTER);
         if(afters.length > 1)
         {
            if(sorter is IFixtureSorter)
            {
               cache = new ClassInheritanceOrderCache(testClass);
               afters.sort(function compare(o1:Object, o2:Object):int
               {
                  return (sorter as IFixtureSorter).compareFixtureElements(describeChild(o1),describeChild(o2),cache,false);
               });
            }
            else
            {
               afters.sort(function compare(o1:Object, o2:Object):int
               {
                  return sorter.compare(describeChild(o1),describeChild(o2));
               });
            }
         }
         return !!afters.length ? new RunAftersInline(afters,target,statement) : statement;
      }
   }
}
