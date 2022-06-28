package § a§
{
   import §@s§.§'!0§;
   import flash.events.Event;
   
   public class §9%§ extends Event
   {
      
      public static const §2§:String = "onUiInteraction";
       
      
      public var §2w§:int;
      
      public var § m§:String;
      
      public var §&@§:§'!0§;
      
      public function §9%§(param1:String, param2:int, param3:String, param4:§'!0§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§2w§ = param2;
         this.§ m§ = param3;
         this.§&@§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §9%§(type,this.§2w§,this.§ m§,this.§&@§,bubbles,cancelable);
      }
   }
}
