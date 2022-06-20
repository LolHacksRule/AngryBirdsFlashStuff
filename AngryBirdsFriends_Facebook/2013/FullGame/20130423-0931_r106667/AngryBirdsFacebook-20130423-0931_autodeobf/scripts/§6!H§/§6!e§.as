package §6!H§
{
   import §1!t§.§""B§;
   import flash.events.Event;
   
   public class §6!e§ extends Event
   {
      
      public static const §1" §:String = "onUiInteraction";
       
      
      public var §0!!§:int;
      
      public var §,§:String;
      
      public var §`]§:§""B§;
      
      public function §6!e§(param1:String, param2:int, param3:String, param4:§""B§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§0!!§ = param2;
         this.§,§ = param3;
         this.§`]§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §6!e§(type,this.§0!!§,this.§,§,this.§`]§,bubbles,cancelable);
      }
   }
}
