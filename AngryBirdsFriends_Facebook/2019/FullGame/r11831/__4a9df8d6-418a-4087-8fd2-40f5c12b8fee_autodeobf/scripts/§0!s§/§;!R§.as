package §0!s§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §;!R§ extends IEventDispatcher
   {
       
      
      function set §84§(param1:Boolean) : void;
      
      function get §84§() : Boolean;
      
      function set §^!U§(param1:Rectangle) : void;
      
      function get §^!U§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §9"r§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §%^§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§9"r§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function §"!?§() : void;
      
      function getOpenPopupById(param1:String) : §5!-§;
      
      function §?"N§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
