package §,b§
{
   import §1"2§.§,!]§;
   import flash.events.Event;
   
   public class §4H§ extends Event
   {
      
      public static const §%!g§:String = "onUiInteraction";
       
      
      public var §@`§:int;
      
      public var §@C§:String;
      
      public var §5!+§:§,!]§;
      
      public function §4H§(param1:String, param2:int, param3:String, param4:§,!]§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§@`§ = param2;
         this.§@C§ = param3;
         this.§5!+§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §4H§(type,this.§@`§,this.§@C§,this.§5!+§,bubbles,cancelable);
      }
   }
}
