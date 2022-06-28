package §[i§
{
   import §>!<§.UIEventListenerRovio;
   import flash.events.Event;
   
   public class §&'§ extends Event
   {
      
      public static const UI_INTERACTION:String = "onUiInteraction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:UIEventListenerRovio;
      
      public function §&'§(type:String, eventIndex:int, eventName:String, component:UIEventListenerRovio, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.eventIndex = eventIndex;
         this.eventName = eventName;
         this.component = component;
      }
      
      override public function clone() : Event
      {
         return new §&'§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
