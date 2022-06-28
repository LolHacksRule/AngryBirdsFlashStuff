package §9!y§
{
   import §6F§.§+!k§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §?Y§ implements IEventDispatcher
   {
      
      public static const §?h§:String = "StatePopupManager";
       
      
      protected var §6Z§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§?h§);
         this.§6Z§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         this.dispatchEvent(new §+!k§(§+!k§.§=m§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6Z§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6Z§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6Z§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6Z§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6Z§.willTrigger(param1);
      }
   }
}
