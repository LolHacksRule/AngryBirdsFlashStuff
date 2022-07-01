package §[<§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §7!2§ extends IEventDispatcher
   {
       
      
      function set §-!J§(param1:Boolean) : void;
      
      function get §-!J§() : Boolean;
      
      function set §7!3§(param1:Rectangle) : void;
      
      function get §7!3§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §=T§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §?f§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§=T§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function § !i§() : void;
      
      function §-!8§(param1:String) : §]!R§;
      
      function §1s§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
