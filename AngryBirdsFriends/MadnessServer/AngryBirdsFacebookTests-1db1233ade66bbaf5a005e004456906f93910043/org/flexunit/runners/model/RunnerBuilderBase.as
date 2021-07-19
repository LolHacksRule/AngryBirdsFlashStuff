package org.flexunit.runners.model
{
   import flash.utils.Dictionary;
   import org.flexunit.internals.runners.ErrorReportingRunner;
   import org.flexunit.internals.runners.InitializationError;
   import org.flexunit.runner.IRequest;
   import org.flexunit.runner.IRunner;
   
   public class RunnerBuilderBase implements IRunnerBuilder
   {
       
      
      private var parents:Dictionary;
      
      public function RunnerBuilderBase()
      {
         this.parents = new Dictionary(true);
         super();
      }
      
      public function canHandleClass(testClass:Class) : Boolean
      {
         return false;
      }
      
      public function safeRunnerForClass(testClass:Class) : IRunner
      {
         try
         {
            return this.runnerForClass(testClass);
         }
         catch(error:Error)
         {
            return new ErrorReportingRunner(testClass,error);
         }
      }
      
      public function runners(parent:Class, children:Array) : Array
      {
         this.addParent(parent);
         try
         {
            return this.localRunners(children);
         }
         catch(e:Error)
         {
            trace(e.toString());
            return null;
         }
         finally
         {
            this.removeParent(parent);
         }
      }
      
      private function localRunners(children:Array) : Array
      {
         var childRunner:IRunner = null;
         var child:* = undefined;
         var runners:Array = new Array();
         for(var i:int = 0; i < children.length; i++)
         {
            child = children[i];
            if(child is IRequest)
            {
               childRunner = IRequest(child).iRunner;
            }
            else
            {
               childRunner = this.safeRunnerForClass(child);
            }
            if(childRunner != null)
            {
               runners.push(childRunner);
            }
         }
         return runners;
      }
      
      public function runnerForClass(testClass:Class) : IRunner
      {
         return null;
      }
      
      private function addParent(parent:Class) : Class
      {
         if(parent)
         {
            if(this.parents[parent])
            {
               throw new InitializationError("Class " + parent + " (possibly indirectly) contains itself as a SuiteClass");
            }
            this.parents[parent] = true;
         }
         return parent;
      }
      
      private function removeParent(parent:Class) : void
      {
         if(parent)
         {
            delete this.parents[parent];
         }
      }
   }
}
