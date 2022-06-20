package § $0§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §1#q§ extends IEventDispatcher
   {
       
      
      function set §;"O§(param1:Boolean) : void;
      
      function get §;"O§() : Boolean;
      
      function set §]@§(param1:Rectangle) : void;
      
      function get §]@§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §#"K§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §7!0§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§#"K§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function §1"<§() : void;
      
      function getOpenPopupById(param1:String) : §,#@§;
      
      function §[#a§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
