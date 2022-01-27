package §2!!§
{
   import §'!N§.§%!E§;
   import §,!<§.§6!M§;
   import §62§.§!!G§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §6!M§ implements IEventDispatcher
   {
      
      public static const §=,§:String = "StatePopupManager";
       
      
      protected var §`!A§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§=,§);
         this.§`!A§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         this.dispatchEvent(new §!!G§(§!!G§.§-c§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§`!A§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`!A§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§`!A§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!A§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!A§.willTrigger(param1);
      }
   }
}
