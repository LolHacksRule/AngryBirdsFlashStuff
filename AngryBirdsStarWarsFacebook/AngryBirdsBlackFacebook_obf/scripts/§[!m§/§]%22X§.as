package §[!m§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §]"X§ extends IEventDispatcher
   {
       
      
      function set §3!-§(param1:Boolean) : void;
      
      function get §3!-§() : Boolean;
      
      function set §%#_§(param1:Rectangle) : void;
      
      function get §%#_§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §1!v§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §-"1§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§1!v§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §=#@§() : void;
      
      function § #6§(param1:String) : §[!j§;
      
      function §""n§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
