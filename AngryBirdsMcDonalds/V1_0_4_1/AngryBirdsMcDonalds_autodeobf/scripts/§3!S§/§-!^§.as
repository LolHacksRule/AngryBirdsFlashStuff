package §3!S§
{
   import §+$§.§[!a§;
   import flash.events.Event;
   
   public class §-!^§ extends Event
   {
      
      public static const §?!G§:String = "onUiInteraction";
       
      
      public var §`[§:int;
      
      public var §&!F§:String;
      
      public var §?B§:§[!a§;
      
      public function §-!^§(param1:String, param2:int, param3:String, param4:§[!a§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§`[§ = param2;
         this.§&!F§ = param3;
         this.§?B§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §-!^§(type,this.§`[§,this.§&!F§,this.§?B§,bubbles,cancelable);
      }
   }
}
