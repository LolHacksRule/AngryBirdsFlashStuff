package §7N§
{
   import §!!t§.§,-§;
   import §,b§.§4H§;
   import §1"2§.§,!]§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §,-§ implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
       
      
      protected var §<!u§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,STATE_NAME);
         this.§<!u§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         this.dispatchEvent(new §4H§(§4H§.§%!g§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§<!u§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§<!u§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§<!u§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§<!u§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§<!u§.willTrigger(param1);
      }
   }
}
