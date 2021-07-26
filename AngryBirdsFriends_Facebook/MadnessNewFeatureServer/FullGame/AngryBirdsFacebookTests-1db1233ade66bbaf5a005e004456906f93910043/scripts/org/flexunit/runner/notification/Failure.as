package org.flexunit.runner.notification
{
   import flash.system.Capabilities;
   import org.flexunit.runner.IDescription;
   
   public class Failure
   {
       
      
      private var _description:IDescription;
      
      private var _exception:Error;
      
      public function Failure(description:IDescription, exception:Error)
      {
         super();
         this._description = description;
         this._exception = exception;
      }
      
      public function get testHeader() : String
      {
         return this.description.displayName;
      }
      
      public function get description() : IDescription
      {
         return this._description;
      }
      
      public function get exception() : Error
      {
         return this._exception;
      }
      
      public function toString() : String
      {
         return this.testHeader + ": " + this.message;
      }
      
      public function get stackTrace() : String
      {
         if(Capabilities.isDebugger)
         {
            return this.exception.getStackTrace();
         }
         return "";
      }
      
      public function get message() : String
      {
         return this.exception.message;
      }
   }
}
