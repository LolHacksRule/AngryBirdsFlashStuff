package §<w§
{
   import §;"Y§.§&#X§;
   import flash.events.Event;
   
   public class §6#'§ extends Event
   {
      
      public static const §+!>§:String = "ui_interaction";
       
      
      public var §@#8§:int;
      
      public var §=!k§:String;
      
      public var §^"r§:§&#X§;
      
      public function §6#'§(param1:String, param2:int, param3:String, param4:§&#X§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§@#8§ = param2;
         this.§=!k§ = param3;
         this.§^"r§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §6#'§(type,this.§@#8§,this.§=!k§,this.§^"r§,bubbles,cancelable);
      }
   }
}
