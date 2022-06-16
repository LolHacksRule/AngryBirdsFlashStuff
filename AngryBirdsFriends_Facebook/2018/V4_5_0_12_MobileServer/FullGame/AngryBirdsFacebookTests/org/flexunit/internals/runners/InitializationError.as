package org.flexunit.internals.runners
{
   public class InitializationError extends Error
   {
       
      
      private var _errors:Array;
      
      public function InitializationError(arg:*)
      {
         this._errors = new Array();
         if(arg is Array)
         {
            this._errors = arg;
         }
         else if(arg is String)
         {
            this._errors = new Array(new Error(arg));
         }
         else
         {
            this._errors = new Array(arg);
         }
         super("InitializationError",0);
      }
      
      public function getCauses() : Array
      {
         return this._errors;
      }
   }
}
