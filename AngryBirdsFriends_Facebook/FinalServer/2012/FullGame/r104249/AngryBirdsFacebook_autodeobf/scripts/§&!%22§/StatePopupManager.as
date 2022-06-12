package §&!"§
{
   import §!G§.§+!#§;
   import §;n§.§^!;§;
   import §=#§.§5!S§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §5!S§ implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
       
      
      protected var §2_§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,STATE_NAME);
         this.§2_§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         this.dispatchEvent(new §+!#§(§+!#§.§@=§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§2_§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§2_§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§2_§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§2_§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§2_§.willTrigger(param1);
      }
   }
}
