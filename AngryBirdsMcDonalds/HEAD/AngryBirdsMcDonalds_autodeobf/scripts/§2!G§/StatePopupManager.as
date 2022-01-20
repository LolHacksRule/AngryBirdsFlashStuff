package §2!G§
{
   import §,!H§.§ for§;
   import §9s§.§!!`§;
   import §@-§.§[y§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends § for§ implements IEventDispatcher
   {
      
      public static const §>d§:String = "StatePopupManager";
       
      
      protected var §]0§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§>d§);
         this.§]0§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         this.dispatchEvent(new §!!`§(§!!`§.§5!R§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§]0§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§]0§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§]0§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]0§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§]0§.willTrigger(param1);
      }
   }
}
