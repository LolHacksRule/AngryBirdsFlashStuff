package §@<§
{
   import §!!0§.§ true§;
   import §%Z§.§[%§;
   import §;!!§.§0H§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §0H§ implements IEventDispatcher
   {
      
      public static const §2`§:String = "StatePopupManager";
       
      
      protected var §7N§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§2`§);
         this.§7N§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         this.dispatchEvent(new §[%§(§[%§.§'8§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§7N§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§7N§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§7N§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§7N§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§7N§.willTrigger(param1);
      }
   }
}
