package §'d§
{
   import §<!A§.§,!?§;
   import §?3§.§,1§;
   import §]!=§.§;!6§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §,!?§ implements IEventDispatcher
   {
      
      public static const §`W§:String = "StatePopupManager";
       
      
      protected var §!h§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§`W§);
         this.§!h§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         this.dispatchEvent(new §,1§(§,1§.§[!F§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§!h§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§!h§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§!h§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§!h§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§!h§.willTrigger(param1);
      }
   }
}
