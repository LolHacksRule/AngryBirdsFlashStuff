package §-!@§
{
   import §%!,§.§,v§;
   import §=!2§.§65§;
   import §^x§.§<!w§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §,v§ implements IEventDispatcher
   {
      
      public static const §8n§:String = "StatePopupManager";
       
      
      protected var §6&§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§8n§);
         this.§6&§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         this.dispatchEvent(new §65§(§65§.§]!7§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§6&§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§6&§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§6&§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§6&§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§6&§.willTrigger(param1);
      }
   }
}
