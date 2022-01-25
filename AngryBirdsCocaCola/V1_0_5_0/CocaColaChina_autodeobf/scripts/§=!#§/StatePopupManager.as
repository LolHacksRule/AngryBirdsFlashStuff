package §=!#§
{
   import §7!H§.§12§;
   import §<"§.§7!'§;
   import §@W§.§2!_§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §2!_§ implements IEventDispatcher
   {
      
      public static const §^!O§:String = "StatePopupManager";
       
      
      protected var §6!F§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§^!O§);
         this.§6!F§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         this.dispatchEvent(new §7!'§(§7!'§.§=&§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6!F§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6!F§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6!F§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6!F§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6!F§.willTrigger(param1);
      }
   }
}
