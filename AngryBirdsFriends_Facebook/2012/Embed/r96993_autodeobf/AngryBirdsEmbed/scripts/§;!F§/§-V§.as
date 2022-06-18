package §;!F§
{
   import §!^§.§"%§;
   import flash.events.Event;
   
   public class §-V§ extends Event
   {
      
      public static const §%C§:String = "onUiInteraction";
       
      
      public var §^k§:int;
      
      public var §94§:String;
      
      public var §]!?§:§"%§;
      
      public function §-V§(param1:String, param2:int, param3:String, param4:§"%§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§^k§ = param2;
         this.§94§ = param3;
         this.§]!?§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §-V§(type,this.§^k§,this.§94§,this.§]!?§,bubbles,cancelable);
      }
   }
}
