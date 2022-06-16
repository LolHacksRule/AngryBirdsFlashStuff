package org.flexunit.experimental.theories
{
   public class PotentialAssignment implements IPotentialAssignment
   {
       
      
      public var value:Object;
      
      public var name:String;
      
      public function PotentialAssignment(name:String, value:Object)
      {
         super();
         this.name = name;
         this.value = value;
      }
      
      public static function forValue(name:String, value:Object) : PotentialAssignment
      {
         return new PotentialAssignment(name,value);
      }
      
      public function getValue() : Object
      {
         return this.value;
      }
      
      public function getDescription() : String
      {
         return this.name;
      }
      
      public function toString() : String
      {
         return this.name + " " + "[" + String(this.value) + "]";
      }
   }
}
