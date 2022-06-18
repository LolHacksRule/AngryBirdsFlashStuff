package § '§
{
   import §8B§.§6!9§;
   import flash.events.Event;
   
   public class §`T§ extends Event
   {
      
      public static const §=!,§:String = "onUiInteraction";
       
      
      public var §3!C§:int;
      
      public var §0k§:String;
      
      public var §5!;§:§6!9§;
      
      public function §`T§(param1:String, param2:int, param3:String, param4:§6!9§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§3!C§ = param2;
         this.§0k§ = param3;
         this.§5!;§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §`T§(type,this.§3!C§,this.§0k§,this.§5!;§,bubbles,cancelable);
      }
   }
}
