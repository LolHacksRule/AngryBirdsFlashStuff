package §2"§
{
   import §2!<§.§<!R§;
   import §6!@§.§ !!§;
   import §7]§.§;T§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends § !!§ implements IEventDispatcher
   {
      
      public static const §^6§:String = "StatePopupManager";
       
      
      protected var §1%§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§^6§);
         this.§1%§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         this.dispatchEvent(new §<!R§(§<!R§.§]!K§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1%§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1%§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1%§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1%§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1%§.willTrigger(param1);
      }
   }
}
