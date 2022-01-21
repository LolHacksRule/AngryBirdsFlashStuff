package §,§
{
   import §6@§.§[! §;
   import flash.events.Event;
   
   public class §6!,§ extends Event
   {
      
      public static const §;I§:String = "onUiInteraction";
       
      
      public var §=v§:int;
      
      public var § !I§:String;
      
      public var §+!P§:§[! §;
      
      public function §6!,§(param1:String, param2:int, param3:String, param4:§[! §, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§=v§ = param2;
         this.§ !I§ = param3;
         this.§+!P§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §6!,§(type,this.§=v§,this.§ !I§,this.§+!P§,bubbles,cancelable);
      }
   }
}
