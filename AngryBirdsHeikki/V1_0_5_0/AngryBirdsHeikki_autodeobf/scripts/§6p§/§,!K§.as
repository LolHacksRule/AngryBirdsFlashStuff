package §6p§
{
   import §93§.§^!H§;
   import flash.events.Event;
   
   public class §,!K§ extends Event
   {
      
      public static const §+!,§:String = "onUiInteraction";
       
      
      public var §,Z§:int;
      
      public var §@!F§:String;
      
      public var §+!=§:§^!H§;
      
      public function §,!K§(param1:String, param2:int, param3:String, param4:§^!H§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§,Z§ = param2;
         this.§@!F§ = param3;
         this.§+!=§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §,!K§(type,this.§,Z§,this.§@!F§,this.§+!=§,bubbles,cancelable);
      }
   }
}
