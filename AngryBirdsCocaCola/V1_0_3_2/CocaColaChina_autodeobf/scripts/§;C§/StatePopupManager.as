package §;C§
{
   import §!!L§.§&!R§;
   import §6!§.§%H§;
   import §6l§.§#!Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §&!R§ implements IEventDispatcher
   {
      
      public static const §'2§:String = "StatePopupManager";
       
      
      protected var § K§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§'2§);
         this.§ K§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         this.dispatchEvent(new §%H§(§%H§.§&!6§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§ K§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§ K§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§ K§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§ K§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§ K§.willTrigger(param1);
      }
   }
}
