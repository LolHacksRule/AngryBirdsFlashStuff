package §^g§
{
   import §6v§.§`M§;
   import flash.events.Event;
   
   public class §@$§ extends Event
   {
      
      public static const §^!9§:String = "onUiInteraction";
       
      
      public var §-6§:int;
      
      public var §+g§:String;
      
      public var §1]§:§`M§;
      
      public function §@$§(param1:String, param2:int, param3:String, param4:§`M§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§-6§ = param2;
         this.§+g§ = param3;
         this.§1]§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §@$§(type,this.§-6§,this.§+g§,this.§1]§,bubbles,cancelable);
      }
   }
}
