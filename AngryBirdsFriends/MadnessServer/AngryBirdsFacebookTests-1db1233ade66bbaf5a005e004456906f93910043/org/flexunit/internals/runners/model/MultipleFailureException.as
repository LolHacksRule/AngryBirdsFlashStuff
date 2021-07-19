package org.flexunit.internals.runners.model
{
   public class MultipleFailureException extends Error
   {
       
      
      private var errors:Array;
      
      public function MultipleFailureException(errors:Array)
      {
         this.errors = errors;
         super("MultipleFailureException");
      }
      
      public function get failures() : Array
      {
         return this.errors;
      }
      
      public function addFailure(error:Error) : MultipleFailureException
      {
         if(!this.errors)
         {
            this.errors = new Array();
         }
         this.errors.push(error);
         return this;
      }
   }
}
