package §6F§
{
   import §9Y§.§6!8§;
   import flash.events.Event;
   
   public class §+!k§ extends Event
   {
      
      public static const §=m§:String = "onUiInteraction";
       
      
      public var §1![§:int;
      
      public var §?n§:String;
      
      public var §>$§:§6!8§;
      
      public function §+!k§(param1:String, param2:int, param3:String, param4:§6!8§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§1![§ = param2;
         this.§?n§ = param3;
         this.§>$§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §+!k§(type,this.§1![§,this.§?n§,this.§>$§,bubbles,cancelable);
      }
   }
}
