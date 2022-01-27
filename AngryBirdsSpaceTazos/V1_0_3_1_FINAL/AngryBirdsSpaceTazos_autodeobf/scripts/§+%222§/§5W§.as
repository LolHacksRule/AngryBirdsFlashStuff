package §+"2§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §5W§ extends IEventDispatcher
   {
       
      
      function set static(param1:Boolean) : void;
      
      function get static() : Boolean;
      
      function set §6"C§(param1:Rectangle) : void;
      
      function get §6"C§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §>!p§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §""6§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§>!p§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §]y§() : void;
      
      function §2p§(param1:String) : §<!X§;
      
      function §["5§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
