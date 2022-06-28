package §9v§
{
   import §>!<§.UIEventListenerRovio;
   import §[!>§.StateBase;
   import §[i§.§&'§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class StatePopupManager extends StateBase implements IEventDispatcher
   {
      
      public static const STATE_NAME:String = "StatePopupManager";
       
      
      protected var §%q§:EventDispatcher;
      
      public function StatePopupManager()
      {
         super(false,STATE_NAME);
         this.§%q§ = new EventDispatcher();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         this.dispatchEvent(new §&'§(§&'§.UI_INTERACTION,eventIndex,eventName,component));
      }
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.§%q§.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.§%q§.removeEventListener(type,listener,useCapture);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return this.§%q§.dispatchEvent(event);
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this.§%q§.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this.§%q§.willTrigger(type);
      }
   }
}
