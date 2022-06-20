package org.flexunit.runners
{
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.internals.AssumptionViolatedException;
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.internals.runners.ChildRunnerSequencer;
   import org.flexunit.internals.runners.ErrorReportingRunner;
   import org.flexunit.internals.runners.InitializationError;
   import org.flexunit.internals.runners.model.EachTestNotifier;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.internals.runners.statements.RunAftersClass;
   import org.flexunit.internals.runners.statements.RunBeforesClass;
   import org.flexunit.internals.runners.statements.StatementSequencer;
   import org.flexunit.runner.Description;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.manipulation.IFilter;
   import org.flexunit.runner.manipulation.ISortable;
   import org.flexunit.runner.manipulation.ISorter;
   import org.flexunit.runner.manipulation.NoTestsRemainException;
   import org.flexunit.runner.manipulation.OrderArgumentPlusInheritanceSorter;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.runners.model.TestClass;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.token.IAsyncTestToken;
   import org.flexunit.utils.ClassNameUtil;
   
   use namespace classInternal;
   
   public class ParentRunner implements IRunner, ISortable
   {
      
      protected static const EACH_NOTIFIER:String = "eachNotifier";
       
      
      private var _testClass:TestClass;
      
      private var filterRef:IFilter = null;
      
      protected var sorter:ISorter;
      
      private var filteredChildren:Array;
      
      private var childrenFiltered:Boolean = false;
      
      private var cachedDescription:IDescription;
      
      protected var stopRequested:Boolean = false;
      
      private var currentEachNotifier:EachTestNotifier;
      
      public function ParentRunner(klass:Class)
      {
         this.sorter = OrderArgumentPlusInheritanceSorter.DEFAULT_SORTER;
         super();
         this._testClass = new TestClass(klass);
         this.validate();
      }
      
      protected function get name() : String
      {
         return this.testClass.name;
      }
      
      protected function get testClass() : TestClass
      {
         return this._testClass;
      }
      
      protected function generateDescription() : IDescription
      {
         var child:* = undefined;
         var description:IDescription = Description.createSuiteDescription(this.name,this.testClass.metadata);
         var filtered:Array = this.getFilteredChildren();
         for(var i:int = 0; i < filtered.length; i++)
         {
            child = filtered[i];
            description.addChild(this.describeChild(child));
         }
         return description;
      }
      
      public function get description() : IDescription
      {
         if(!this.cachedDescription)
         {
            this.cachedDescription = this.generateDescription();
         }
         return this.cachedDescription;
      }
      
      public function pleaseStop() : void
      {
         this.stopRequested = true;
      }
      
      protected function get children() : Array
      {
         return null;
      }
      
      protected function describeChild(child:*) : IDescription
      {
         return null;
      }
      
      protected function runChild(child:*, notifier:IRunNotifier, childRunnerToken:AsyncTestToken) : void
      {
         if(this.stopRequested)
         {
         }
      }
      
      protected function classBlock(notifier:IRunNotifier) : IAsyncStatement
      {
         var sequencer:StatementSequencer = null;
         var beforeClassStatement:IAsyncStatement = this.withBeforeClasses();
         var afterClassStatement:IAsyncStatement = this.withAfterClasses();
         var childrenInvokerStatement:IAsyncStatement = this.childrenInvoker(notifier);
         if(!(beforeClassStatement || afterClassStatement))
         {
            return childrenInvokerStatement;
         }
         sequencer = new StatementSequencer();
         if(beforeClassStatement)
         {
            sequencer.addStep(beforeClassStatement);
         }
         sequencer.addStep(childrenInvokerStatement);
         if(afterClassStatement)
         {
            sequencer.addStep(afterClassStatement);
         }
         return sequencer;
      }
      
      protected function withBeforeClasses() : IAsyncStatement
      {
         var statement:IAsyncStatement = null;
         var befores:Array = this.testClass.getMetaDataMethods(AnnotationConstants.BEFORE_CLASS);
         if(befores.length)
         {
            if(befores.length > 1)
            {
               befores.sort(this.compare);
            }
            statement = new RunBeforesClass(befores,this.testClass);
         }
         return statement;
      }
      
      protected function withAfterClasses() : IAsyncStatement
      {
         var statement:IAsyncStatement = null;
         var afters:Array = this.testClass.getMetaDataMethods(AnnotationConstants.AFTER_CLASS);
         if(afters.length)
         {
            if(afters.length > 1)
            {
               afters.sort(this.compare);
            }
            statement = new RunAftersClass(afters,this.testClass);
         }
         return statement;
      }
      
      private function validate() : void
      {
         var errors:Array = new Array();
         this.collectInitializationErrors(errors);
         if(errors.length != 0)
         {
            throw new InitializationError(errors);
         }
      }
      
      protected function collectInitializationErrors(errors:Array) : void
      {
         this.validatePublicVoidNoArgMethods(AnnotationConstants.BEFORE_CLASS,true,errors);
         this.validatePublicVoidNoArgMethods(AnnotationConstants.AFTER_CLASS,true,errors);
      }
      
      protected function validatePublicVoidNoArgMethods(metaDataTag:String, isStatic:Boolean, errors:Array) : void
      {
         var eachTestMethod:FrameworkMethod = null;
         var methods:Array = this.testClass.getMetaDataMethods(metaDataTag);
         for(var i:int = 0; i < methods.length; i++)
         {
            eachTestMethod = methods[i] as FrameworkMethod;
            eachTestMethod.validatePublicVoidNoArg(isStatic,errors);
         }
      }
      
      protected function childrenInvoker(notifier:IRunNotifier) : IAsyncStatement
      {
         var children:Array = this.getFilteredChildren();
         return new ChildRunnerSequencer(children,this.runChild,notifier);
      }
      
      private function getFilteredChildren() : Array
      {
         var filtered:Array = null;
         var child:* = undefined;
         var theChildren:Array = null;
         var length:uint = 0;
         var i:uint = 0;
         if(!this.childrenFiltered)
         {
            filtered = new Array();
            theChildren = this.children;
            length = theChildren.length;
            for(i = 0; i < length; i++)
            {
               child = theChildren[i];
               if(this.shouldRun(child))
               {
                  try
                  {
                     this.filterChild(child);
                     this.sortChild(child);
                     filtered.push(child);
                  }
                  catch(error:Error)
                  {
                  }
               }
            }
            filtered.sort(this.compare);
            this.filteredChildren = filtered;
            this.childrenFiltered = true;
         }
         return this.filteredChildren;
      }
      
      private function sortChild(child:*) : void
      {
         this.sorter.apply(child);
      }
      
      protected function compare(o1:Object, o2:Object) : int
      {
         return this.sorter.compare(this.describeChild(o1),this.describeChild(o2));
      }
      
      private function filterChild(child:*) : void
      {
         if(this.filterRef != null)
         {
            this.filterRef.apply(child);
         }
      }
      
      public function run(notifier:IRunNotifier, previousToken:IAsyncTestToken) : void
      {
         var testNotifier:EachTestNotifier = null;
         var resendError:Error = null;
         var statement:IAsyncStatement = null;
         if(this.stopRequested)
         {
            previousToken.sendResult(new StoppedByUserException());
            return;
         }
         testNotifier = new EachTestNotifier(notifier,this.description);
         var token:AsyncTestToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         token.previousToken = previousToken;
         token.addNotificationMethod(this.handleRunnerComplete);
         token[EACH_NOTIFIER] = testNotifier;
         try
         {
            statement = this.classBlock(notifier);
            statement.evaluate(token);
         }
         catch(error:AssumptionViolatedException)
         {
            resendError = error;
            testNotifier.fireTestIgnored();
         }
         catch(error:StoppedByUserException)
         {
            resendError = error;
            throw error;
         }
         catch(error:Error)
         {
            resendError = error;
            testNotifier.addFailure(error);
         }
         if(resendError)
         {
            previousToken.sendResult(resendError);
         }
      }
      
      private function handleRunnerComplete(result:ChildResult) : void
      {
         var error:Error = result.error;
         var token:AsyncTestToken = result.token;
         var eachNotifier:EachTestNotifier = result.token[EACH_NOTIFIER];
         if(error is AssumptionViolatedException)
         {
            eachNotifier.fireTestIgnored();
         }
         else if(error is StoppedByUserException)
         {
            eachNotifier.fireTestFinished();
         }
         else if(error)
         {
            eachNotifier.addFailure(error);
         }
         token.previousToken.sendResult();
      }
      
      private function shouldRun(item:*) : Boolean
      {
         return this.filterRef == null || this.filterRef.shouldRun(this.describeChild(item));
      }
      
      public function filter(filter:IFilter) : void
      {
         var i:int = 0;
         var child:IRunner = null;
         var parentRunner:ParentRunner = null;
         var klass:Class = null;
         if(filter == this.filterRef)
         {
            return;
         }
         this.filterRef = filter;
         this.childrenFiltered = false;
         for(i = 0; i < this.children.length; i++)
         {
            try
            {
               this.filterChild(this.children[i]);
               if(this.shouldRun(this.children[i]))
               {
                  return;
               }
            }
            catch(error:NoTestsRemainException)
            {
               child = children[i] as IRunner;
               parentRunner = child as ParentRunner;
               klass = ParentRunner;
               if(parentRunner)
               {
                  klass = parentRunner.testClass.asClass;
               }
               children[i] = new ErrorReportingRunner(klass,new Error("No tests found matching " + child.description.displayName));
               continue;
            }
         }
         throw new NoTestsRemainException();
      }
      
      public function sort(sorter:ISorter) : void
      {
         if(OrderArgumentPlusInheritanceSorter.DEFAULT_SORTER == this.sorter)
         {
            this.sorter = sorter;
            this.childrenFiltered = false;
         }
      }
      
      public function toString() : String
      {
         return "ParentRunner";
      }
   }
}
