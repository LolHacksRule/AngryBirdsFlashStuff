package § +§
{
   import §0!Q§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class §`!U§ extends Event
   {
      
      public static const UI_INTERACTION:String = "onUiInteraction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:UIEventListenerRovio;
      
      public function §`!U§(type:String, eventIndex:int, eventName:String, component:UIEventListenerRovio, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.eventIndex = eventIndex;
         this.eventName = eventName;
         this.component = component;
      }
      
      override public function clone() : Event
      {
         return new §`!U§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
