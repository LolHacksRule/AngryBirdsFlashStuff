package §=!4§
{
   import §8!h§.§-V§;
   import flash.events.Event;
   
   public class §8"U§ extends Event
   {
      
      public static const §`n§:String = "ui_interaction";
       
      
      public var §;#6§:int;
      
      public var §5!u§:String;
      
      public var §7!k§:§-V§;
      
      public function §8"U§(param1:String, param2:int, param3:String, param4:§-V§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§;#6§ = param2;
         this.§5!u§ = param3;
         this.§7!k§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §8"U§(type,this.§;#6§,this.§5!u§,this.§7!k§,bubbles,cancelable);
      }
   }
}
