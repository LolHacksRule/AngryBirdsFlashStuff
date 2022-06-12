package §0!s§
{
   import § !j§.§4#c§;
   import §&m§.§#U§;
   import flash.display.MovieClip;
   import flash.events.IEventDispatcher;
   
   public interface §5!-§ extends IEventDispatcher
   {
       
      
      function get id() : String;
      
      function get §^#l§() : int;
      
      function get priority() : int;
      
      function set priority(param1:int) : void;
      
      function get isTransitioning() : Boolean;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function open(param1:MovieClip, param2:§4#c§, param3:§#U§, param4:Boolean = false) : void;
      
      function close(param1:Boolean = false, param2:Boolean = true) : void;
   }
}
