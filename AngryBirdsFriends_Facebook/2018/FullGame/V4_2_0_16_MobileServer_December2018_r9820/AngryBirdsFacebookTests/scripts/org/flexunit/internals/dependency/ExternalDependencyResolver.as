package org.flexunit.internals.dependency
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import flex.lang.reflect.Field;
   import flex.lang.reflect.Klass;
   import flex.lang.reflect.metadata.MetaDataAnnotation;
   import flex.lang.reflect.metadata.MetaDataArgument;
   import org.flexunit.constants.AnnotationArgumentConstants;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.internals.builders.MetaDataBuilder;
   import org.flexunit.runner.external.ExternalDependencyToken;
   import org.flexunit.runner.external.IExternalDependencyData;
   import org.flexunit.runner.external.IExternalDependencyLoader;
   import org.flexunit.runner.external.IExternalDependencyRunner;
   
   public class ExternalDependencyResolver extends EventDispatcher implements IExternalDependencyResolver
   {
      
      public static const ALL_DEPENDENCIES_FOR_RUNNER_RESOLVED:String = "runnerDependenciesResolved";
      
      public static const DEPENDENCY_FOR_RUNNER_FAILED:String = "runnerDependencyFailed";
      
      private static var metaDataBuilder:MetaDataBuilder;
       
      
      private var clazz:Class;
      
      private var dependencyMap:Dictionary;
      
      private var runner:IExternalDependencyRunner;
      
      public function ExternalDependencyResolver(clazz:Class, runner:IExternalDependencyRunner)
      {
         super();
         this.clazz = clazz;
         this.dependencyMap = new Dictionary();
         this.runner = runner;
         if(!metaDataBuilder)
         {
            metaDataBuilder = new MetaDataBuilder(null);
         }
      }
      
      public function get ready() : Boolean
      {
         return this.keyCount == 0;
      }
      
      private function executeDependencyLoader(loaderField:Field, targetField:Field) : void
      {
         var loaderObj:Object = null;
         var token:ExternalDependencyToken = null;
         if(loaderField && loaderField.isStatic)
         {
            loaderObj = loaderField.getObj(null);
            if(loaderObj is IExternalDependencyLoader)
            {
               token = (loaderObj as IExternalDependencyLoader).retrieveDependency(this.clazz);
               token.targetField = targetField;
               token.addResolver(this);
               this.dependencyMap[token] = targetField;
            }
         }
      }
      
      private function isDependencyValue(targetField:Field) : Boolean
      {
         var field:* = targetField.getObj(null);
         return field is IExternalDependencyData;
      }
      
      private function getLoaderField(klassInfo:Klass, metaDataAnnotation:MetaDataAnnotation) : Field
      {
         var argument:MetaDataArgument = null;
         var loaderField:Field = null;
         var loaderFieldName:String = null;
         arguments = metaDataAnnotation.arguments;
         for(var j:int = 0; j < arguments.length; j++)
         {
            argument = arguments[j] as MetaDataArgument;
            if(argument.key == AnnotationArgumentConstants.LOADER)
            {
               loaderFieldName = argument.value;
               loaderField = klassInfo.getField(loaderFieldName);
               break;
            }
         }
         return loaderField;
      }
      
      public function resolveDependencies() : Boolean
      {
         var targetField:Field = null;
         var metaDataAnnotation:MetaDataAnnotation = null;
         var loaderField:Field = null;
         var klassInfo:Klass = new Klass(this.clazz);
         var targetFields:Array = klassInfo.fields;
         var counter:uint = 0;
         for(var i:int = 0; i < targetFields.length; i++)
         {
            targetField = targetFields[i] as Field;
            if(targetField.isStatic)
            {
               metaDataAnnotation = targetField.getMetaData(AnnotationConstants.PARAMETERS);
               if(!metaDataAnnotation)
               {
                  metaDataAnnotation = targetField.getMetaData(AnnotationConstants.DATA_POINTS);
               }
               if(metaDataAnnotation != null && this.isDependencyValue(targetField))
               {
                  this.executeDependencyLoader(targetField,targetField);
                  counter++;
               }
               else if(metaDataAnnotation)
               {
                  loaderField = this.getLoaderField(klassInfo,metaDataAnnotation);
                  if(loaderField && targetField)
                  {
                     this.executeDependencyLoader(loaderField,targetField);
                     counter++;
                  }
               }
            }
         }
         return counter > 0;
      }
      
      private function get keyCount() : int
      {
         var key:* = undefined;
         var counter:int = 0;
         for(key in this.dependencyMap)
         {
            counter++;
         }
         return counter;
      }
      
      public function dependencyResolved(token:ExternalDependencyToken, data:Object) : void
      {
         var targetField:Field = token.targetField;
         var property:* = targetField.getObj(null);
         var clazz:Class = targetField.definedBy;
         if(!(property is IExternalDependencyData))
         {
            if(!(data is targetField.type))
            {
               throw new Error("Data Type mistmatch between returned data and field");
            }
            clazz[targetField.name] = data;
         }
         this.manageResponseCleanup(token);
         if(this.keyCount == 0)
         {
            dispatchEvent(new Event(ALL_DEPENDENCIES_FOR_RUNNER_RESOLVED));
         }
      }
      
      public function dependencyFailed(token:ExternalDependencyToken, errorMessage:String) : void
      {
         var key:* = undefined;
         var foundToken:ExternalDependencyToken = null;
         for(key in this.dependencyMap)
         {
            foundToken = key as ExternalDependencyToken;
            this.manageResponseCleanup(foundToken);
         }
         this.runner.externalDependencyError = errorMessage;
         dispatchEvent(new Event(DEPENDENCY_FOR_RUNNER_FAILED));
      }
      
      private function manageResponseCleanup(token:ExternalDependencyToken) : void
      {
         token.removeResolver(this);
         delete this.dependencyMap[token];
      }
      
      private function shouldResolveClass() : Boolean
      {
         return metaDataBuilder.canHandleClass(this.clazz);
      }
   }
}
