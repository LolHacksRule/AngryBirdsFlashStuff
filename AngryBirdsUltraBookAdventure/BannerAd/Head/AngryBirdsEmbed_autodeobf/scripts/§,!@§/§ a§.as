package §,!@§
{
   import §1h§.§@s§;
   import flash.events.Event;
   
   public class § a§ extends Event
   {
      
      public static const §&@§:String = "onUiInteraction";
       
      
      public var §9%§:int;
      
      public var §2w§:String;
      
      public var § m§:§@s§;
      
      public function § a§(param1:String, param2:int, param3:String, param4:§@s§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§9%§ = param2;
         this.§2w§ = param3;
         this.§ m§ = param4;
      }
      
      override public function clone() : Event
      {
         return new § a§(type,this.§9%§,this.§2w§,this.§ m§,bubbles,cancelable);
      }
   }
}
