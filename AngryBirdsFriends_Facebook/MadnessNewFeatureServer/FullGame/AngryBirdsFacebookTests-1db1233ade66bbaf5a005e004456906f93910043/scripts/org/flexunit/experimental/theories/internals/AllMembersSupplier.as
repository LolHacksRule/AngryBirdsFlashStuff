package org.flexunit.experimental.theories.internals
{
   import flex.lang.reflect.Field;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.experimental.theories.IParameterSupplier;
   import org.flexunit.experimental.theories.ParameterSignature;
   import org.flexunit.experimental.theories.PotentialAssignment;
   import org.flexunit.runner.external.IExternalDependencyData;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.runners.model.TestClass;
   
   public class AllMembersSupplier implements IParameterSupplier
   {
       
      
      private var testClass:TestClass;
      
      public function AllMembersSupplier(testClass:TestClass)
      {
         super();
         this.testClass = testClass;
      }
      
      public function getValueSources(sig:ParameterSignature) : Array
      {
         var list:Array = new Array();
         this.addFields(sig,list);
         this.addSinglePointMethods(sig,list);
         this.addMultiPointMethods(sig,list);
         return list;
      }
      
      private function addFields(sig:ParameterSignature, list:Array) : void
      {
         var field:Field = null;
         var fields:Array = this.testClass.klassInfo.fields;
         for(var i:int = 0; i < fields.length; i++)
         {
            field = fields[i] as Field;
            if(field.isStatic)
            {
               if(sig.canAcceptArrayType(field) && field.hasMetaData(AnnotationConstants.DATA_POINTS))
               {
                  this.addArrayValues(field.name,list,this.getStaticFieldValue(field));
               }
               else if(sig.canAcceptType(field.type) && field.hasMetaData(AnnotationConstants.DATA_POINT))
               {
                  list.push(PotentialAssignment.forValue(field.name,this.getStaticFieldValue(field)));
               }
               else if(field.getObj() is IExternalDependencyData && field.hasMetaData(AnnotationConstants.DATA_POINTS))
               {
                  this.addArrayValues(field.name,list,this.getExternalFieldValue(field));
               }
            }
         }
      }
      
      private function addSinglePointMethods(sig:ParameterSignature, list:Array) : void
      {
         var dataPointMethod:FrameworkMethod = null;
         var type:Class = null;
         var methods:Array = this.testClass.getMetaDataMethods(AnnotationConstants.DATA_POINT);
         for(var i:int = 0; i < methods.length; i++)
         {
            dataPointMethod = methods[i] as FrameworkMethod;
            type = sig.type;
            if(dataPointMethod.producesType(type))
            {
               list.push(new MethodParameterValue(dataPointMethod));
            }
         }
      }
      
      private function addMultiPointMethods(sig:ParameterSignature, list:Array) : void
      {
         var dataPointsMethod:FrameworkMethod = null;
         var type:Class = null;
         var methods:Array = this.testClass.getMetaDataMethods(AnnotationConstants.DATA_POINTS);
         for(var i:int = 0; i < methods.length; i++)
         {
            dataPointsMethod = methods[i] as FrameworkMethod;
            try
            {
               if(sig.canAcceptArrayTypeMethod(dataPointsMethod))
               {
                  this.addArrayValues(dataPointsMethod.name,list,dataPointsMethod.invokeExplosively(null));
               }
            }
            catch(e:Error)
            {
               continue;
            }
         }
      }
      
      private function addArrayValues(name:String, list:Array, array:Object) : void
      {
         for(var i:int = 0; i < (array as Array).length; i++)
         {
            list.push(PotentialAssignment.forValue(name + "[" + i + "]",array[i]));
         }
      }
      
      private function getStaticFieldValue(field:Field) : Object
      {
         try
         {
            return field.getObj(null);
         }
         catch(e:TypeError)
         {
            throw new Error("unexpected: field from getClass doesn\'t exist on object");
         }
      }
      
      private function getExternalFieldValue(field:Field) : Object
      {
         var loader:IExternalDependencyData = null;
         try
         {
            loader = field.getObj(null) as IExternalDependencyData;
            return loader.data;
         }
         catch(e:TypeError)
         {
            throw new Error("Unable to retrieve data from IExternalDependencyData source");
         }
      }
   }
}

import org.flexunit.experimental.theories.IPotentialAssignment;
import org.flexunit.experimental.theories.internals.error.CouldNotGenerateValueException;
import org.flexunit.runners.model.FrameworkMethod;

class MethodParameterValue implements IPotentialAssignment
{
    
   
   private var method:FrameworkMethod;
   
   function MethodParameterValue(dataPointMethod:FrameworkMethod)
   {
      super();
      this.method = dataPointMethod;
   }
   
   public function getValue() : Object
   {
      try
      {
         return this.method.invokeExplosively(null);
      }
      catch(e:TypeError)
      {
         throw new Error("unexpected: argument length is checked");
      }
      catch(e:Error)
      {
         throw new CouldNotGenerateValueException();
      }
   }
   
   public function getDescription() : String
   {
      return this.method.name;
   }
   
   public function toString() : String
   {
      return this.method.method.name;
   }
}
