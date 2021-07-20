package §;!1§
{
   import § +§.§`!U§;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends StateBase implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
       
      
      protected var § !j§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,STATE_NAME);
         this.§ !j§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         this.dispatchEvent(new §`!U§(§`!U§.UI_INTERACTION,eventIndex,eventName,component));
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.§ !j§.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.§ !j§.removeEventListener(type,listener,useCapture);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return this.§ !j§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this.§ !j§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this.§ !j§.willTrigger(type);
      }
   }
}
