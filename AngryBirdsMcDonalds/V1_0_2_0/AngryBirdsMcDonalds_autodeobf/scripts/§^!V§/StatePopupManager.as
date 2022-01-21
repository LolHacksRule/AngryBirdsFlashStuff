package §^!V§
{
   import §"%§.§,!n§;
   import §2!6§.§^"§;
   import §6!Q§.§ !"§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends § !"§ implements IEventDispatcher
   {
      
      public static const §4D§:String = "StatePopupManager";
       
      
      protected var §'E§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§4D§);
         this.§'E§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         this.dispatchEvent(new §^"§(§^"§.§'!2§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§'E§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§'E§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§'E§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§'E§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§'E§.willTrigger(param1);
      }
   }
}
