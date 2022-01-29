package §1!=§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §6!<§ extends IEventDispatcher
   {
       
      
      function set §^$A§(param1:Boolean) : void;
      
      function get §^$A§() : Boolean;
      
      function set §'#C§(param1:Rectangle) : void;
      
      function get §'#C§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §>"q§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §4#p§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§>"q§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function §4!1§() : void;
      
      function getOpenPopupById(param1:String) : §%#;§;
      
      function §#"q§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
