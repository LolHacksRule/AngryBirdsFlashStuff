package §[!^§
{
   import §4;§.§,h§;
   import §>R§.§4%§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import §var§.§+!^§;
   
   public class StatePopupManager extends §,h§ implements IEventDispatcher
   {
      
      public static const §6! §:String = "StatePopupManager";
       
      
      protected var §3!Y§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§6! §);
         this.§3!Y§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         this.dispatchEvent(new §4%§(§4%§.§"! §,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§3!Y§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§3!Y§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§3!Y§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§3!Y§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§3!Y§.willTrigger(param1);
      }
   }
}
