package §^!,§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §&Q§ extends IEventDispatcher
   {
       
      
      function set §3z§(param1:Boolean) : void;
      
      function get §3z§() : Boolean;
      
      function set §#"6§(param1:Rectangle) : void;
      
      function get §#"6§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §+[§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §+!y§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§+[§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void;
      
      function §=!z§() : void;
      
      function getOpenPopupById(param1:String) : §8!H§;
      
      function §5"'§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
