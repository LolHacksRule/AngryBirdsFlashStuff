package §]q§
{
   import §,§.§6!,§;
   import §5!5§.§1!b§;
   import §6@§.§[! §;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §1!b§ implements IEventDispatcher
   {
      
      public static const §!_§:String = "StatePopupManager";
       
      
      protected var §[U§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§!_§);
         this.§[U§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         this.dispatchEvent(new §6!,§(§6!,§.§;I§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§[U§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[U§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§[U§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[U§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[U§.willTrigger(param1);
      }
   }
}
