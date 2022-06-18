package §0!>§
{
   import §"J§.§7P§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §9Y§ implements IEventDispatcher
   {
      
      public static const §]! §:String = "StatePopupManager";
       
      
      protected var §5d§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§]! §);
         this.§5d§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         this.dispatchEvent(new §7P§(§7P§.§%9§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§5d§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§5d§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§5d§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§5d§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§5d§.willTrigger(param1);
      }
   }
}
