package §4i§
{
   import §#!4§.§+!S§;
   import flash.events.Event;
   
   public class §;!0§ extends Event
   {
      
      public static const §#!G§:String = "onUiInteraction";
       
      
      public var §^!l§:int;
      
      public var §3y§:String;
      
      public var component:§+!S§;
      
      public function §;!0§(param1:String, param2:int, param3:String, param4:§+!S§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§^!l§ = param2;
         this.§3y§ = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §;!0§(type,this.§^!l§,this.§3y§,this.component,bubbles,cancelable);
      }
   }
}
