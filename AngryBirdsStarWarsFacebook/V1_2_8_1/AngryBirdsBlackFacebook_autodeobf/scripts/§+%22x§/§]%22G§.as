package §+"x§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §]"G§ extends IEventDispatcher
   {
       
      
      function set §@F§(param1:Boolean) : void;
      
      function get §@F§() : Boolean;
      
      function set §^!K§(param1:Rectangle) : void;
      
      function get §^!K§() : Rectangle;
      
      function get index() : int;
      
      function get data() : § !Y§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §`!%§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§ !Y§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §5"K§() : void;
      
      function §8!l§(param1:String) : §3!§;
      
      function §#"E§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
