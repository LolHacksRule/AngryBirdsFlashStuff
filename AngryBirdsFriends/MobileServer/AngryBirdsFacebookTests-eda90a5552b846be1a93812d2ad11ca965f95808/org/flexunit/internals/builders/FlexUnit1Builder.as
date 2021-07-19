package org.flexunit.internals.builders
{
   import flex.lang.reflect.Klass;
   import flexunit.framework.TestCase;
   import org.flexunit.internals.runners.FlexUnit1ClassRunner;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runners.model.RunnerBuilderBase;
   
   public class FlexUnit1Builder extends RunnerBuilderBase
   {
       
      
      public function FlexUnit1Builder()
      {
         super();
      }
      
      override public function canHandleClass(testClass:Class) : Boolean
      {
         var klassInfo:Klass = new Klass(testClass);
         return this.isPre4Test(klassInfo);
      }
      
      override public function runnerForClass(testClass:Class) : IRunner
      {
         return new FlexUnit1ClassRunner(testClass);
      }
      
      public function isPre4Test(klassInfo:Klass) : Boolean
      {
         return klassInfo.descendsFrom(TestCase);
      }
   }
}
