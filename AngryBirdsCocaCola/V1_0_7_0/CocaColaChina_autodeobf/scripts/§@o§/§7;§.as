package §@O§
{
   import §2!$§.§<!%§;
   import flash.events.Event;
   
   public class §7;§ extends Event
   {
      
      public static const §;D§:String = "onUiInteraction";
       
      
      public var §2!<§:int;
      
      public var §<!R§:String;
      
      public var §+!P§:§<!%§;
      
      public function §7;§(param1:String, param2:int, param3:String, param4:§<!%§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§2!<§ = param2;
         this.§<!R§ = param3;
         this.§+!P§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §7;§(type,this.§2!<§,this.§<!R§,this.§+!P§,bubbles,cancelable);
      }
   }
}
