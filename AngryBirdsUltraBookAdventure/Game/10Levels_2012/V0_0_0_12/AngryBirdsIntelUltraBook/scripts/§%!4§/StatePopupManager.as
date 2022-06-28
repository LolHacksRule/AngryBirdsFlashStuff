package §%!4§
{
   import §2!i§.§7"§;
   import §4H§.StateBase;
   import §>!-§.UIEventListenerRovio;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends StateBase implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
       
      
      protected var §2K§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,STATE_NAME);
         this.§2K§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         this.dispatchEvent(new §7"§(§7"§.UI_INTERACTION,eventIndex,eventName,component));
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.§2K§.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.§2K§.removeEventListener(type,listener,useCapture);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return this.§2K§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this.§2K§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this.§2K§.willTrigger(type);
      }
   }
}
