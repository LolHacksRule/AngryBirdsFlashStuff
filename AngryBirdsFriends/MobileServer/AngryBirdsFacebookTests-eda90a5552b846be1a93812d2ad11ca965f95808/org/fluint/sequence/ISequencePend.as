package org.fluint.sequence
{
   public interface ISequencePend extends ISequenceStep
   {
       
      
      function get eventName() : String;
      
      function get timeout() : int;
      
      function get timeoutHandler() : Function;
      
      function setupListeners(param1:*, param2:SequenceRunner) : void;
   }
}
