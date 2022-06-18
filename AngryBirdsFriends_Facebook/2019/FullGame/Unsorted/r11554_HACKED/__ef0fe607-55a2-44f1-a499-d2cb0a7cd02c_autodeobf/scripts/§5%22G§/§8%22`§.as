package §5"G§
{
   import §4!n§.§'!,§;
   import flash.events.Event;
   
   public class §8"`§ extends Event
   {
      
      public static const §,$A§:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:§'!,§;
      
      public function §8"`§(param1:String, param2:int, param3:String, param4:§'!,§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §8"`§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
