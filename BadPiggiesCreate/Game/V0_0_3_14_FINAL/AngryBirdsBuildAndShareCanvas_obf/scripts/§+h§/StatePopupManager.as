package §+h§
{
   import §'!A§.§-!S§;
   import §5"-§.§5y§;
   import §6!U§.§+!!§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §5y§ implements IEventDispatcher
   {
      
      public static const §'=§:String = "StatePopupManager";
       
      
      protected var §9"<§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§'=§);
         this.§9"<§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         this.dispatchEvent(new §+!!§(§+!!§.§]!M§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§9"<§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§9"<§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§9"<§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§9"<§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§9"<§.willTrigger(param1);
      }
   }
}
