package org.flexunit.experimental.theories.internals
{
   import flex.lang.reflect.Constructor;
   import flex.lang.reflect.Method;
   import org.flexunit.experimental.theories.IParameterSupplier;
   import org.flexunit.experimental.theories.IPotentialAssignment;
   import org.flexunit.experimental.theories.ParameterSignature;
   import org.flexunit.experimental.theories.internals.error.CouldNotGenerateValueException;
   import org.flexunit.runners.model.TestClass;
   
   public class Assignments
   {
       
      
      public var assigned:Array;
      
      public var unassigned:Array;
      
      public var testClass:TestClass;
      
      public function Assignments(assigned:Array, unassigned:Array, testClass:TestClass)
      {
         super();
         this.assigned = assigned;
         this.unassigned = unassigned;
         this.testClass = testClass;
      }
      
      public static function allUnassigned(method:Method, testClass:TestClass) : Assignments
      {
         var signatures:Array = null;
         var constructor:Constructor = testClass.klassInfo.constructor;
         signatures = ParameterSignature.signaturesByContructor(constructor);
         signatures = signatures.concat(ParameterSignature.signaturesByMethod(method));
         return new Assignments(new Array(),signatures,testClass);
      }
      
      public function get complete() : Boolean
      {
         return this.unassigned.length == 0;
      }
      
      public function nextUnassigned() : ParameterSignature
      {
         return this.unassigned[0];
      }
      
      public function assignNext(source:IPotentialAssignment) : Assignments
      {
         var assigned:Array = this.assigned.slice();
         assigned.push(source);
         return new Assignments(assigned,this.unassigned.slice(1,this.unassigned.length),this.testClass);
      }
      
      public function getActualValues(start:int, stop:int, nullsOk:Boolean) : Array
      {
         var value:Object = null;
         var values:Array = new Array(stop - start);
         for(var i:int = start; i < stop; i++)
         {
            value = this.assigned[i].getValue();
            if(value == null && !nullsOk)
            {
               throw new CouldNotGenerateValueException();
            }
            values[i - start] = value;
         }
         return values;
      }
      
      public function potentialsForNextUnassigned() : Array
      {
         var unassigned:ParameterSignature = this.nextUnassigned();
         return this.getSupplier(unassigned).getValueSources(unassigned);
      }
      
      public function getSupplier(unassigned:ParameterSignature) : IParameterSupplier
      {
         var supplier:IParameterSupplier = this.getAnnotatedSupplier(unassigned);
         if(supplier != null)
         {
            return supplier;
         }
         return new AllMembersSupplier(this.testClass);
      }
      
      public function getAnnotatedSupplier(unassigned:ParameterSignature) : IParameterSupplier
      {
         return null;
      }
      
      public function getConstructorArguments(nullsOk:Boolean) : Array
      {
         return this.getActualValues(0,this.getConstructorParameterCount(),nullsOk);
      }
      
      public function getMethodArguments(nullsOk:Boolean) : Array
      {
         return this.getActualValues(this.getConstructorParameterCount(),this.assigned.length,nullsOk);
      }
      
      public function getAllArguments(nullsOk:Boolean) : Array
      {
         return this.getActualValues(0,this.assigned.length,nullsOk);
      }
      
      private function getConstructorParameterCount() : int
      {
         var constructor:Constructor = this.testClass.klassInfo.constructor;
         var signatures:Array = ParameterSignature.signaturesByContructor(constructor);
         return int(signatures.length);
      }
      
      public function getArgumentStrings(nullsOk:Boolean) : Array
      {
         var values:Array = new Array(this.assigned.length);
         for(var i:int = 0; i < values.length; i++)
         {
            values[i] = this.assigned[i].getDescription();
         }
         return values;
      }
      
      public function toString() : String
      {
         var str:String = "              Assignments :\n";
         str += "                  testClass:" + this.testClass + "\n";
         str += "                  assigned:" + this.assigned + "\n";
         return str + ("                  unassigned:" + this.unassigned);
      }
   }
}
