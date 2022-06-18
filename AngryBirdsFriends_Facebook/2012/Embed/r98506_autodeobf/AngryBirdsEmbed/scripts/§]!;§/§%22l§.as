package §]!;§
{
   import §+n§.§^!%§;
   import flash.events.Event;
   
   public class §"l§ extends Event
   {
      
      public static const §+[§:String = "onUiInteraction";
       
      
      public var § 2§:int;
      
      public var §6O§:String;
      
      public var §"F§:§^!%§;
      
      public function §"l§(param1:String, param2:int, param3:String, param4:§^!%§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§ 2§ = param2;
         this.§6O§ = param3;
         this.§"F§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §"l§(type,this.§ 2§,this.§6O§,this.§"F§,bubbles,cancelable);
      }
   }
}
