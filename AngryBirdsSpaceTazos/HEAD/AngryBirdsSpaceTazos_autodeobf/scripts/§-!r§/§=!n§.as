package §-!r§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §=!n§ extends IEventDispatcher
   {
       
      
      function setViewSize(param1:int, param2:int) : void;
      
      function §"r§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function §`!G§(param1:String) : §+!B§;
      
      function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §@!u§;
      
      function setPersistentLayer(param1:int, param2:Boolean) : void;
      
      function openPopup(param1:§+!B§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void;
      
      function §;!7§(param1:Boolean = false, param2:Boolean = true) : void;
      
      function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void;
      
      function §,!N§(param1:String, param2:Boolean = false, param3:Boolean = true) : void;
   }
}
