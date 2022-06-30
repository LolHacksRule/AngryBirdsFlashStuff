package §20§
{
   import §-!"§.§=p§;
   import §3Q§.§+!]§;
   import §8P§.§1A§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §=p§ implements IEventDispatcher
   {
      
      public static const §@o§:String = "StatePopupManager";
       
      
      protected var §6U§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§@o§);
         this.§6U§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         this.dispatchEvent(new §+!]§(§+!]§.§0!S§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6U§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6U§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6U§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6U§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6U§.willTrigger(param1);
      }
   }
}
