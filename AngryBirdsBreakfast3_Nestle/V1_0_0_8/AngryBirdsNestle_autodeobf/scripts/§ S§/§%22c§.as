package § S§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §"c§ extends IEventDispatcher
   {
       
      
      function set §<!U§(param1:Boolean) : void;
      
      function get §<!U§() : Boolean;
      
      function set §>c§(param1:Rectangle) : void;
      
      function get §>c§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §@0§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §;"4§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§@0§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §9>§() : void;
      
      function §each §(param1:String) : §?!`§;
      
      function § !I§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
