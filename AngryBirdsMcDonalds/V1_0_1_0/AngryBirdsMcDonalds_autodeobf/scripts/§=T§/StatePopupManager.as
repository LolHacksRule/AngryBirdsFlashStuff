package §=T§
{
   import §-1§.§%#§;
   import §8!X§.§'f§;
   import §^5§.§]!,§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §]!,§ implements IEventDispatcher
   {
      
      public static const §<P§:String = "StatePopupManager";
       
      
      protected var §6!0§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§<P§);
         this.§6!0§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         this.dispatchEvent(new §'f§(§'f§.§5a§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6!0§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6!0§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6!0§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6!0§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6!0§.willTrigger(param1);
      }
   }
}
