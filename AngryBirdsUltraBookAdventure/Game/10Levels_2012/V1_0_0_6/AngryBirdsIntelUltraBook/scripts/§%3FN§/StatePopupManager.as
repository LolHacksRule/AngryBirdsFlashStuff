package §?N§
{
   import §+0§.§,!E§;
   import §,!7§.§@!4§;
   import §>7§.§,!c§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §,!E§ implements IEventDispatcher
   {
      
      public static const §"!s§:String = "StatePopupManager";
       
      
      protected var §-!Y§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§"!s§);
         this.§-!Y§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         this.dispatchEvent(new §@!4§(§@!4§.§!!o§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§-!Y§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§-!Y§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§-!Y§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-!Y§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-!Y§.willTrigger(param1);
      }
   }
}
