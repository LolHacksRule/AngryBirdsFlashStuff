package org.flexunit.internals.builders
{
   import org.flexunit.runner.IRunner;
   import org.flexunit.runners.model.IRunnerBuilder;
   import org.flexunit.runners.model.RunnerBuilderBase;
   
   public class AllDefaultPossibilitiesBuilder extends RunnerBuilderBase
   {
       
      
      private var canUseSuiteMethod:Boolean;
      
      public function AllDefaultPossibilitiesBuilder(canUseSuiteMethod:Boolean = true)
      {
         this.canUseSuiteMethod = canUseSuiteMethod;
         super();
      }
      
      protected function buildBuilders() : Array
      {
         return [this.ignoredBuilder(),this.metaDataBuilder(),this.suiteMethodBuilder(),this.flexUnit1Builder(),this.fluint1Builder(),this.flexUnit4Builder()];
      }
      
      override public function runnerForClass(testClass:Class) : IRunner
      {
         var builder:IRunnerBuilder = null;
         var runner:IRunner = null;
         var builders:Array = this.buildBuilders();
         for(var i:int = 0; i < builders.length; i++)
         {
            builder = builders[i];
            if(builder.canHandleClass(testClass))
            {
               runner = builder.safeRunnerForClass(testClass);
               if(runner != null)
               {
                  return runner;
               }
            }
         }
         return null;
      }
      
      protected function ignoredBuilder() : IgnoredBuilder
      {
         return new IgnoredBuilder();
      }
      
      protected function metaDataBuilder() : MetaDataBuilder
      {
         return new MetaDataBuilder(this);
      }
      
      protected function suiteMethodBuilder() : IRunnerBuilder
      {
         if(this.canUseSuiteMethod)
         {
            return new SuiteMethodBuilder();
         }
         return new NullBuilder();
      }
      
      protected function flexUnit1Builder() : FlexUnit1Builder
      {
         return new FlexUnit1Builder();
      }
      
      protected function fluint1Builder() : IRunnerBuilder
      {
         var runner:IRunnerBuilder = null;
         var builder:Class = null;
         if(!runner)
         {
            runner = new NullBuilder();
         }
         return runner;
      }
      
      protected function flexUnit4Builder() : FlexUnit4Builder
      {
         return new FlexUnit4Builder();
      }
   }
}
