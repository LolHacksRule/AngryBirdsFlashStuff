package §+F§
{
   import §&!V§.§=O§;
   import §3!R§.§81§;
   import §8T§.§[!R§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §=O§ implements IEventDispatcher
   {
      
      public static const §<@§:String = "StatePopupManager";
       
      
      protected var §%!f§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§<@§);
         this.§%!f§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         this.dispatchEvent(new §[!R§(§[!R§.§11§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§%!f§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§%!f§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§%!f§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§%!f§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§%!f§.willTrigger(param1);
      }
   }
}
