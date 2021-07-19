package §48§
{
   import flash.events.IEventDispatcher;
   import flash.geom.Rectangle;
   
   public interface §2`§ extends IEventDispatcher
   {
       
      
      function set §0""§(param1:Boolean) : void;
      
      function get §0""§() : Boolean;
      
      function set §%b§(param1:Rectangle) : void;
      
      function get §%b§() : Rectangle;
      
      function get index() : int;
      
      function get data() : §5!c§;
      
      function set isPersistentLayer(param1:Boolean) : void;
      
      function get isPersistentLayer() : Boolean;
      
      function §;!y§() : void;
      
      function setViewSize(param1:int, param2:int) : void;
      
      function openPopup(param1:§5!c§, param2:Boolean = false) : void;
      
      function closePopup(param1:Boolean = false, param2:Boolean = true) : void;
      
      function §9§() : void;
      
      function §0z§(param1:String) : §["#§;
      
      function §%&§() : Boolean;
      
      function isPopupOpenById(param1:String) : Boolean;
      
      function isTransitioning() : Boolean;
   }
}
