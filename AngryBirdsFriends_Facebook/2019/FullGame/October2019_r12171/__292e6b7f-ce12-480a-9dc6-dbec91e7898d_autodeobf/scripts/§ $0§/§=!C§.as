package § $0§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §=!C§ extends IEventDispatcher
   {
       
      
      function setViewSize(param1:int, param2:int) : void;
      
      function §[#a§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function getOpenPopupById(param1:String) : §,#@§;
      
      function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §%!z§;
      
      function §#c§(param1:int, param2:Boolean) : void;
      
      function openPopup(param1:§,#@§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void;
      
      function §8"5§(param1:Boolean = false, param2:Boolean = true) : void;
      
      function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void;
      
      function §0"O§(param1:String, param2:Boolean = false, param3:Boolean = true) : void;
      
      function isPopupInQueueById(param1:String) : Boolean;
   }
}
