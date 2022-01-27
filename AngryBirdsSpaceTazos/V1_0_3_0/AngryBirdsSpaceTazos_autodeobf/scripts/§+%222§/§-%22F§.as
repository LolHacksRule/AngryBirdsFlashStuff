package §+"2§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §-"F§ extends IEventDispatcher
   {
       
      
      function setViewSize(param1:int, param2:int) : void;
      
      function §["5§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function §2p§(param1:String) : §<!X§;
      
      function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §5!M§;
      
      function setPersistentLayer(param1:int, param2:Boolean) : void;
      
      function openPopup(param1:§<!X§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void;
      
      function §`x§(param1:Boolean = false, param2:Boolean = true) : void;
      
      function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void;
      
      function §+!$§(param1:String, param2:Boolean = false, param3:Boolean = true) : void;
   }
}
