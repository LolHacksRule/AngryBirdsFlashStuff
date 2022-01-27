package §>R§
{
   import flash.events.Event;
   import §var§.§+!^§;
   
   public class §4%§ extends Event
   {
      
      public static const §"! §:String = "onUiInteraction";
       
      
      public var §'P§:int;
      
      public var §@O§:String;
      
      public var §!J§:§+!^§;
      
      public function §4%§(param1:String, param2:int, param3:String, param4:§+!^§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§'P§ = param2;
         this.§@O§ = param3;
         this.§!J§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §4%§(type,this.§'P§,this.§@O§,this.§!J§,bubbles,cancelable);
      }
   }
}
