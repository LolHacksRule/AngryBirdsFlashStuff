package org.flexunit.runners
{
   import flex.lang.reflect.Field;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.internals.dependency.ExternalDependencyResolver;
   import org.flexunit.internals.dependency.IExternalDependencyResolver;
   import org.flexunit.internals.dependency.IExternalRunnerDependencyWatcher;
   import org.flexunit.internals.runners.ErrorReportingRunner;
   import org.flexunit.runner.Description;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.external.IExternalDependencyData;
   import org.flexunit.runner.external.IExternalDependencyRunner;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   
   public class Parameterized extends ParentRunner implements IExternalDependencyRunner
   {
       
      
      private var runners:Array;
      
      private var klass:Class;
      
      private var dr:IExternalDependencyResolver;
      
      private var _dependencyWatcher:IExternalRunnerDependencyWatcher;
      
      private var dependencyDataWatchers:Array;
      
      private var _externalDependencyError:String;
      
      private var externalError:Boolean = false;
      
      public function Parameterized(klass:Class)
      {
         super(klass);
         this.klass = klass;
         this.dr = new ExternalDependencyResolver(klass,this);
         this.dr.resolveDependencies();
      }
      
      public function set dependencyWatcher(value:IExternalRunnerDependencyWatcher) : void
      {
         this._dependencyWatcher = value;
         if(value && this.dr)
         {
            value.watchDependencyResolver(this.dr);
         }
      }
      
      public function set externalDependencyError(value:String) : void
      {
         this.externalError = true;
         this._externalDependencyError = value;
      }
      
      private function buildErrorRunner(message:String) : Array
      {
         return [new ErrorReportingRunner(this.klass,new Error("There was an error retrieving the parameters for the testcase: cause " + message))];
      }
      
      private function buildRunners() : Array
      {
         var parametersList:Array = null;
         var i:int = 0;
         var runners:Array = new Array();
         try
         {
            parametersList = this.getParametersList(this.klass);
            if(parametersList.length == 0)
            {
               runners.push(new TestClassRunnerForParameters(this.klass));
            }
            else
            {
               for(i = 0; i < parametersList.length; i++)
               {
                  runners.push(new TestClassRunnerForParameters(this.klass,parametersList,i));
               }
            }
         }
         catch(error:Error)
         {
            runners = buildErrorRunner(error.message);
         }
         return runners;
      }
      
      private function getParametersList(klass:Class) : Array
      {
         var frameworkMethod:FrameworkMethod = null;
         var field:Field = null;
         var property:* = undefined;
         var data:Array = null;
         var allParams:Array = new Array();
         var methods:Array = this.getParametersMethods(klass);
         var fields:Array = this.getParametersFields(klass);
         for(var i:int = 0; i < methods.length; i++)
         {
            frameworkMethod = methods[i];
            data = frameworkMethod.invokeExplosively(klass) as Array;
            allParams = allParams.concat(data);
         }
         for(var j:int = 0; j < fields.length; j++)
         {
            field = fields[j];
            property = field.getObj(null);
            if(property is Array)
            {
               data = property as Array;
            }
            else if(property is IExternalDependencyData)
            {
               data = (property as IExternalDependencyData).data;
            }
            allParams = allParams.concat(data);
         }
         return allParams;
      }
      
      private function getParametersMethods(klass:Class) : Array
      {
         return testClass.getMetaDataMethods(AnnotationConstants.PARAMETERS);
      }
      
      private function getParametersFields(klass:Class) : Array
      {
         return testClass.getMetaDataFields(AnnotationConstants.PARAMETERS,true);
      }
      
      override public function get description() : IDescription
      {
         var description:IDescription = null;
         if(this.dr.ready)
         {
            description = super.description;
         }
         else
         {
            description = Description.createSuiteDescription(name,testClass.metadata);
         }
         return description;
      }
      
      override protected function get children() : Array
      {
         if(!this.runners)
         {
            if(!this.externalError)
            {
               this.runners = this.buildRunners();
            }
            else
            {
               this.runners = this.buildErrorRunner(this._externalDependencyError);
            }
         }
         return this.runners;
      }
      
      override protected function describeChild(child:*) : IDescription
      {
         return IRunner(child).description;
      }
      
      override public function pleaseStop() : void
      {
         var i:int = 0;
         super.pleaseStop();
         if(this.runners)
         {
            for(i = 0; i < this.runners.length; i++)
            {
               (this.runners[i] as IRunner).pleaseStop();
            }
         }
      }
      
      override protected function runChild(child:*, notifier:IRunNotifier, childRunnerToken:AsyncTestToken) : void
      {
         if(stopRequested)
         {
            childRunnerToken.sendResult(new StoppedByUserException());
            return;
         }
         IRunner(child).run(notifier,childRunnerToken);
      }
   }
}

import flex.lang.reflect.Field;
import flex.lang.reflect.Klass;
import flex.lang.reflect.Method;
import flex.lang.reflect.metadata.MetaDataAnnotation;
import flex.lang.reflect.metadata.MetaDataArgument;
import org.flexunit.constants.AnnotationArgumentConstants;
import org.flexunit.constants.AnnotationConstants;
import org.flexunit.internals.runners.statements.IAsyncStatement;
import org.flexunit.runner.Description;
import org.flexunit.runner.IDescription;
import org.flexunit.runner.external.IExternalDependencyData;
import org.flexunit.runner.notification.IRunNotifier;
import org.flexunit.runners.BlockFlexUnit4ClassRunner;
import org.flexunit.runners.model.FrameworkMethod;
import org.flexunit.runners.model.ParameterizedMethod;

class TestClassRunnerForParameters extends BlockFlexUnit4ClassRunner
{
    
   
   private var klassInfo:Klass;
   
   private var expandedTestList:Array;
   
   private var parameterSetNumber:int;
   
   private var parameterList:Array;
   
   private var constructorParameterized:Boolean = false;
   
   function TestClassRunnerForParameters(klass:Class, parameterList:Array = null, i:int = 0)
   {
      this.klassInfo = new Klass(klass);
      super(klass);
      this.parameterList = parameterList;
      this.parameterSetNumber = i;
      if(parameterList && parameterList.length > 0)
      {
         this.constructorParameterized = true;
      }
   }
   
   private function buildExpandedTestList() : Array
   {
      var fwMethod:FrameworkMethod = null;
      var argument:MetaDataArgument = null;
      var classMethod:Method = null;
      var field:Field = null;
      var results:Array = null;
      var paramMethod:ParameterizedMethod = null;
      var property:* = undefined;
      var length:uint = 0;
      var j:uint = 0;
      var testMethods:Array = testClass.getMetaDataMethods(AnnotationConstants.TEST);
      var finalArray:Array = new Array();
      for(var i:int = 0; i < testMethods.length; i++)
      {
         fwMethod = testMethods[i];
         argument = fwMethod.method.getMetaData(AnnotationConstants.TEST).getArgument(AnnotationArgumentConstants.DATAPROVIDER,true);
         if(argument)
         {
            classMethod = this.klassInfo.getMethod(argument.value);
            if(classMethod)
            {
               results = classMethod.invoke(testClass) as Array;
            }
            else
            {
               field = this.klassInfo.getField(argument.value);
               if(!field)
               {
                  throw Error("unable to get parameters field " + argument.value);
               }
               if(!field.isStatic)
               {
                  throw Error("test parameters " + field.name + " must be static");
               }
               property = field.getObj(null);
               if(property is Array)
               {
                  results = [];
                  results = results.concat(property as Array);
               }
               else
               {
                  if(!(property is IExternalDependencyData))
                  {
                     throw Error("invalid value for parameterized field " + field.name + ": " + property);
                  }
                  results = [];
                  results = results.concat((property as IExternalDependencyData).data);
               }
            }
            length = results.length;
            for(j = 0; j < length; j++)
            {
               paramMethod = new ParameterizedMethod(fwMethod.method,results[j],j,length);
               finalArray.push(paramMethod);
            }
         }
         else
         {
            finalArray.push(fwMethod);
         }
      }
      return finalArray;
   }
   
   override protected function computeTestMethods() : Array
   {
      if(!this.expandedTestList)
      {
         this.expandedTestList = this.buildExpandedTestList();
      }
      return this.expandedTestList;
   }
   
   override protected function validatePublicVoidNoArgMethods(metaDataTag:String, isStatic:Boolean, errors:Array) : void
   {
      var annotation:MetaDataAnnotation = null;
      var argument:MetaDataArgument = null;
      var eachTestMethod:FrameworkMethod = null;
      var methods:Array = testClass.getMetaDataMethods(metaDataTag);
      for(var i:int = 0; i < methods.length; i++)
      {
         eachTestMethod = methods[i] as FrameworkMethod;
         annotation = eachTestMethod.method.getMetaData(AnnotationConstants.TEST);
         if(annotation)
         {
            argument = annotation.getArgument(AnnotationArgumentConstants.DATAPROVIDER,true);
         }
         if(!argument)
         {
            eachTestMethod.validatePublicVoidNoArg(isStatic,errors);
         }
      }
   }
   
   override protected function describeChild(child:*) : IDescription
   {
      if(!this.constructorParameterized)
      {
         return super.describeChild(child);
      }
      var params:Array = this.computeParams();
      var paramName:String = !!params ? params.join(",") : "Missing Params";
      var method:FrameworkMethod = FrameworkMethod(child);
      return Description.createTestDescription(testClass.asClass,method.name + " (" + paramName + ")",method.metadata);
   }
   
   private function computeParams() : Array
   {
      return !!this.parameterList ? this.parameterList[this.parameterSetNumber] : null;
   }
   
   override protected function createTest() : Object
   {
      var args:Array = this.computeParams();
      if(args && args.length > 0)
      {
         return testClass.klassInfo.constructor.newInstanceApply(args);
      }
      return testClass.klassInfo.constructor.newInstance();
   }
   
   override protected function classBlock(notifier:IRunNotifier) : IAsyncStatement
   {
      return childrenInvoker(notifier);
   }
}
