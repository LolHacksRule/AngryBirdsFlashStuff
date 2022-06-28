package §6z§
{
   import §-!F§.§^h§;
   import flash.events.Event;
   
   public class §5§ extends Event
   {
      
      public static const §,"§:String = "onUiInteraction";
       
      
      public var § a§:int;
      
      public var §9!H§:String;
      
      public var §=!-§:§^h§;
      
      public function §5§(param1:String, param2:int, param3:String, param4:§^h§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§ a§ = param2;
         this.§9!H§ = param3;
         this.§=!-§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §5§(type,this.§ a§,this.§9!H§,this.§=!-§,bubbles,cancelable);
      }
   }
}
