package §+P§
{
   import §5F§.§+!O§;
   import flash.events.Event;
   
   public class §<!B§ extends Event
   {
      
      public static const §<N§:String = "onUiInteraction";
       
      
      public var §[T§:int;
      
      public var § !Q§:String;
      
      public var §4! §:§+!O§;
      
      public function §<!B§(param1:String, param2:int, param3:String, param4:§+!O§, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         this.§[T§ = param2;
         this.§ !Q§ = param3;
         this.§4! § = param4;
      }
      
      override public function clone() : Event
      {
         return new §<!B§(type,this.§[T§,this.§ !Q§,this.§4! §,bubbles,cancelable);
      }
   }
}
