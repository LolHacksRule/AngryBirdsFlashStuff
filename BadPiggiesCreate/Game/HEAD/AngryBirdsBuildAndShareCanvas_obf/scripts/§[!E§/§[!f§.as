package §[!E§
{
   import §@y§.§0=§;
   import flash.events.Event;
   
   public class §[!f§ extends Event
   {
      
      public static const §`h§:String = "onUiInteraction";
       
      
      public var §4§:int;
      
      public var §'!5§:String;
      
      public var component:§0=§;
      
      public function §[!f§(param1:String, param2:int, param3:String, param4:§0=§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§4§ = param2;
         this.§'!5§ = param3;
         this.component = param4;
      }
      
      override public function clone() : Event
      {
         return new §[!f§(type,this.§4§,this.§'!5§,this.component,bubbles,cancelable);
      }
   }
}
