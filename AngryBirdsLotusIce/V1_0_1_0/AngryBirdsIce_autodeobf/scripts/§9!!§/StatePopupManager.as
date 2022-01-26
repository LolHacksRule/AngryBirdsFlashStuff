package §9!!§
{
   import §5!<§.§'q§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §-§ implements IEventDispatcher
   {
      
      public static const §?B§:String = "StatePopupManager";
       
      
      protected var §9G§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§?B§);
         this.§9G§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         this.dispatchEvent(new §'q§(§'q§.§35§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§9G§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§9G§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§9G§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§9G§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§9G§.willTrigger(param1);
      }
   }
}
