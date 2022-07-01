package §1!i§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §]7§ extends IEventDispatcher
   {
       
      
      function set §,,§(param1:Boolean) : void;
      
      function get §,,§() : Boolean;
      
      function set §!!W§(param1:Rectangle) : void;
      
      function get §!!W§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §?O§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §&A§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§?O§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §4"3§() : void;
      
      function §;j§(param1:String) : §?!a§;
      
      function §8!5§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
