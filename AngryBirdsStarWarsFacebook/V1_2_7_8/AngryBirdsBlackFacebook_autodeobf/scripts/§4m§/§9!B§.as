package §4m§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §9!B§ extends IEventDispatcher
   {
       
      
      function set §;!R§(param1:Boolean) : void;
      
      function get §;!R§() : Boolean;
      
      function set §3#"§(param1:Rectangle) : void;
      
      function get §3#"§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §'!c§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function § x§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§'!c§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §="4§() : void;
      
      function §?"_§(param1:String) : §5!R§;
      
      function §;"<§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
