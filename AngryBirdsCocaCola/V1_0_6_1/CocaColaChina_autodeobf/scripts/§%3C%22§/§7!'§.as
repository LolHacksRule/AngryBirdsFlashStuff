package §<"§
{
   import §7!H§.§12§;
   import flash.events.Event;
   
   public class §7!'§ extends Event
   {
      
      public static const §=&§:String = "onUiInteraction";
       
      
      public var §,!<§:int;
      
      public var §`+§:String;
      
      public var §<?§:§12§;
      
      public function §7!'§(param1:String, param2:int, param3:String, param4:§12§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§,!<§ = param2;
         this.§`+§ = param3;
         this.§<?§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §7!'§(type,this.§,!<§,this.§`+§,this.§<?§,bubbles,cancelable);
      }
   }
}
