package §6!U§
{
   import §'!A§.§-!S§;
   import flash.events.Event;
   
   public class §+!!§ extends Event
   {
      
      public static const §]!M§:String = "onUiInteraction";
       
      
      public var §&!X§:int;
      
      public var §1_§:String;
      
      public var component:§-!S§;
      
      public function §+!!§(param1:String, param2:int, param3:String, param4:§-!S§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§&!X§ = param2;
         this.§1_§ = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §+!!§(type,this.§&!X§,this.§1_§,this.component,bubbles,cancelable);
      }
   }
}
