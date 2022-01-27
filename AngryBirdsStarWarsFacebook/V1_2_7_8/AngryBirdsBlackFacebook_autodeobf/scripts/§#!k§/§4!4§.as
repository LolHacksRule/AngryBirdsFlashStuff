package §#!k§
{
   import §4##§.§7!B§;
   import flash.events.Event;
   
   public class §4!4§ extends Event
   {
      
      public static const §="n§:String = "ui_interaction";
       
      
      public var §6$§:int;
      
      public var §84§:String;
      
      public var §-w§:§7!B§;
      
      public function §4!4§(param1:String, param2:int, param3:String, param4:§7!B§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§6$§ = param2;
         this.§84§ = param3;
         this.§-w§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §4!4§(type,this.§6$§,this.§84§,this.§-w§,bubbles,cancelable);
      }
   }
}
