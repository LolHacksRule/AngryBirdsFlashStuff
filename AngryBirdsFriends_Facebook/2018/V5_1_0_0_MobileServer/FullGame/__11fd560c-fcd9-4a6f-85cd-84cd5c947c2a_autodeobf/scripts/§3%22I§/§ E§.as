package §3"I§
{
   import §3#T§.§'§;
   import flash.events.Event;
   
   public class § E§ extends Event
   {
      
      public static const §=$1§:String = "ui_interaction";
       
      
      public var eventIndex:int;
      
      public var eventName:String;
      
      public var component:§'#0§;
      
      public function § E§(param1:String, param2:int, param3:String, param4:§'#0§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.eventIndex = param2;
         this.eventName = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new § E§(type,this.eventIndex,this.eventName,this.component,bubbles,cancelable);
      }
   }
}
