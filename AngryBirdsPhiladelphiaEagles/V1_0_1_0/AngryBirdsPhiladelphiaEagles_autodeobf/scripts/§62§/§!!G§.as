package §62§
{
   import §'!N§.§%!E§;
   import flash.events.Event;
   
   public class §!!G§ extends Event
   {
      
      public static const §-c§:String = "onUiInteraction";
       
      
      public var §^P§:int;
      
      public var §1N§:String;
      
      public var §7s§:§%!E§;
      
      public function §!!G§(param1:String, param2:int, param3:String, param4:§%!E§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§^P§ = param2;
         this.§1N§ = param3;
         this.§7s§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §!!G§(type,this.§^P§,this.§1N§,this.§7s§,bubbles,cancelable);
      }
   }
}
