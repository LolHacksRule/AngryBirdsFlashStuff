package §?N§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §9!?§ extends IEventDispatcher
   {
       
      
      function set §try §(param1:Boolean) : void;
      
      function get §try §() : Boolean;
      
      function set §[J§(param1:Rectangle) : void;
      
      function get §[J§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §!q§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §'" §() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§!q§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §9h§() : void;
      
      function §[U§(param1:String) : §;!E§;
      
      function §7"#§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
