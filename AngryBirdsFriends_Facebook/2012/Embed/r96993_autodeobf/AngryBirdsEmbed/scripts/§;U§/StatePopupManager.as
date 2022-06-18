package §;U§
{
   import §!^§.§"%§;
   import §;!F§.§-V§;
   import §[A§.§3!'§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §3!'§ implements IEventDispatcher
   {
      
      public static const §9"§:String = "StatePopupManager";
       
      
      protected var §@W§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§9"§);
         this.§@W§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         this.dispatchEvent(new §-V§(§-V§.§%C§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§@W§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§@W§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§@W§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§@W§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§@W§.willTrigger(param1);
      }
   }
}
