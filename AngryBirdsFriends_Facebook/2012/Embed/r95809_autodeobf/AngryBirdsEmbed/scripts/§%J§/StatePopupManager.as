package §%J§
{
   import § '§.§`T§;
   import §"V§.§true§;
   import §8B§.§6!9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §true§ implements IEventDispatcher
   {
      
      public static const §4!&§:String = "StatePopupManager";
       
      
      protected var §!5§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§4!&§);
         this.§!5§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         this.dispatchEvent(new §`T§(§`T§.§=!,§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§!5§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§!5§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§!5§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§!5§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§!5§.willTrigger(param1);
      }
   }
}
