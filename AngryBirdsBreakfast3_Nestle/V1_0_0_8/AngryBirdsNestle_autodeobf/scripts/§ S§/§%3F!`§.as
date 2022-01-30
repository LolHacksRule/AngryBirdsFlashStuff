package § S§
{
   import §"!G§.§3!f§;
   import §0P§.§+!l§;
   import flash.display.MovieClip;
   import flash.events.IEventDispatcher;
   
   public interface §?!`§ extends IEventDispatcher
   {
       
      
      function get id() : String;
      
      function get §8!-§() : int;
      
      function get priority() : int;
      
      function set priority(param1:int) : void;
      
      function get isTransitioning() : Boolean;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function open(param1:MovieClip, param2:§3!f§, param3:§+!l§, param4:Boolean = false) : void;
      
      function close(param1:Boolean = false) : void;
   }
}
