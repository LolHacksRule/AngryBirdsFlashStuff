package §]c§
{
   import §2H§.§>!^§;
   import §6p§.§,!K§;
   import §93§.§^!H§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §>!^§ implements IEventDispatcher
   {
      
      public static const §4l§:String = "StatePopupManager";
       
      
      protected var §3i§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§4l§);
         this.§3i§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         this.dispatchEvent(new §,!K§(§,!K§.§+!,§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§3i§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§3i§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§3i§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§3i§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§3i§.willTrigger(param1);
      }
   }
}
