package §&E§
{
   import §0!#§.§-P§;
   import flash.events.Event;
   
   public class §1!A§ extends Event
   {
      
      public static const §@!&§:String = "onUiInteraction";
       
      
      public var §`<§:int;
      
      public var § !6§:String;
      
      public var §]!F§:§-P§;
      
      public function §1!A§(param1:String, param2:int, param3:String, param4:§-P§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§`<§ = param2;
         this.§ !6§ = param3;
         this.§]!F§ = param4;
      }
      
      override public function clone() : Event
      {
         return new §1!A§(type,this.§`<§,this.§ !6§,this.§]!F§,bubbles,cancelable);
      }
   }
}
