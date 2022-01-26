package §##§
{
   import §0X§.§7!+§;
   import §`<§.§,!6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import §in§.§%K§;
   
   public class StatePopupManager extends §,!6§ implements IEventDispatcher
   {
      
      public static const §`%§:String = "StatePopupManager";
       
      
      protected var §1e§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§`%§);
         this.§1e§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         this.dispatchEvent(new §7!+§(§7!+§.§95§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§1e§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1e§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§1e§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1e§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1e§.willTrigger(param1);
      }
   }
}
