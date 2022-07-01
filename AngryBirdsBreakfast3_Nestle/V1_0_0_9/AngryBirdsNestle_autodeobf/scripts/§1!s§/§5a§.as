package §1!s§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §5a§ extends IEventDispatcher
   {
       
      
      function setViewSize(param1:int, param2:int) : void;
      
      function §6!7§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function §=f§(param1:String) : §+!y§;
      
      function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §4!6§;
      
      function setPersistentLayer(param1:int, param2:Boolean) : void;
      
      function openPopup(param1:§+!y§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void;
      
      function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void;
      
      function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void;
      
      function §catch§(param1:String, param2:Boolean = false, param3:Boolean = true) : void;
      
      function §7!p§(param1:String) : Boolean;
   }
}
