package org.flexunit.internals.requests
{
   import org.flexunit.internals.builders.AllDefaultPossibilitiesBuilder;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.Request;
   
   public class ClassRequest extends Request
   {
       
      
      private var testClass:Class;
      
      private var canUseSuiteMethod:Boolean;
      
      public function ClassRequest(testClass:Class, canUseSuiteMethod:Boolean = true)
      {
         super();
         this.testClass = testClass;
         this.canUseSuiteMethod = canUseSuiteMethod;
      }
      
      override public function get iRunner() : IRunner
      {
         return new AllDefaultPossibilitiesBuilder(this.canUseSuiteMethod).safeRunnerForClass(this.testClass);
      }
   }
}
