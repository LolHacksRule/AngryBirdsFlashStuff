package §-!r§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §#!'§ extends IEventDispatcher
   {
       
      
      function set §0O§(param1:Boolean) : void;
      
      function get §0O§() : Boolean;
      
      function set §@l§(param1:Rectangle) : void;
      
      function get §@l§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §>!L§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §4"!§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§>!L§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §[!;§() : void;
      
      function §`!G§(param1:String) : §+!B§;
      
      function §"r§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
