package §]n§
{
   import § !C§.§6!W§;
   import §&V§.§9t§;
   import §?8§.§%!]§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §6!W§ implements IEventDispatcher
   {
      
      public static const § !P§:String = "StatePopupManager";
       
      
      protected var §--§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§ !P§);
         this.§--§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         this.dispatchEvent(new §%!]§(§%!]§.§]V§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§--§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§--§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§--§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§--§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§--§.willTrigger(param1);
      }
   }
}
