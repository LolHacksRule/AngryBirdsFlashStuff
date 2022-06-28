package §2!i§
{
   import §>!-§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class §7"§ extends Event
   {
      
      public static const UI_INTERACTION:String = "onUiInteraction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:UIEventListenerRovio;
      
      public function §7"§(type:String, eventIndex:int, eventName:String, component:UIEventListenerRovio, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.eventIndex = eventIndex;
         this.eventName = eventName;
         this.component = component;
      }
      
      override public function clone() : Event
      {
         return new §7"§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
