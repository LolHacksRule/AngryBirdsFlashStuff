package §1,§
{
   import §9c§.§,x§;
   import flash.events.Event;
   
   public class §,!H§ extends Event
   {
      
      public static const §2B§:String = "onUiInteraction";
       
      
      public var §@!3§:int;
      
      public var §;<§:String;
      
      public var §^I§:§,x§;
      
      public function §,!H§(param1:String, param2:int, param3:String, param4:§,x§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§@!3§ = param2;
         this.§;<§ = param3;
         this.§^I§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §,!H§(type,this.§@!3§,this.§;<§,this.§^I§,bubbles,cancelable);
      }
   }
}
