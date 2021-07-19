package org.flexunit.events
{
   import flash.events.ErrorEvent;
   import flash.events.Event;
   
   public class UnknownError extends Error
   {
       
      
      public function UnknownError(event:Event)
      {
         var error:Error = null;
         var errorGeneric:* = undefined;
         var errorEvent:ErrorEvent = null;
         if(event.hasOwnProperty("error"))
         {
            errorGeneric = event["error"];
            if(errorGeneric is Error)
            {
               error = errorGeneric as Error;
            }
            else if(errorGeneric is ErrorEvent)
            {
               errorEvent = errorGeneric as ErrorEvent;
               error = new Error("Top Level Error",Object(errorEvent).errorID);
            }
         }
         super(error.message,error.errorID);
      }
   }
}
