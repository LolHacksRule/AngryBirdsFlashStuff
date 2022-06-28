package §,!7§
{
   import §>7§.§,!c§;
   import flash.events.Event;
   
   public class §@!4§ extends Event
   {
      
      public static const §!!o§:String = "onUiInteraction";
       
      
      public var §5!X§:int;
      
      public var §[!1§:String;
      
      public var §,!^§:§,!c§;
      
      public function §@!4§(param1:String, param2:int, param3:String, param4:§,!c§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§5!X§ = param2;
         this.§[!1§ = param3;
         this.§,!^§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §@!4§(type,this.§5!X§,this.§[!1§,this.§,!^§,bubbles,cancelable);
      }
   }
}
