package §?!'§
{
   import §;<§.§'B§;
   import §@y§.§0=§;
   import §[!E§.§[!f§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §'B§ implements IEventDispatcher
   {
      
      public static const §%!Q§:String = "StatePopupManager";
       
      
      protected var §`">§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§%!Q§);
         this.§`">§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         this.dispatchEvent(new §[!f§(§[!f§.§`h§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§`">§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`">§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`">§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`">§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`">§.willTrigger(param1);
      }
   }
}
