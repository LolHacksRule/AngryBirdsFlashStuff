package §-!;§
{
   import §,L§.§6!W§;
   import flash.events.Event;
   
   public class §>!B§ extends Event
   {
      
      public static const §7"&§:String = "ui_interaction";
       
      
      public var §3o§:int;
      
      public var §3!C§:String;
      
      public var §@! §:§6!W§;
      
      public function §>!B§(param1:String, param2:int, param3:String, param4:§6!W§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§3o§ = param2;
         this.§3!C§ = param3;
         this.§@! § = param4;
      }
      
      override public function clone() : Event
      {
         return new §>!B§(type,this.§3o§,this.§3!C§,this.§@! §,bubbles,cancelable);
      }
   }
}
