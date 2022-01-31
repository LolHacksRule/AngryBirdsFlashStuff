package org.flexunit.internals.builders
{
   import org.flexunit.runner.IRunner;
   import org.flexunit.runners.BlockFlexUnit4ClassRunner;
   import org.flexunit.runners.model.RunnerBuilderBase;
   
   public class FlexUnit4Builder extends RunnerBuilderBase
   {
       
      
      public function FlexUnit4Builder()
      {
         super();
      }
      
      override public function canHandleClass(testClass:Class) : Boolean
      {
         return true;
      }
      
      override public function runnerForClass(testClass:Class) : IRunner
      {
         return new BlockFlexUnit4ClassRunner(testClass);
      }
   }
}
