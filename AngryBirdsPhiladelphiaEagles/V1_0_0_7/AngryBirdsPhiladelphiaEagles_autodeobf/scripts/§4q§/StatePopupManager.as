package §4q§
{
   import §5f§.§]_§;
   import §?!=§.§<!>§;
   import §[!M§.§"-§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends §<!>§ implements IEventDispatcher
   {
      
      public static const §4!C§:String = "StatePopupManager";
       
      
      protected var §]!!§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,§4!C§);
         this.§]!!§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         this.dispatchEvent(new §"-§(§"-§.§'>§,param1,param2,param3));
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§]!!§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§]!!§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return this.§]!!§.dispatchEvent(param1);
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]!!§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§]!!§.willTrigger(param1);
      }
   }
}
