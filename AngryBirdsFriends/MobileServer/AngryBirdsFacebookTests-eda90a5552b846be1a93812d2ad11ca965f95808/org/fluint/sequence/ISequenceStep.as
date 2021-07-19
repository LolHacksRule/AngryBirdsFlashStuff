package org.fluint.sequence
{
   import flash.events.IEventDispatcher;
   
   public interface ISequenceStep
   {
       
      
      function get target() : IEventDispatcher;
   }
}
