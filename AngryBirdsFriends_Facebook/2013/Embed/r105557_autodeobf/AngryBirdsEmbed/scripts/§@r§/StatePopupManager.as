package §@r§
{
   import § if§.§2q§;
   import §";§.§%!D§;
   import §1t§.§`!B§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §2q§ implements IEventDispatcher
   {
      
      public static const §&! §:String = "StatePopupManager";
       
      
      protected var §0Y§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§&! §);
         this.§0Y§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         this.dispatchEvent(new §%!D§(§%!D§.§[C§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§0Y§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§0Y§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§0Y§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0Y§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0Y§.willTrigger(param1);
      }
   }
}
