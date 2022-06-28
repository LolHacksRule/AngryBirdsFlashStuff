package §!5§
{
   import §=R§.§7!"§;
   import flash.events.Event;
   
   public class §6%§ extends Event
   {
      
      public static const §=F§:String = "onUiInteraction";
       
      
      public var §4!@§:int;
      
      public var §`"§:String;
      
      public var §^4§:§7!"§;
      
      public function §6%§(param1:String, param2:int, param3:String, param4:§7!"§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§4!@§ = param2;
         this.§`"§ = param3;
         this.§^4§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §6%§(type,this.§4!@§,this.§`"§,this.§^4§,bubbles,cancelable);
      }
   }
}
