package §'!7§
{
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §]!;§.§"l§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §`U§ implements IEventDispatcher
   {
      
      public static const §?1§:String = "StatePopupManager";
       
      
      protected var §8_§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§?1§);
         this.§8_§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         this.dispatchEvent(new §"l§(§"l§.§+[§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§8_§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§8_§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§8_§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8_§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8_§.willTrigger(param1);
      }
   }
}
