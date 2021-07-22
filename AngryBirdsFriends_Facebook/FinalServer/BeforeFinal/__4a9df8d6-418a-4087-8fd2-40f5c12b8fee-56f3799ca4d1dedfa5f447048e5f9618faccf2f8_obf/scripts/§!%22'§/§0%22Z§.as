package §!"'§
{
   import §,!Q§.§6"n§;
   import flash.events.Event;
   
   public class §0"Z§ extends Event
   {
      
      public static const §0#,§:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:§6"n§;
      
      public function §0"Z§(param1:String, param2:int, param3:String, param4:§6"n§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §0"Z§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
