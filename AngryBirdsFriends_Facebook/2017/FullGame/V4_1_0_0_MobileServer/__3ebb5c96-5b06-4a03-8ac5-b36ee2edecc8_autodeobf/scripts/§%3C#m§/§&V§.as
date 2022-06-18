package §<#m§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §&V§ extends IEventDispatcher
   {
       
      
      function set §!K§(param1:Boolean) : void;
      
      function get §!K§() : Boolean;
      
      function set §?#w§(param1:Rectangle) : void;
      
      function get §?#w§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §`"g§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §3#Q§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§`"g§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function §^#q§() : void;
      
      function getOpenPopupById(param1:String) : §!"<§;
      
      function §`$§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
