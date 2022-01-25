package §6!§
{
   import §6l§.§#!Z§;
   import flash.events.Event;
   
   public class §%H§ extends Event
   {
      
      public static const §&!6§:String = "onUiInteraction";
       
      
      public var §%+§:int;
      
      public var §=a§:String;
      
      public var §&2§:§#!Z§;
      
      public function §%H§(param1:String, param2:int, param3:String, param4:§#!Z§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§%+§ = param2;
         this.§=a§ = param3;
         this.§&2§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §%H§(type,this.§%+§,this.§=a§,this.§&2§,bubbles,cancelable);
      }
   }
}
