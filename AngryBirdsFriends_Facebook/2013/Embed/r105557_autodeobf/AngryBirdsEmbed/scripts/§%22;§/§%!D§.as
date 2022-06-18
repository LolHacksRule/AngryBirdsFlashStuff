package §";§
{
   import §1t§.§`!B§;
   import flash.events.Event;
   
   public class §%!D§ extends Event
   {
      
      public static const §[C§:String = "onUiInteraction";
       
      
      public var §1!>§:int;
      
      public var §'r§:String;
      
      public var §%[§:§`!B§;
      
      public function §%!D§(param1:String, param2:int, param3:String, param4:§`!B§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§1!>§ = param2;
         this.§'r§ = param3;
         this.§%[§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §%!D§(type,this.§1!>§,this.§'r§,this.§%[§,bubbles,cancelable);
      }
   }
}
