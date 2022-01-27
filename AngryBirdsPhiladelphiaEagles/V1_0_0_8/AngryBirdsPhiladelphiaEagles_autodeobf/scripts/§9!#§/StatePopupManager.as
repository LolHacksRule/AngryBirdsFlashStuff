package §9!#§
{
   import §+P§.§<!B§;
   import §5F§.§+!O§;
   import §^w§.§-!,§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §-!,§ implements IEventDispatcher
   {
      
      public static const §@§:String = "StatePopupManager";
       
      
      protected var §%B§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§@§);
         this.§%B§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         this.dispatchEvent(new §<!B§(§<!B§.§<N§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§%B§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§%B§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§%B§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§%B§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§%B§.willTrigger(param1);
      }
   }
}
