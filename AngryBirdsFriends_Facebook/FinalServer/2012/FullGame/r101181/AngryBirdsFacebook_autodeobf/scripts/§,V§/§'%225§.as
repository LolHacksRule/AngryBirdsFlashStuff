package §,V§
{
   import §2!i§.§'M§;
   import flash.events.Event;
   
   public class §'"5§ extends Event
   {
      
      public static const §#2§:String = "onUiInteraction";
       
      
      public var §"!k§:int;
      
      public var §[2§:String;
      
      public var §1!`§:§'M§;
      
      public function §'"5§(param1:String, param2:int, param3:String, param4:§'M§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§"!k§ = param2;
         this.§[2§ = param3;
         this.§1!`§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §'"5§(type,this.§"!k§,this.§[2§,this.§1!`§,bubbles,cancelable);
      }
   }
}
