package §6!C§
{
   import §&E§.§1!A§;
   import §0!#§.§-P§;
   import §7g§.§1Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §1Q§ implements IEventDispatcher
   {
      
      public static const §>9§:String = "StatePopupManager";
       
      
      protected var §?A§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§>9§);
         this.§?A§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         this.dispatchEvent(new §1!A§(§1!A§.§@!&§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§?A§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§?A§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§?A§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§?A§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§?A§.willTrigger(param1);
      }
   }
}
