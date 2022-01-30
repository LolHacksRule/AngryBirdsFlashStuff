package §?N§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §+!J§ extends IEventDispatcher
   {
       
      
      function setViewSize(param1:int, param2:int) : void;
      
      function §7"#§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function §[U§(param1:String) : §;!E§;
      
      function addLayer(param1:int, param2:Boolean = true, param3:Rectangle = null, param4:Boolean = false) : §&j§;
      
      function setPersistentLayer(param1:int, param2:Boolean) : void;
      
      function openPopup(param1:§;!E§, param2:Boolean = false, param3:Boolean = false, param4:Boolean = true, param5:Boolean = false) : void;
      
      function closeAllPopups(param1:Boolean = false, param2:Boolean = true) : void;
      
      function closePopup(param1:int = -1, param2:Boolean = false, param3:Boolean = true, param4:Boolean = false) : void;
      
      function §2!l§(param1:String, param2:Boolean = false, param3:Boolean = true) : void;
      
      function §[k§(param1:String) : Boolean;
   }
}
