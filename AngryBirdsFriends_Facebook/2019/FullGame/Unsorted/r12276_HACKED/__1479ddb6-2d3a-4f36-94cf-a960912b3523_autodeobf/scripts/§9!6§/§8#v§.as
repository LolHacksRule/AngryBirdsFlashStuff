package §9!6§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §8#v§ extends IEventDispatcher
   {
       
      
      function setViewSize(param1:int, param2:int) : void;
      
      function §!=§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function getOpenPopupById(param1:String) : §?!y§;
      
      function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §`!C§;
      
      function §1#^§(param1:int, param2:Boolean) : void;
      
      function openPopup(param1:§?!y§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void;
      
      function §&"r§(param1:Boolean = false, param2:Boolean = true) : void;
      
      function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void;
      
      function §>#g§(param1:String, param2:Boolean = false, param3:Boolean = true) : void;
      
      function isPopupInQueueById(param1:String) : Boolean;
   }
}
