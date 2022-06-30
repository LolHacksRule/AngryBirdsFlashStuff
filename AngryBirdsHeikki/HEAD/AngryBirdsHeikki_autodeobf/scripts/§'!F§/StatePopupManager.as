package §'!F§
{
   import §+!M§.§7!0§;
   import §9!f§.§3!N§;
   import §>!G§.§6!9§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §6!9§ implements IEventDispatcher
   {
      
      public static const §[!%§:String = "StatePopupManager";
       
      
      protected var §4! §:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§[!%§);
         this.§4! § = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         this.dispatchEvent(new §3!N§(§3!N§.§+<§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§4! §.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§4! §.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§4! §.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4! §.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4! §.willTrigger(param1);
      }
   }
}
