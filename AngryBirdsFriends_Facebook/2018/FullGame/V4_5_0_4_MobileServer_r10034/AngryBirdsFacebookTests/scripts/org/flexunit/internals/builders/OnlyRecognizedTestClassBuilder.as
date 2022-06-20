package org.flexunit.internals.builders
{
   import org.flexunit.runners.model.IRunnerBuilder;
   
   public class OnlyRecognizedTestClassBuilder extends AllDefaultPossibilitiesBuilder
   {
       
      
      private var builders:Array;
      
      public function OnlyRecognizedTestClassBuilder(canUseSuiteMethod:Boolean = true)
      {
         super(canUseSuiteMethod);
         this.builders = buildBuilders();
      }
      
      public function qualify(testClass:Class) : Boolean
      {
         var builder:IRunnerBuilder = null;
         for(var i:int = 0; i < this.builders.length; i++)
         {
            builder = this.builders[i];
            if(builder.canHandleClass(testClass))
            {
               return true;
            }
         }
         return false;
      }
      
      override protected function flexUnit4Builder() : FlexUnit4Builder
      {
         return new FlexUnit4QualifiedBuilder();
      }
   }
}
