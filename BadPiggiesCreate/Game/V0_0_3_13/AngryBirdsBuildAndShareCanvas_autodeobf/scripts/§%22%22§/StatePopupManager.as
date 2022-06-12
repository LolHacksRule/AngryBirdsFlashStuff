package §""§
{
   import §,!@§.§&!j§;
   import §4!j§.§0p§;
   import §>!5§.§>!T§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §>!T§ implements IEventDispatcher
   {
      
      public static const §>H§:String = "StatePopupManager";
       
      
      protected var §!!v§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§>H§);
         this.§!!v§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         this.dispatchEvent(new §&!j§(§&!j§.§<G§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§!!v§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§!!v§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§!!v§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§!!v§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§!!v§.willTrigger(param1);
      }
   }
}
