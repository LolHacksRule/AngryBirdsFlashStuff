package org.flexunit.internals.builders
{
   import flash.utils.getDefinitionByName;
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.internals.runners.InitializationError;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runners.model.IRunnerBuilder;
   import org.flexunit.runners.model.RunnerBuilderBase;
   
   public class MetaDataBuilder extends RunnerBuilderBase
   {
      
      private static const CLASS_NOT_FOUND:String = "classNotFound";
      
      private static const INVALID_CONSTRUCTOR_ARGS:String = "invalidConstructorArguments";
      
      private static const UNSPECIFIED:String = "unspecified";
       
      
      private var suiteBuilder:IRunnerBuilder;
      
      public function MetaDataBuilder(suiteBuilder:IRunnerBuilder)
      {
         super();
         this.suiteBuilder = suiteBuilder;
      }
      
      private function lookForMetaDataThroughInheritance(testClass:Class, metadata:String) : MetaDataAnnotation
      {
         var ancestorInfo:Klass = null;
         var annotation:MetaDataAnnotation = null;
         var inheritance:Array = null;
         var i:int = 0;
         var klassInfo:Klass = new Klass(testClass);
         annotation = klassInfo.getMetaData(metadata);
         if(!annotation)
         {
            inheritance = klassInfo.classInheritance;
            for(i = 0; i < inheritance.length; i++)
            {
               ancestorInfo = new Klass(inheritance[i]);
               annotation = ancestorInfo.getMetaData(metadata);
               if(annotation)
               {
                  break;
               }
            }
         }
         return annotation;
      }
      
      override public function canHandleClass(testClass:Class) : Boolean
      {
         var annotation:MetaDataAnnotation = this.lookForMetaDataThroughInheritance(testClass,AnnotationConstants.RUN_WITH);
         return annotation != null;
      }
      
      override public function runnerForClass(testClass:Class) : IRunner
      {
         var klassInfo:Klass = new Klass(testClass);
         var runWithValue:String = "";
         var runWithAnnotation:MetaDataAnnotation = this.lookForMetaDataThroughInheritance(testClass,AnnotationConstants.RUN_WITH);
         if(runWithAnnotation && runWithAnnotation.defaultArgument)
         {
            runWithValue = runWithAnnotation.defaultArgument.key;
         }
         return this.buildRunner(runWithValue,testClass);
      }
      
      public function buildRunner(runnerClassName:String, testClass:Class) : IRunner
      {
         var runnerClass:Class = null;
         try
         {
            runnerClass = getDefinitionByName(runnerClassName) as Class;
            return new runnerClass(testClass);
         }
         catch(e:Error)
         {
            if(e is InitializationError)
            {
               throw e;
            }
            if(e is ReferenceError)
            {
               throw createInitializationError(CLASS_NOT_FOUND,runnerClassName);
            }
            if(e is TypeError || e is ArgumentError)
            {
               if(e.errorID == 1007 || e.errorID == 1063)
               {
                  return buildWithSecondSignature(runnerClass,testClass,runnerClassName);
               }
               throw createInitializationError(INVALID_CONSTRUCTOR_ARGS,runnerClassName);
            }
            throw createInitializationError(UNSPECIFIED,runnerClassName);
         }
      }
      
      private function buildWithSecondSignature(runnerClass:Class, testClass:Class, runnerClassName:String) : IRunner
      {
         try
         {
            return new runnerClass(testClass,this.suiteBuilder);
         }
         catch(e:Error)
         {
            if(e is InitializationError)
            {
               throw e;
            }
            throw createInitializationError(UNSPECIFIED,runnerClassName);
         }
      }
      
      private function createInitializationError(reason:String, runnerClassName:String) : InitializationError
      {
         var error:InitializationError = null;
         switch(reason)
         {
            case CLASS_NOT_FOUND:
               error = new InitializationError("Custom runner class " + runnerClassName + " should be linked into project and implement IRunner. Further it needs to have a constructor which either just accepts the class, or the class and a builder.");
               break;
            case INVALID_CONSTRUCTOR_ARGS:
               error = new InitializationError("Custom runner class " + runnerClassName + " cannot be built with the specified constructor arguments.");
               break;
            default:
               error = new InitializationError("Custom runner class " + runnerClassName + " cannot be instantiated");
         }
         return error;
      }
   }
}
