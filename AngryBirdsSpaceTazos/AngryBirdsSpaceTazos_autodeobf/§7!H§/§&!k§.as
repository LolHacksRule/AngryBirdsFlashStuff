package §7!H§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §&!k§ extends IEventDispatcher
   {
       
      
      function set §6!%§(param1:Boolean) : void;
      
      function get §6!%§() : Boolean;
      
      function set §0"!§(param1:Rectangle) : void;
      
      function get §0"!§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §'"H§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §,!<§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§'"H§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §<!N§() : void;
      
      function §'!Q§(param1:String) : §3z§;
      
      function §^",§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
