package org.flexunit.internals.runners.statements
{
   import flash.events.Event;
   import flash.net.Responder;
   import org.fluint.sequence.SequenceRunner;
   
   public interface IAsyncHandlingStatement
   {
       
      
      function get bodyExecuting() : Boolean;
      
      function asyncHandler(param1:Function, param2:int, param3:Object = null, param4:Function = null) : Function;
      
      function asyncErrorConditionHandler(param1:Function) : Function;
      
      function asyncNativeResponder(param1:Function, param2:Function, param3:int, param4:Object = null, param5:Function = null) : Responder;
      
      function failOnComplete(param1:Event, param2:Object) : void;
      
      function pendUntilComplete(param1:Event, param2:Object = null) : void;
      
      function handleNextSequence(param1:Event, param2:SequenceRunner) : void;
   }
}
