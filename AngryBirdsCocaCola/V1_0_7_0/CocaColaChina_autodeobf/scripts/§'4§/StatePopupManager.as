package §'4§
{
   import §2!$§.§<!%§;
   import §6!@§.§ !!§;
   import §@O§.§7;§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends § !!§ implements IEventDispatcher
   {
      
      public static const §^6§:String = "StatePopupManager";
       
      
      protected var §>T§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§^6§);
         this.§>T§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         this.dispatchEvent(new §7;§(§7;§.§;D§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§>T§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§>T§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§>T§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§>T§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§>T§.willTrigger(param1);
      }
   }
}
