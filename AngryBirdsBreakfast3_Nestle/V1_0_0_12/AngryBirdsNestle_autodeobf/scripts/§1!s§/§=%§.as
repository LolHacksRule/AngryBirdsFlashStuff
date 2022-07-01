package §1!s§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §=%§ extends IEventDispatcher
   {
       
      
      function set §?Z§(param1:Boolean) : void;
      
      function get §?Z§() : Boolean;
      
      function set §;a§(param1:Rectangle) : void;
      
      function get §;a§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §]r§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §%q§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§]r§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §3!F§() : void;
      
      function §=f§(param1:String) : §+!y§;
      
      function §6!7§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
