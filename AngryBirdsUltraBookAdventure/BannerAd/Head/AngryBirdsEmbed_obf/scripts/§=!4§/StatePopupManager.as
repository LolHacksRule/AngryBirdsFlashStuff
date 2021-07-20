package §=!4§
{
   import §,!@§.§ a§;
   import §0!§.§0!5§;
   import §1h§.§@s§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §0!5§ implements IEventDispatcher
   {
      
      public static const §0!7§:String = "StatePopupManager";
       
      
      protected var §=!F§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§0!7§);
         this.§=!F§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
      {
         this.dispatchEvent(new § a§(§ a§.§&@§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§=!F§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§=!F§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§=!F§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§=!F§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§=!F§.willTrigger(param1);
      }
   }
}
