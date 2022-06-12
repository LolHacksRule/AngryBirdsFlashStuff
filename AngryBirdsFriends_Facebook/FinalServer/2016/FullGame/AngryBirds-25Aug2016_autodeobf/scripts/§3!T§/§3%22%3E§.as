package §3!T§
{
   import §'!U§.§0!?§;
   import flash.events.Event;
   
   public class §3">§ extends Event
   {
      
      public static const §6!3§:String = "ui_interaction";
       
      
      public var §##I§:int;
      
      public var eventName:String;
      
      public var §##M§:§0!?§;
      
      public function §3">§(param1:String, param2:int, param3:String, param4:§0!?§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§##I§ = param2;
         this.eventName = param3;
         this.§##M§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §3">§(type,this.§##I§,this.eventName,this.§##M§,bubbles,cancelable);
      }
   }
}
