package §9!6§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §;"L§ extends IEventDispatcher
   {
       
      
      function set § "e§(param1:Boolean) : void;
      
      function get § "e§() : Boolean;
      
      function set §;8§(param1:Rectangle) : void;
      
      function get §;8§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §7#%§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §6#o§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§7#%§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function § $'§() : void;
      
      function getOpenPopupById(param1:String) : §?!y§;
      
      function §!=§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
