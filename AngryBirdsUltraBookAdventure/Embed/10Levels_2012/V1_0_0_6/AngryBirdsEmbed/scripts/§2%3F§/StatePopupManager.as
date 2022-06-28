package §2?§
{
   import §+!3§.§"^§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §>3§ implements IEventDispatcher
   {
      
      public static const §-!A§:String = "StatePopupManager";
       
      
      protected var §8e§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§-!A§);
         this.§8e§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         this.dispatchEvent(new §"^§(§"^§.§1x§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§8e§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§8e§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§8e§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§8e§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§8e§.willTrigger(param1);
      }
   }
}
